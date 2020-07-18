while True:
    print('Options:')
    print ("Enter 'add' to add two numbers")
    print("Enter 'sub' to subtract two numbers")
    #print 'Enter 'mul' to multiply two numbers' #this will through a print error
    print "Enter 'mul' to multiply two numbers"
    print "Enter 'div' to divide two numbers"
    print "Enter 'quit' to quit the programe"

    userip=raw_input("Enter a Option : ")
    if userip=='quit':
        break
    elif userip=='add':
        n1=float(input("Enter a number: "))
        n2=float(input("Enter a another number: "))
        ans=str(n1+n2)
        print "The answer is "+ans
    elif userip=='sub':
        n1=float(input("Enter a number: "))
        n2=float(input("Enter a another number: "))
        ans=str(n1-n2)
        print "The answer is "+ans
    elif userip=='mul':
        n1=float(input("Enter a number: "))
        n2=float(input("Enter a another number: "))
        ans=str(n1*n2)
        print "The answer is "+ans
    elif userip=='div':
        n1=float(input("Enter a number: "))
        n2=float(input("Enter a another number: "))
        ans=str(n1/n2)
        print "The answer is "+ans
    else:
        print("Unknown input")

#Points to remember:
# Py2.7, input() evaluates the input as code, so strings need to be quoted. Numbers or string can be used.
# Py2.7 has raw_input() that treats all input as strings (no quotes needed). Numbers are also treated as string.
# Py3.x, the Py2.7 raw_input() was renamed input() and the Py2.7 input() functionality was replaced by eval(input())
# So switch to raw_input() or to Py3.x
