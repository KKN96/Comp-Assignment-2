import numpy as np
from scipy.integrate import solve_bvp
import matplotlib.pyplot as plt
def f(t,y):
    return np.array([(y[1]), -(2*y[1]**3 +y[1]*y[0]**2)*np.cos(t)**(-1)])
def Bound(y1, y2):
    return np.array([y1[0]-2**(-0.25),(y2[0]-np.sqrt(np.sqrt(3)/2))])
x=np.linspace((np.pi)/4,(np.pi)/3,100)
y_0=np.zeros((2, x.size))
Y=solve_bvp(f, Bound, x, y_0)
plt.plot(Y.x, Y.y[0])
t=np.linspace(np.pi/4, np.pi/3, n)
n=100
y_s=np.zeros(n, dtype=float)
for i in range(0,n):
    y_s[i]=np.sin(t[i])**(0.5)
plt.plot(t,y_s, color='green')
