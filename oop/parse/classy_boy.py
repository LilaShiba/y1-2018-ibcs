import bs4, requests

class Parsey(object):

	def __init__(self, url, find_me):
		self.url = url
		self.find_me = find_me

	def get_url(self):
		# Go to website
		res = requests.get(self.url)
		# Display to user
		print('going to %s'%(self.url))
		# Find requested data
		soup = bs4.BeautifulSoup(res.text, 'html.parser')
		#print(soup.get_text())
		print(soup.find_all(self.find_me))
		#for link in soup.find_all('a'):
		#	print(link.get('href'))
		


dogs = Parsey('https://www.dwight.edu/', 'a')
Parsey.get_url(dogs)


