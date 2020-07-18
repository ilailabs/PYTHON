class Dog:
    legs = 4
    def __init__(self, name, color):
        self.name = name
        self.color = color

fido = Dog('Fido','brown')
print(fido.legs)
print(Dog.legs)
