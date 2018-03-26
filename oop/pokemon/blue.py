import random
class Pokemon(object):

	def __init__(self,name,hp, type):
		self.name = name
		self.hp = hp
		self.type = type

	def battle(self, enemy):
		if self.type == 'electric':
			attack_dic = {
				'shockwave': random.randint(5, 15),
				'thunderbolt': random.randint(5, 30),
				'tackle': random.randint(8, 10),
				}
		elif self.type == 'fire':
			attack_dic = {
				'flame': random.randint(5, 20),
				'thrower': random.randint(10, 20),
				'tackle': random.randint(5, 10)
			}
		for x in attack_dic:
			print(x)
		attack_choice = input('what attack do you pick?')
		attack_chossen = attack_dic[attack_choice]

		if(self.hp > 1):
			enemy.hp -= attack_chossen
			print("%s did %d Damage to %s"%(self.name, attack_chossen, enemy.name)) #Text-based combat descriptors
			print("%s has %d HP left"%(enemy.name,enemy.hp)) #Text-based descriptor for the opponent's health
			if(enemy.hp > 1):
			return enemy.battle(self)
		else:
			print("%s wins! (%d HP left)" %(enemy.name, enemy.hp)) #declares the winner of the Battle
			return enemy, self  #return a tuple (Winner, Loser)


estelle = Pokemon('estelle', 25, 'electric')
ben = Pokemon('ben', 25, 'fire')
Pokemon.battle(estelle,ben)

