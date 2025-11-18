# We want to COMPLETELY reverse a list by flipping the order of the entries AND flipping the order of characters in each element.

# a) Define a 'reverse_characters' function. Give it one parameter, which will be the string to reverse.
def reverse_characters(string):

# b) Within the function, use the 'list' function to split a string into a list of individual characters

    char_list = list(string)
    print(f"the list is: {char_list}")
# reverse_characters("PYTHON") -- I commented this line out so the next one can run

# c) 'reverse' your new list.
    reversed_list = char_list[::-1]
    print(f"the reversed list is: {reversed_list}")
reverse_characters("PYTHON")

# d) Use 'join' to create the reversed string and return that string from the function.
'''
    def reverse_characters(string):
    char_list = list(string)
    reversed_list = char_list[::-1]
    reversed_string = "".join(reversed_list)
    return reversed_string
  
reverse_characters("PYTHON")
print(f"the reversed string is: {reverse_characters("PYTHON")}")
    ''' 
# e) Create a variable of type string to test your new function. 
#
# f) Use 'print(reverse_characters(my_variable_name))'; to call the function and verify that it correctly reverses the characters in the string.
my_string = "apple"
print(reverse_characters(my_string))
# g) Use method chaining to reduce the lines of code within the function.
def reverse_characters(string):
    return "".join(reversed(string))


# 2) The 'split' method does not work on numbers, but we want the function to return a number with all the digits reversed (e.g. 1234 converts to 4321 and NOT the string "4321")
# a) Add an if statement to your reverse_characters function to check the type of the parameter.
# b - d) If type is ‘string’, return the reversed string as before. If type is ‘number’, convert the parameter to a string, reverse the characters, then convert it back into a number. Return the reversed number.
# e) Be sure to print the result returned by the function to verify that your code works for both strings and numbers. Do this before moving on to the next steps.

def reverse_characters_if(string):
    if type(string) == str:
        return "".join(reversed(string))
    if type(string) == int:
        return int("".join(reversed(str(string))))
    if type(string) == float:
        return float("".join(reversed(str(string))))
    
     
my_string = 8675309
print(reverse_characters_if(my_string))


# 3) Create a new function with one parameter, which is the list we want to change. The function should:
# a) Define and initialize an empty list.
# b) Loop through the old list.
# c) For each element in the old list, call reverse_characters to flip the characters or digits.
# d) Add the reversed string (or number) to the list defined in part ‘a’.
# e) Return the final, reversed list.
# f) Be sure to print the results from each test case in order to verify your code.



list_test1 = ['apple', 'potato', 'Capitalized Words']
list_test2 = [123, 8897, 42, 1168, 8675309]
list_test3 = ['hello', 'world', 123, 'orange']
