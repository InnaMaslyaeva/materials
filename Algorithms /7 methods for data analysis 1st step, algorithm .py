# 27 - 22

# Здесь ошибки не случайны!
# 19615 69089

from math import dist

# 1 read and transform data
f = open('27.txt') # -22a
data = [ list(map(float,s.replace(',', '.').split('\t')))
          for s in f.readlines()]
#print(data[:2:])

# 2 divide set of points into two clasters 
# claster1
claster1 = [ el for el in data
             if dist(el, (-1.5, 2.5)) < 2]  # !
#print(claster1)
dmin = 10**10
for point in claster1:
      d = sum([ dist(point, x) for x in claster1 ])
      if d < dmin:
          dmin = d
          centroid1 = point 
print(f'{centroid1=}')

# claster2
claster2 = [ el for el in data
             if dist(el, (2, -1)) < 2]     # !
#print(claster2)
dmin = 10**10
for point in claster2:
      d = sum([ dist(point, x) for x in claster2 ])
      if d < dmin:
          dmin = d
          centroid2 = point          
print(f'{centroid2=}')

# 3 result visualisation

# 3.1 turtle
from turtle import *

tracer(0)
Turtle().screen.setup(700,600, 40)
k = 70
up()
dot(10, 'hotpink')
write(position(), font=('Arial', 10))

X1 = [n[0] for n in claster1]
Y1 = [n[1] for n in claster1]    
for point in claster1:
  goto(point[0]*k, point[1]*k)
  dot(4, 'lightblue')
goto(centroid1[0]*k, centroid1[1]*k)
dot(10, 'red')
write(position(), font=('Arial', 10))

X2 = [n[0] for n in claster2]
Y2 = [n[1] for n in claster2]
for point in claster2:
  goto(point[0]*k, point[1]*k)
  dot(4, 'lightgreen')
goto(centroid2[0]*k, centroid2[1]*k)
dot(10, 'red')
write(position(), font=('Arial', 10))

update()

### 3.2 matplotlib
##import matplotlib.pyplot as plt
##
##x = (centroid1[0] + centroid2[0])/2 * 100_000
##y = (centroid1[1] + centroid2[1])/2 * 100_000
##print(f'{int(x)=} {int(y)=} ')
##
### 4 Draw the scatter plot with matplotlib
##plt.style.use('_mpl-gallery')
##fig, ax = plt.subplots(figsize=(8, 5))
##
##X1 = [n[0] for n in claster1]
##Y1 = [n[1] for n in claster1]
##ax.scatter(X1, Y1,
##           s=3, c='blue') 
##ax.scatter(centroid1[0],
##           centroid1[1],
##           s=5,
##           c='darkblue')
##
##X2 = [n[0] for n in claster2]
##Y2 = [n[1] for n in claster2]
##ax.scatter(X2, Y2,
##           s=3, c='green') 
##ax.scatter(centroid2[0],
##           centroid2[1],
##           s=5,
##           c='darkgreen')
##
##plt.title('Star clasters',
##          fontsize=14,
##          loc='left')
##plt.xlabel('x-axis', fontsize=12)
##plt.ylabel('y-axis', fontsize=12)
##plt.grid(True)
##plt.tight_layout()
##plt.show()


