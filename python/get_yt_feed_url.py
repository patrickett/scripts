# Find the rss feed url for youtube channels

# Usage: ./get_yt_feed_url.py [youtube channel link]

import requests
from bs4 import BeautifulSoup
import sys

url = sys.argv[1]

response = requests.get(url)

soup = BeautifulSoup(response.text, "html.parser")

rlink = soup.find("link", {"title": "RSS"})['href']

print (rlink)
