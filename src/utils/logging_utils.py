import logging

class StreamToLogger:
    """
    A utility class to redirect a stream (like sys.stdout) to a logger.
    """

    def __init__(self, logger, level=logging.INFO):
        self.logger = logger
        self.level = level
        self.linebuf = ''

    def write(self, buf):
        for line in buf.rstrip().splitlines():
            self.logger.log(self.level, line.rstrip())

    def flush(self):
        pass  # Required for stream interface