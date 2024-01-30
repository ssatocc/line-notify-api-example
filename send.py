import os

import requests
from dotenv import load_dotenv


def main():
    load_dotenv(override=True)
    access_token = os.getenv("ACCESS_TOKEN")

    headers = {"Authorization": f"Bearer {access_token}"}
    data = {"message": "Hello, World!"}
    files = {'imageFile': open("./image/sample.png", 'rb')}
    requests.post("https://notify-api.line.me/api/notify", headers=headers, data=data, files=files)


if __name__ == "__main__":
    main()
