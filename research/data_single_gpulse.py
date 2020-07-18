"""
gaussiam function to identify the pulse information
"""

## matplotlib library

## mumpy library
from matplotlib import pyplot as plt
import numpy as np

A=0.01
def gaussmf(x, mu, sig):
    return A*np.exp(-np.power(x - mu, 2.) / (2 * np.power(sig, 2.)))

x_val = np.arange(0,5,1)
x_all = np.arange(-5,5,1)

mu=0
sig=2

print(gaussmf(x_val, mu, sig))
plt.plot(x_all, gaussmf(x_all, mu, sig),'g--')
plt.show()
print(gaussmf(x_all, mu, sig))



