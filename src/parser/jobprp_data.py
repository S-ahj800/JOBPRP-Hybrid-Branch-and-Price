import re
from dataclasses import dataclass, field
from typing import List, Dict, TextIO, Any
import logging

TAisleID = int
TCellID = int
TArticleID = int
TOrderID = int


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
    """

    id: TOrderID
    order_lines: List[OrderLine]
    total_weight: float = field(init=False)

    def __post_init__(self):
        weight = sum(line.article.weight * line.quantity for line in self.order_lines)
        # Use object.__setattr__ to set field on a frozen dataclass
        object.__setattr__(self, 'total_weight', weight)


@dataclass(frozen=True)
class JOBPRPInstance:
    name: str
    picker_capacity: float
    layout: WarehouseLayout
    articles: Dict[TArticleID, Article]
    sku_locations: List[SKULocation]
    orders: Dict[TOrderID, Order]

    @classmethod
    def from_file(cls, filepath: str) -> 'JOBPRPInstance':
        with open(filepath, 'r', encoding='latin-1') as f:
            return _JOBPRPParser(f).parse()

class _JOBPRPParser:
    """
    Internal helper to parse JOBPRP instance text files.
    """

    def __init__(self, file_stream: TextIO):
        self._lines = iter([line.strip() for line in file_stream.readlines()])
        self._data: Dict[str, Any] = {}
        self._articles: Dict[TArticleID, Article] = {}
        self._sku_locations: List[SKULocation] = []
        self._orders: Dict[TOrderID, Order] = {}

    def _parse_key_value_section(self, end_marker: str) -> None:
        for line in self._lines:
            if not line or line.startswith('COMMENT'):
                continue
            if line.startswith(end_marker):
                return
            key, value = [part.strip() for part in line.split(':', 1)]
            self._data[key.lower()] = value

    def _parse_article_section(self) -> None:
        num_articles = int(self._get_value_from_line(next(self._lines)))
        for _ in range(num_articles):
            line = next(self._lines)
            parts = re.split(r'\s+', line)
            article = Article(id=int(parts[1]), weight=float(parts[3]))
            self._articles[article.id] = article

    def _parse_sku_section(self) -> None:
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
        return line.split(':')[1].strip()

    def parse(self) -> JOBPRPInstance:
        self._parse_key_value_section(end_marker='ARTICLE_SECTION')
        self._parse_article_section()

        next(self._lines)
        self._parse_sku_section()

        next(self._lines)
        self._parse_order_section()

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