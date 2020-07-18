while True:
    print("Options:")
    print("Enter 'add' to add two numbers")
    print("Enter 'sub' to subtract two numbers")
    print("Enter 'mul' to multiply two numbers")
    print("Enter 'div' to divide two numbers")
    print("Enter 'qte' to quit the programe")
    user_input=input(" ")

    if user_input=="qte":
        break
    elif user_input=="add":
        num1=float(input("Enter a number: "))
        num2=float(input("Enter another number: "))
        result=str(num1+num2)
        print("The answer is "+result)
    elif user_input=="sub":
     num1=float(input("Enter a number: "))
     num2=float(input("Enter another number: "))
     result=str(num1-num2)
     print("The answer is "+result)
    elif user_input=="mul":
     num1=float(input("Enter a number: "))
     num2=float(input("Enter another number: "))
     result=str(num1*num2)
     print("The answer is "+result)
    elif user_input=="div":
     num1=float(input("Enter a number: "))
     num2=float(input("Enter another number: "))
     result=str(num1/num2)
     print("The answer is "+result)
    else:
        print("Unkown input")
