# 27 demo 2025 stars
'''
Для файла Б определите координаты центра каждого кластера,
затем найдите два числа:
B1​ – минимальное расстояние между двумя различными
жёлтыми сверхгигантами, расположенными в одном и том же кластере, и
B2​ – расстояние между центрами кластеров с минимальным и
максимальным количеством жёлтых сверхгигантов. 1035 125591 '''

 
from math import dist

def func(claster):
    p_min = 1000
    for point in claster:
        p = [dist(point[:2], el[:2]) for el in claster]    
        psum = sum( p )
        if psum < p_min and psum > 0:
            p_min = psum
            X, Y, Z = point[0], point[1], point[2]
    
    return X, Y, Z

# 1 data
f = open('27_B_28766.txt')
coords0 = sorted( [ [float(line.split()[0].replace(',', '.')),
                    float(line.split()[1].replace(',', '.')),
                     line.split()[2]]
                   for line in f ] )
print('data0: ', coords0[:2:] )
coords = coords0 #[ el for el in coords0 if  5 < el[0] < 25 ]
#print('data: ', coords[:3:] )

# 2 clasters and minimum distance
claster_1 = [el for el in coords if el[1]< 15]
X1, Y1, Z1 = func(claster_1)
print(f'\n{len(claster_1)= }, centroid: {X1= } {Y1= } {Z1= }') 

claster_2 = [el for el in coords if 16 <=el[1]<= 22]
X2, Y2, Z2 = func(claster_2)
print(f'\n{len(claster_2)= }, centroid: {X2= } {Y2= } {Z2= }') 

claster_3 = [el for el in coords if el[1]> 23]
X3, Y3, Z3 = func(claster_3)
print(f'\n{len(claster_3)= }, centroid: {X3= } {Y3= } {Z3= }\n')

### 3 results
### Q1 - расстояние между центрами кластеров с минимальным
###      и максимальным количеством точек
##Q1 = ((X1 - X3)**2 + (Y1 - Y3)**2 )**0.5 * 10_000
##
### Q2 – максимальное расстояние от центра кластера до точки
###      этого же кластера среди всех кластеров
##q1 = max([dist((X1,Y1), point) for point in claster_1])
##q2 = max([dist((X2,Y2), point) for point in claster_2])
##q3 = max([dist((X3,Y3), point) for point in claster_3])
##Q2 = max(q1, q2, q3) * 10_000
##print(f'\nresult = {int(Q1)}, {int(Q2)}') # 142058 25299

# 3
#B1​ – минимальное расстояние между двумя различными
#жёлтыми сверхгигантами, расположенными в одном и том же кластере
#жёлтыми сверхгигантами = 'ZI'

def rB1(claster, n):
    for point in claster:
        print('  ', point)
    x = [dist(point1[:2], point2[:2]) for point1 in claster
              for point2 in claster if point1 != point2]
    q = min(x) if len(x)>0 else 0
    print(f'min расстояние по кластеру {n}: {q= } \n ' )
    return q

claster_1ZI = [point for point in coords
               if point[1]< 15 and 'Z' in point[2] and
               point[2].count('I')==1 and len(point[2])==3 ]
q1 = rB1(claster_1ZI, 1)

claster_2ZI = [point for point in coords
               if 16<=point[1]<=22 and 'Z' in point[2] and
               point[2].count('I')==1 and len(point[2])==3]
q2 = rB1(claster_2ZI, 2)

claster_3ZI = [point for point in coords
               if 23<point[1] and 'Z' in point[2] and
               point[2].count('I')==1 and len(point[2])==3]
q3 = rB1(claster_3ZI, 3)

B1 = int(min([el for el in [q1, q2, q3] if el!=0 ])*10000)
print(f'\n {B1= }' ) # B1= 1035

# 4
# B2​ – расстояние между центрами кластеров с минимальным и
# максимальным количеством жёлтых сверхгигантов.
cl = [ [len(claster_1ZI), X1, Y1, Z1],
       [len(claster_2ZI), X2, Y2, Z2],
       [len(claster_3ZI), X3, Y3, Z3]]
#for el in cl:
#    print(el)
B2 = int(dist(min(cl)[1:3], max(cl)[1:3] )*10000)
print(f'\n {B2= }' ) # 125591




