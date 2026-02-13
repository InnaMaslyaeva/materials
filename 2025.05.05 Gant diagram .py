# Gant diagram

import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

# Read data from file into variables
x = np.linspace(0, 25, 24)
print(f'{x=}') 
y, x1, x2 = np.loadtxt('data1.txt', unpack=True)
#print(f'{y=} {c=}')
print(f'{len(x1)=} {x1=} ')

plt.figure(figsize=(8,5))
mpl.style.use('seaborn-v0_8')


plt.hlines(x, x1, x2,
           color='royalblue',
           label='Stages',
           #data=x1,
           linestyles = 'solid',
           linewidth=10  
           )

plt.title('Project stages - Gant diagram',
          fontsize=14,
          loc='left')
plt.xlabel('x-axis, msec', fontsize=12)
plt.ylabel('y-axis', fontsize=12)
plt.grid(True,
         linestyle="--",
         alpha=0.4,
         c='darkgray',
         zorder=1)
plt.legend(loc='upper left')
plt.tight_layout()
plt.show()
