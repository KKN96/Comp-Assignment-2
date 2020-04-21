import numpy as np
from scipy.integrate import solve_bvp
import matplotlib.pyplot as plt
def f(t,y):
    return np.array([(y[1]), y[1]*np.cos(t) - y[0]*np.log(y[0])])
def Bound(y1, y2):
    return np.array([y1[0]-1,(y2[0]-np.exp(1))])
x=np.linspace(0,(np.pi)/2,100)
y_0=np.zeros((2, x.size))
Y=solve_bvp(f, Bound, x, y_0)
plt.plot(Y.x, Y.y[0])
t=np.linspace(0, np.pi/2, n)
n=100
y_s=np.zeros(n, dtype=float)
for i in range(0,n):
    y_s[i]=np.exp(np.sin(t[i]))
plt.plot(t,y_s, color='green')
