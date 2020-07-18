#This is an example of impure function
some_list=[]

def impure(arg):
    some_list.append(arg)
#since this func changes the state of some_list
