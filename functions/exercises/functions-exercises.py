# Part 1 A -- Make a Line

def make_line(size):
    return '#' * size
print(make_line(5))

# Part 1 B -- Make a Square
# create a function using your make_line function to code a square
def make_line(size):
    return '#' * size

def make_square(size):
      for i in range(size):
           print(make_line(size))
print(make_square(5))




# Part 1 C -- Make a Rectangle
def make_line(size):
    return '#' * size

def make_rectangle(width, height):
   rectangle = ""
   for i in range(height):
      rectangle += (make_line(width) + '\n')
   return rectangle

print(make_rectangle(5, 3))




# Part 2 A -- Make a Stairs
def  make_downward_stairs(height):
   stairs = ""
   for i in range(1, height + 1):
       print(make_line(i))
print(make_downward_stairs(5))




# Part 2 B -- Make Space-Line 
def make_space_line(num_spaces, num_chars):
    spaces = ' ' * num_spaces
    hashes = '#' * num_chars
    line = spaces + hashes + spaces
    return line
print(make_space_line(3, 5))




# Part 2 C -- Make Isosceles Triangle
def make_space_line(num_spaces, num_chars):
    spaces = ' ' * num_spaces
    hashes = '#' * num_chars
    line = spaces + hashes + spaces
    return line

def make_isosceles_triangle(height):
    triangle = ''
    for i in range(height):
        num_spaces = height - i - 1
        num_chars = 2 * i + 1
        triangle += make_space_line(num_spaces, num_chars) + "\n"
    return triangle
print(make_isosceles_triangle(5))



# Part 3 -- Make a Diamond
def make_space_line(num_spaces, num_chars):
    spaces = ' ' * num_spaces
    hashes = '#' * num_chars
    line = spaces + hashes + spaces
    return line


def make_diamond(height):
    top_half = []
    for i in range(height):
        num_spaces = height - i - 1
        num_chars = 2 * i + 1
        top_half.append(make_space_line(num_spaces, num_chars))
    bottom_half = top_half[:-1][::-1]
    diamond_lines = top_half + bottom_half
    return '\n'.join(diamond_lines)

print(make_diamond(5))





