import sys
import logging
from time import sleep


def main():
    while True:
        # print("Running twag")
        logger.info("Running twag")
        sleep(10)


if __name__ == "__main__":
    logger = logging.getLogger("twag")
    logger.setLevel(logging.DEBUG)

    formatter = logging.Formatter("[%(asctime)s][%(name)s][%(levelname)s] %(message)s")

    handler = logging.StreamHandler(sys.stdout)
    handler.setFormatter(formatter)

    logger.addHandler(handler)

    main()
