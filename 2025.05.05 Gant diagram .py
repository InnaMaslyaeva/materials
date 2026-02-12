# Gant diagram

import numpy as np
import matplotlib.pyplot as plt

# Read data from file into variables
x = np.linspace(0, 25, 24)
print(f'{x=}') 
y, x1, x2 = np.loadtxt('data1.txt', unpack=True)
#print(f'{y=} {c=}')
print(f'{len(x1)=} {x1=} ')

plt.figure(figsize=(8,5))
# Map value to color
#color_mapper = np.vectorize(lambda x: {0: 'red', 1: 'blue'}.get(x))
# Plot a line for every line of data in your file
#plt.hlines(y, x1, x2, colors=color_mapper(c))

plt.hlines(x, x1, x2,
           color='blue',
           label='graph1',
           #data=x1,
           linestyles = 'solid',
           linewidth=10  
           )

plt.title('Gant diagram', fontsize=14)
plt.xlabel('x', fontsize=12)
plt.ylabel('y', fontsize=12)
plt.grid(True)
plt.legend()
plt.show()
