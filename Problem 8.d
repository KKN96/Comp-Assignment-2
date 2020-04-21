import numpy as np
from scipy.integrate import solve_bvp
import matplotlib.pyplot as plt
def f(t,y):
    return np.array([(y[1]), 0.5*(1 - y[1]**2 - y[0]*np.sin(t))])
def Bound(y1, y2):
    return np.array([y1[0]-2,(y2[0]-2)])
x=np.linspace(0,(np.pi),100)
y_0=np.zeros((2, x.size))
Y=solve_bvp(f, Bound, x, y_0)
plt.plot(Y.x, Y.y[0])
t=np.linspace(0, np.pi, n)
n=100
y_s=np.zeros(n, dtype=float)
for i in range(0,n):
    y_s[i]=2+np.sin(t[i])
plt.plot(t,y_s, color='green')
