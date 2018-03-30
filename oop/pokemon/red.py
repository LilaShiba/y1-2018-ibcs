import random
class Pokemon(object):
	
	def __init__(self,name,hp,type):
		self.name = name
		self.hp = hp
		# define each pokemon type
		if type == 'electric':
			self.type = {
			'shockwave': random.randint(5, 15),
			'thunderbolt': random.randint(5, 30),
			'tackle': random.randint(8, 10),
			'heal': random.randint(-10, -2)
			}
		elif type == 'fire':
			self.type = {
			'flame': random.randint(5, 20),
			'thrower': random.randint(10, 20),
			'tackle': random.randint(5, 10),
			'heal': random.randint(-10, -2)
			}
		elif type == 'water':
			self.type = {
			'hydro pump': random.randint(5, 20),
			'hydro vortex': random.randint(10, 20),
			'tackle': random.randint(5, 10),
			'heal': random.randint(-10, -2)
			}
		elif type == 'ghost':
			self.type = {
			'shadow ball': random.randint(5, 20),
			'phantom force': random.randint(10, 20),
			'tackle': random.randint(5, 10),
			'heal': random.randint(-10, -2)
			}
		elif type == 'psychic':
			self.type = {
			'dream eater': random.randint(5, 20),
			'cosmic power': random.randint(10, 20),
			'confusion': random.randint(5, 10),
			'heal': random.randint(-10, -2)
			}
	
	def battle(self, enemy):
		# go over attack choices for each instance
		for x in self.type:
			print(x)
			# Pick attack
		attack_choice = input('what attack do you pick?')
		attack_chossen = self.type[attack_choice]
		# Determine if attack or heal to apply points accordingly
		if(self.hp > 1 and attack_chossen != self.type['heal']):
			enemy.hp -= attack_chossen
			print("")
			print("%s did %d Damage to %s"%(self.name, attack_chossen, enemy.name)) #Text-based combat descriptors
			print("%s has %d HP left"%(enemy.name,enemy.hp)) #Text-based descriptor for the opponent's health
			print(" ")
			if(enemy.hp > 1):
				return enemy.battle(self)
		# Heal Self
		elif(self.hp > 1 and attack_chossen == self.type['heal']):
			self.hp -= attack_chossen
			print("")
			print("%s healed %d amount "%(self.name, attack_chossen))
			print("%s has %d HP left"%(self.name,self.hp))
			print("")
			return enemy.battle(self)
		# Win Statement
		else:
			print("%s wins! (%d HP left)" %(enemy.name, enemy.hp)) #declares the winner of the Battle
			return enemy, self  #return a tuple (Winner, Loser)


estelle = Pokemon('estelle', 25, 'electric')
ben = Pokemon('ben', 25, 'fire')
Pokemon.battle(estelle,ben)
