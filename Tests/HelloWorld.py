print("Sireesha's World!")


def main():
    print "Welcome!"
    print "Everyone!"


if __name__ == "__main__":
    main()

print "1st Phyton Function"

# Declaring a variable and using it
a = 100
print a

#   Declare a variable and initialize it
f = 0
print f
#   re-declaring the variable works
f = 'Python27'
print f

# Concatenate Variables
a = "Python"
b = "Testcase"
c = 1
print a+b+str(c)

#   Local & Global Variables

#   Declare a variable and initialize it

f = 101
print f


#   Global vs local variables in functions
def somefunction():

#   global f
    f = 'I am learning Python'
    print f


somefunction()
print f