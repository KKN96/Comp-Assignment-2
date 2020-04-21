import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
def f(t,y):
    return 1-(t-y)**2
y1=solve_ivp(f, [2, 3], [1],t_eval=np.linspace(2,2.97,100))
print(y1.y)
t=np.linspace(2,2.97,100)
plt.plot(y1.t, y1.y[0])
n=100
x=np.linspace(2,2.97,n)
y1_s= np.zeros(n, dtype=float)
for i in range(0,n):
    y1_s[i]= x[i] + 1/(x[i]-3)
plt.plot(x, y1_s, color='green')
