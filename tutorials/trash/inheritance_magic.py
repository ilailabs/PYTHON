# Magic methods are special methods which have double underscores at the beginning and end of their names. ; dunders;
#useful for operator overloading;
class Vector2D:
    def __init__(self,x,y):
        self.x = x
        self.y = y

    def __add__(self, other):
        return Vector2D(self.x + other.x, self.y + other.y)

first = Vector2D(5,7)
second = Vector2D(3,9)
result = first + second
print(result.x)
print(result.y)
