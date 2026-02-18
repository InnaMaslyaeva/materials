# 27 - 22

# Здесь ошибки не случайны!
# 19615 69089

import matplotlib.pyplot as plt
from turtle import *
from math import dist

def Draw_the_scatter(claster1, claster2):    
    # matplotlib
    X1 = [n[0] for n in claster1]
    Y1 = [n[1] for n in claster1]
    X2 = [n[0] for n in claster2]
    Y2 = [n[1] for n in claster2]

    plt.style.use('_mpl-gallery')
    fig, ax = plt.subplots(figsize=(8, 5))

    ax.scatter(X1, Y1,
               s=3, c='blue') 
    ax.scatter(centroid1[0],
               centroid1[1],
               s=10,
               c='red') #'darkblue')
    ax.scatter(anticentroid1[0],
               anticentroid1[1],
               s=10,
               c='black') #'darkblue')

    ax.scatter(X2, Y2,
               s=3, c='green') 
    ax.scatter(centroid2[0],
               centroid2[1],
               s=10,
               c='red') #'darkgreen')
    ax.scatter(anticentroid2[0],
               anticentroid2[1],
               s=10,
               c='black')

    plt.title('Star clasters',
              fontsize=14,
              loc='left')
    plt.xlabel('x-axis', fontsize=12)
    plt.ylabel('y-axis', fontsize=12)
    plt.grid(True)
    plt.tight_layout()
    plt.show()

def Draw_the_graph(claster1, claster2):    
    # turtle
    tracer(0)
    Turtle().screen.setup(700,450, 30)
    k = 50
    up()
    dot(10, 'hotpink')
    write(position(), font=('Arial', 10))
    goto(-250, 200)
    write('Star clasters', font=('Arial', 10))
    
    X1 = [n[0] for n in claster1]
    Y1 = [n[1] for n in claster1]    
    for point in claster1:
        goto(point[0]*k, point[1]*k)
        dot(4, 'lightblue')
    goto(centroid1[0]*k, centroid1[1]*k)
    dot(10, 'red')
    write(position(), font=('Arial', 10))
    goto(anticentroid1[0]*k, anticentroid1[1]*k)
    dot(10, 'Black')
    write(position(), font=('Arial', 10))

    X2 = [n[0] for n in claster2]
    Y2 = [n[1] for n in claster2]
    for point in claster2:
        goto(point[0]*k, point[1]*k)
        dot(4, 'lightgreen')
    goto(centroid2[0]*k, centroid2[1]*k)
    dot(10, 'red')
    write(position(), font=('Arial', 10))
    goto(anticentroid2[0]*k, anticentroid2[1]*k)
    dot(10, 'Black')
    write(position(), font=('Arial', 10))

    update()
    
def clasters_processing_centroid(claster):
    dmin = 10**10
    for star in claster:
          d = sum( [dist(star, point) for point in claster] )
          if d < dmin:
              dmin = d
              centroid = star
    return centroid

def clasters_processing_anticentroid(claster):
    dmax = 0
    for star in claster:
        d = sum([dist(star, point) for point in claster] )       
        if d > dmax:
            dmax = d
            anticentroid = star
    return anticentroid     

# 1 read data
data = [ list(map(float,s.replace(',', '.').split('\t')))
          for s in open('27.txt').readlines()]
#print(data[:2:])

# 2 clasters processing and minimum distance
# claster1
claster1 = [ el for el in data
             if dist(el, (-1.5, 2.5)) < 2]
centroid1= clasters_processing_centroid(claster1)
anticentroid1 = clasters_processing_anticentroid(claster1)
print(f'{centroid1=} {anticentroid1=}')
# claster2
claster2 = [el for el in data
             if el[0] > 0.5]
centroid2= clasters_processing_centroid(claster2)
anticentroid2 = clasters_processing_anticentroid(claster2)
print(f'{centroid2=} {anticentroid2=}')

print(f'\nresult: {int((centroid1[0]+centroid2[0])/2*100000)}')
print(f'        {int((centroid1[1]+centroid2[1])/2*100000)}')

# 3 Draw the scatter plot and marginals and graph
# 3.1 turtle:
Draw_the_graph(claster1, claster2)
# 3.2 matplotlib:
Draw_the_scatter(claster1, claster2)




