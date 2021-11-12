import logging
import requests

if __name__ == '__main__':
    logging.basicConfig(format='%(asctime)s [%(levelname)5s] %(filename)s : %(message)s', level=logging.NOTSET)

    print("A Logging message with a Print Command")
    logging.debug("A logging message with the Logging Package")

    r = requests.get("http://google.com")
    print("Status:", r.status_code)
    print(r.url)


