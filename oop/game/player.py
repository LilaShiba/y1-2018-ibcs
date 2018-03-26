class Player:
	def __init__(self, name):
		self.name = name
		self.health = health()
		self.protect = protect()
		self.attack = attack()

	def health(self):
		health = 20
		if get_heart() is True:
			health = health + 20
		elif got_hit() is True:
			health = health - got_hit()
		return health

	def protect(self):
		protect = 5
		if get_protect is True:
			protect = protect + 5
		elif got_hit() is True:
			protect = protect - 5
		return protect

	def attack(self, catto):
		attack = 10
		if hit_dat_boi is True:
			catto - 5
		return attack


class Skills(Player):
	def got_hit(self):
		

