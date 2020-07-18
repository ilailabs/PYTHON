n = input()
num, reset = 0,0

for i in range(len(n)):
  if n[i] >= "0" and n[i] <= "9" :
      num = num * 10 + int(n[i])
  else:
      reset = max(reset,num)
      num = 0

print(max(reset, num),end='')
