j=range(10)
# sq_j=j**2 #unsupported operand type(s) for ** or pow(): 'list' and 'int'
# ev_j=sq_j%2
print sq_j
# print ev_j
op1=[i**2 for i in range(10)]
op2=[i**2 for i in range(10) if i**2%2==0]
print(op1)
print op2
