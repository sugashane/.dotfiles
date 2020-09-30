'Practice generic REST APIs skills'
# Best library for this is called "requests"
# https://developer.github.com/v3/

from urllib.request import urlopen
from pprint import pprint
import json
import requests
import secrets


furl = "https://api.twitch.tv/kraken/streams/followed"
accept = 'application/vnd.twitchtv.v5+json'
headers = {'Accept': accept, 'Client-ID': secrets.cid, 'Authorization': f'OAuth {secrets.oauth}'}

r = requests.get(url = furl, headers = headers) 

# extracting data in json format 
data = r.json() 

# Looping the data to make a pretty list for each streamer showing the following:
# Streamer name, game being played, their stream title, and their url.
i = 0
while i < len(data['streams']):
        print(data['streams'][i]['channel']['display_name'], '|', data['streams'][i]['channel']['game'], '|', data['streams'][i]['channel']['status'] )
        print(data['streams'][i]['channel']['url'], '\n')
        i += 1
