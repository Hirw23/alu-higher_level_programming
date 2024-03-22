#!/usr/bin/python3
"""Fetch a url"""

import requests


if __name__ == "__main__":
    message = requests.get("https://intranet.hbtn.io/status")
    print("Body response:")
    print("\t- type: {}".format(type(message.text)))
    print("\t- content: {}".format(message.text))
