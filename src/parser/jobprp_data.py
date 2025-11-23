import re
from dataclasses import dataclass, field
from typing import List, Dict, TextIO
import logging

# =============================================================================
# --- Type Aliases ---
# =============================================================================
# For improved readability and type hinting, consistent with academic literature.
TAisleID = int
TCellID = int
TArticleID = int
TOrderID = int


# =============================================================================
# --- Core Data Structures ---
# =============================================================================

@dataclass(frozen=True)
class WarehouseLayout:
    """Encapsulates the static physical characteristics of the warehouse."""

    num_aisles: int
    num_cells_per_aisle: int
    depot_aisle: TAisleID
    depot_location: str
    distance_aisle_to_aisle: float
    distance_cell_to_cell: float
    distance_top_to_cell: float
    distance_bottom_to_cell: float
    distance_top_or_bottom_to_depot: float


@dataclass(frozen=True)
class Article:
    """Represents a unique article (SKU) with its intrinsic properties."""

    id: TArticleID
    weight: float


@dataclass(frozen=True)
class SKULocation:
    """Represents a physical storage location for an article."""

    article_id: TArticleID
    aisle: TAisleID
    cell: TCellID
    quantity: int
    side: str


@dataclass(frozen=True)
class OrderLine:
    """Represents a single line item within a customer order."""

    article: Article
    quantity: int


@dataclass(frozen=True)
class Order:
    """
    Represents a customer order, composed of multiple order lines.

    Attributes:
        id: The unique identifier for the order.
        order_lines: A list of `OrderLine` objects comprising the order.
        total_weight: The pre-calculated total weight of all items in the order.
    """

    id: TOrderID
    order_lines: List[OrderLine]
    total_weight: float = field(init=False)

    def __post_init__(self):
        """
        Calculates the total weight of the order after initialization.
        This is a more efficient approach than calculating it on-the-fly.
        """

        weight = sum(line.article.weight * line.quantity for line in self.order_lines)
        # Use object.__setattr__ to set field on a frozen dataclass
        object.__setattr__(self, 'total_weight', weight)


@dataclass(frozen=True)
class JOBPRPInstance:
    """
    Main dataclass holding all parsed information for a JOBPRP instance.

    Attributes:
        name: The name of the instance.
        picker_capacity: The maximum weight a picker can carry.
        layout: The `WarehouseLayout` object describing the warehouse geometry.
        articles: A dictionary mapping article IDs to `Article` objects.
        sku_locations: A list of all `SKULocation` objects.
        orders: A dictionary mapping order IDs to `Order` objects.
    """

    name: str
    picker_capacity: float
    layout: WarehouseLayout
    articles: Dict[TArticleID, Article]
    sku_locations: List[SKULocation]
    orders: Dict[TOrderID, Order]

    @classmethod
    def from_file(cls, filepath: str) -> 'JOBPRPInstance':
        """
        Factory method to parse a JOBPRP instance from a text file.

        Args:
            filepath: The path to the instance file.

        Returns:
            An initialized `JOBPRPInstance` object.
        """

        with open(filepath, 'r', encoding='latin-1') as f:
            return _JOBPRPParser(f).parse()

    # def report_parsed_data(self):
    #     """Prints a comprehensive summary of the loaded instance data."""
    #     print(f"--- JOBPRP Instance: {self.name} ---")
    #     print(f"Picker Capacity: {self.picker_capacity}")

    #     print("\n--- Warehouse Layout ---")
    #     print(f"  Number of Aisles: {self.layout.num_aisles}")
    #     print(f"  Number of Cells per Aisle: {self.layout.num_cells_per_aisle}")
    #     print(f"  Depot: Aisle {self.layout.depot_aisle}, Location: {self.layout.depot_location}")
    #     print(f"  Distances:")
    #     print(f"    Aisle to Aisle: {self.layout.distance_aisle_to_aisle}")
    #     print(f"    Cell to Cell: {self.layout.distance_cell_to_cell}")
    #     print(f"    Top to Cell: {self.layout.distance_top_to_cell}")
    #     print(f"    Bottom to Cell: {self.layout.distance_bottom_to_cell}")
    #     print(f"    Top/Bottom to Depot: {self.layout.distance_top_or_bottom_to_depot}")

    #     print("\n--- Articles (SKUs) ---")
    #     print(f"  Total Unique Articles: {len(self.articles)}")
    #     for art_id, article in sorted(self.articles.items()):
    #         print(f"  ID {article.id}: Weight {article.weight}")

    #     print("\n--- SKU Locations ---")
    #     print(f"  Total SKU Locations: {len(self.sku_locations)}")
    #     for sku_loc in self.sku_locations:
    #         print(f"  SKU {sku_loc.article_id} at Aisle {sku_loc.aisle}, Cell {sku_loc.cell}: "
    #               f"Quantity {sku_loc.quantity}, Side {sku_loc.side}")

    #     print("\n--- Orders ---")
    #     print(f"  Total Orders: {len(self.orders)}")
    #     for ord_id, order in sorted(self.orders.items()):
    #         print(f"  Order ID {order.id}: (Total Weight: {order.total_weight})")
    #         for line in order.order_lines:
    #             print(f"    Article {line.article.id}, Quantity {line.quantity}")
    #     print("\n-------------------------")



