s = input()
s = s.lower()
a = [chr(i) for i in range(97,123)]
l = []

for i in s:
    if i==' ':
        continue
    if i not in l:
        l.append(i)

l = sorted(l)
if l == a:
    print('YES',end='')
else:
    print('NO',end='')
