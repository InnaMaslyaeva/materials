# animated scatter plot using python

import matplotlib as mpl
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import numpy as np

# 1 data = 20 point from 2 to 10
num_points = 1
x,y = np.random.rand(2, num_points) * 10
#print(f'{t=}\n{x=}\n{y=}')

colors = np.random.rand(num_points)
sizes = np.random.rand(num_points) * 1300
#print(f'{colors[:2:]=}\n{sizes[:2:]=}')

# 2 graph
mpl.style.use('default') # ('seaborn-v0_8')
fig, ax = plt.subplots(figsize=(7, 4),
                       facecolor='gainsboro',
                       layout='constrained')
ax.set_facecolor('lavender') 
scat = ax.scatter(x, y,
                  c=colors,
                  s=sizes)
# animation
##def animate(i):    
##    phases_x = np.linspace(0, 2*np.pi, num_points)  
##    phases_y = np.linspace(0, 2*np.pi, num_points)
##    t = i * 0.01   
##    r = 0.1 * t
##    scat.set_offsets(np.c_[x + r * np.cos(t + phases_x),
##                           y + r * np.sin(t + phases_y)])
##    return scat
def animate(i):
    t = i * 0.05
    amplitude = 0.3
    scat.set_offsets(np.c_[x + amplitude * np.cos(t),    # все точки по кругу
                           y + amplitude * np.sin(t)])   # синхронно
    return scat
    
ani = animation.FuncAnimation(fig, 
                              animate,
                              frames=500, 
                              interval=10, # Delay 
                              repeat= True, # The animation repeats
                              )
xticks = np.arange(0, 11, 1) # x
xlabels = [f'{x:1.1f}' for x in xticks]
ax.set_xticks(xticks, labels=xlabels)
ax.set_xlabel(f' x ')
yticks = np.arange(0, 11, 1) # y
ylabels = [f'{y}' for y in yticks]
ax.set_yticks(yticks, labels=ylabels)
ax.set_ylabel(f' y ')
ax.set_title(f'Animated Scatter', color='indigo') 
ax.margins(0.1, 0.1)
ax.grid()
#plt.tight_layout()                              
plt.show() 

