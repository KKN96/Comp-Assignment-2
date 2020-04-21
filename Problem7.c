import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
def f(t,y):
    return 1+y/t
y1=solve_ivp(f, [1, 2], [2],t_eval=np.linspace(1,2,100))
print(y1.y)
t=np.linspace(1,2,100)
plt.plot(y1.t, y1.y[0])
n=100
x=np.linspace(1,2,n)
y1_s= np.zeros(n, dtype=float)
for i in range(0,n):
    y1_s[i]= 2*x[i] + x[i]*np.log(x[i])
plt.plot(x, y1_s, color='green')
