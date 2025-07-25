#! /usr/bin/env python3
# Make an api call
import json, requests

#url vars
api_token = '31df5488194dc5669a4d8c1b5800ef60'
url = 'https://api.darksky.net/forecast/31df5488194dc5669a4d8c1b5800ef60/40.7128,-74.0060'

# call data
data = requests.get(url).json()
#print(data)

#parse data
current = data['currently']
summary = current['summary']
temp = current['temperature']
wind = current['windSpeed']
uv = current['uvIndex']

min_cast = data['minutely']['data'][0]
min_sum = data['minutely']['summary']
#precipType = min_cast['precipType']

daily = data['daily']['data'][0]
moon = daily['moonPhase']

#loop through data
weather_forecast = [summary, temp, wind, uv, min_sum, moon]

#for x in weather_forecast:
	#print(x)



print(min_sum)
print('The temp is ' + str(temp))
print('The wind is blowing at ' + str(wind))
print('UV index is at ' + str(uv))
print('The moon is at ' + str(moon))
