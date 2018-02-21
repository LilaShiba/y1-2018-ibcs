# https://docs.python.org/3/tutorial/classes.html
# https://en.wikibooks.org/wiki/A_Beginner%27s_Python_Tutorial/Classes

class Shape:

	def __init__(self, x, y):
		self.x = x
		self.y = y
		self.description = "not described yet"
		self.author = "not described yet"

	def area(self):
		return self.x * self.y

	def perimeter(self):
		return 2 * self.x + 2 * self.y

	def describe(self,text):
		self.description = text

	def authorName(self, text):
		self.author = text

	def scaleSize(self, scale):
		self.x = self.x * scale
		self.y = self.y * scale


rectangle = Shape(100, 45)
print(rectangle)
print(rectangle.area())
print(rectangle.perimeter())
rectangle.scaleSize(0.5)
print(rectangle.area())