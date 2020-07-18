import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0,10,20) #divide 0 to 10 bw 256 pts
y = x * x
#x = np.linspace(0,10,256, endpoint = False)
#print(y)
#l = len(x)
plt.plot(x,y, '-g',label = r'$y= x^2$')
print(x.min())
axes = plt.gca()
axes.set_xlim([-8.0, 8.0])
axes.set_ylim([0.0, 64.0])
plt.legend(loc = 'upper left')
plt.show()





#print(l)
#plt.plot([1, 2, 3, 4, 5])
#plt.ylabel('Y Label')
#plt.show()

