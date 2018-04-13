class Stack:
    def __init__(self):
         self.items = []

    def isEmpty(self):
         return self.items == []

    def push(self, item):
         self.items.append(item)

    def pop(self):
         return self.items.pop()

    def peek(self):
         return self.items[len(self.items)-1]

    def size(self):
         return len(self.items)

    def stacky_boy(self):
        for x in self.items:
            print(x)

    def add_to_stacky_boy(self, list):
        for x in list:
            self.push(x)
        print(self.items)
        


s = Stack()
s.push('I')
s.push('really')
s.push('love')
s.push('Shibers')
spop = str(s.pop())
print('Popping out %s'%(spop) )
print(s)
s.push('Shibers')
s.stacky_boy()
s.add_to_stacky_boy(['meow', 'woof'])




