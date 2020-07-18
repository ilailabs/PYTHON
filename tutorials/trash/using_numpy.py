import numpy as np
import matplotlib.pyplot as plot

theta = np.arange(0, 6.28, 0.01)
#rint(theta)
y = np.sin(theta)

plot.plot(theta,y,'ro')
plot.grid(True)
plot.axhline(y=0, color = 'k')
plot.show()