# =============================================================================
# --- Parser Implementation ---
# =============================================================================

class _JOBPRPParser:
    """
    A private helper class to parse JOBPRP instance files.

    This class is not intended to be used directly outside of this module.
    """

    def __init__(self, file_stream: TextIO):
        self._lines = iter([line.strip() for line in file_stream.readlines()])
        self._data: Dict[str, any] = {}
        self._articles: Dict[TArticleID, Article] = {}
        self._sku_locations: List[SKULocation] = []
        self._orders: Dict[TOrderID, Order] = {}

    def _parse_key_value_section(self, end_marker: str) -> None:
        """Parses a generic key-value section of the file."""

        for line in self._lines:
            if not line or line.startswith('COMMENT'):
                continue
            if line.startswith(end_marker):
                return
            key, value = [part.strip() for part in line.split(':', 1)]
            self._data[key.lower()] = value

    def _parse_article_section(self) -> None:
        """Parses the ARTICLE_SECTION, populating article data."""

        num_articles = int(self._get_value_from_line(next(self._lines)))
        for _ in range(num_articles):
            line = next(self._lines)
            parts = re.split(r'\s+', line)
            article = Article(id=int(parts[1]), weight=float(parts[3]))
            self._articles[article.id] = article

    def _parse_sku_section(self) -> None:
        """Parses the ARTICLE_SECTION."""

        num_skus = int(self._get_value_from_line(next(self._lines)))
        for _ in range(num_skus):
            line = next(self._lines)
            parts = re.split(r'\s+', line)
            location = SKULocation(
                article_id=int(parts[1]),
                aisle=int(parts[3]),
                cell=int(parts[5]),
                quantity=int(parts[7]),
                side=parts[9]
            )
            self._sku_locations.append(location)

    def _parse_order_section(self) -> None:
        """Parses the SKU_SECTION."""

        num_orders = int(self._get_value_from_line(next(self._lines)))
        order_id_counter = 0
        while order_id_counter < num_orders:
            line = next(self._lines)
            if line.startswith('NUM_ARTICLES_IN_ORDER'):
                num_lines = int(self._get_value_from_line(line))
                order_lines = []
                for _ in range(num_lines):
                    order_line_raw = next(self._lines)
                    ol_parts = re.split(r'\s+', order_line_raw)
                    article_id = int(ol_parts[1])
                    quantity = int(ol_parts[3])
                    order_lines.append(
                        OrderLine(article=self._articles[article_id], quantity=quantity)
                    )
                self._orders[order_id_counter] = Order(id=order_id_counter, order_lines=order_lines)
                order_id_counter += 1
            logging.debug(f"Parsed {len(self._orders)} orders from instance file.")

    @staticmethod
    def _get_value_from_line(line: str) -> str:
        """Utility to extract the value part of a 'KEY : value' string."""
        
        return line.split(':')[1].strip()

    def parse(self) -> JOBPRPInstance:
        """Executes the full parsing workflow for the instance file."""

        # --- File Parsing ---

        self._parse_key_value_section(end_marker='ARTICLE_SECTION')
        self._parse_article_section()
        next(self._lines) # Skip SKU_SECTION header
        self._parse_sku_section()
        next(self._lines) # Skip ORDER_SECTION header
        self._parse_order_section()
        logging.debug(f"[JOBPRPInstance] Parsed orders: {list(self._orders.keys())}")

        # --- Object Construction ---

        layout = WarehouseLayout(
            num_aisles=int(self._data['num_aisles']),
            num_cells_per_aisle=int(self._data['num_cells']),
            depot_aisle=int(self._data['depot_aisle']),
            depot_location=self._data['depot_location'],
            distance_aisle_to_aisle=float(self._data['distance_aisle_to_aisle']),
            distance_cell_to_cell=float(self._data['distance_cell_to_cell']),
            distance_top_to_cell=float(self._data['distance_top_to_cell']),
            distance_bottom_to_cell=float(self._data['distance_bottom_to_cell']),
            distance_top_or_bottom_to_depot=float(self._data['distance_top_or_bottom_to_depot'])
        )

        return JOBPRPInstance(
            name=self._data['name'],
            picker_capacity=float(self._data['picker_capacity']),
            layout=layout,
            articles=self._articles,
            sku_locations=self._sku_locations,
            orders=self._orders
        )