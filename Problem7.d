import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
def f(t,y):
    return np.cos(2*t)+np.sin(3*t)
y1=solve_ivp(f, [0, 1], [1],t_eval=np.linspace(0,1,100))
print(y1.y)
t=np.linspace(0,1,100)
plt.plot(y1.t, y1.y[0])
n=100
x=np.linspace(0,1,n)
y1_s= np.zeros(n, dtype=float)
for i in range(0,n):
    y1_s[i]= 0.5*np.sin(2*x[i])- 0.3333*np.cos(3*x[i])+4/3
plt.plot(x, y1_s, color='green')
