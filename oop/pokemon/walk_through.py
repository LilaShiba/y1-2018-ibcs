import random
class Pokemon(object):
	
	def __init__(self,name,hp,type):
		self.name = name
		self.hp = hp
		# define each pokemon type with control flow
		if type == 'electric':
			self.type = {
				'shock': random.randint(10,15),
				'thunderbolt': random.randint(15,20)

			}
		elif type == 'fire':
			self.type = {
				'fire': random.randint(10,15),
				'thrower': random.randint(15,20)
			}
		else:
			print('not a choice')

	
	def battle(self, enemy):
		# go over attack choices for each instance
		for x in self.type:
			print(x)

# Running the game / init your class & call methods
estelle = Pokemon('estelle', 25, 'electric')
ben = Pokemon('ben', 25, 'fire')
Pokemon.battle(estelle,ben)
