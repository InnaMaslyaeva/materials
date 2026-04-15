# 27 demo 2026 stars

''' Для файла А определите координаты центра каждого кластера,
затем найдите два числа: A1​ – минимальное расстояние от центра
кластера с наименьшим количеством точек до красного гиганта,
и A2​ – максимальное расстояние от центра кластера
с наименьшим количеством точек до красного гиганта. 4940 74302 '''

# 1 data
f = open('27_A_28766.txt')
coords = []
for line in f:
    s = line.split()
    x = float(s[0].replace(',', '.'))
    y = float(s[1].replace(',', '.'))
    z = s[2]
    coords.append([x, y, z])    
coords.sort(key=lambda x: x[1])
print(f'data= {coords[:2:]}... \n')

# 2 clasters and minimum distance
cl = []

claster_1 = [el for el in coords if el[1] < 8]
# print(f'{claster_1 =} ')
p1_min = 1000
for point in claster_1:
    p1sum = 0
    for el in claster_1:
        p1sum += ((point[0] - el[0])**2 + (point[1] - el[1])**2)**0.5
    if p1sum < p1_min:
        p1_min = p1sum
        X1 = point[0]
        Y1 = point[1]
        Z1 = point[2]
    # print(point, p1sum, p1_min)
cl.append([len(claster_1), X1, Y1, Z1])
print(f'\n claster_1 {len(claster_1)= } {X1= } {Y1= } {Z1= } ')

claster_2 = [el for el in coords if el[1] > 10]
# print(f'{claster_2 =} ')
p2_min = 1000
for point in claster_2:
    p2sum = 0
    for el in claster_2:
        p2sum += ((point[0] - el[0])**2 + (point[1] - el[1])**2)**0.5
    if p2sum < p2_min:
        p2_min = p2sum
        X2 = point[0]
        Y2 = point[1]
        Z2 = point[2]
cl.append([len(claster_2), X2, Y2, Z2])        
print(f'\n claster_2 {len(claster_2)= } {X2= } {Y2= } {Z2= } ')

print(f'\n {cl= }')

# 3
# A1​ – минимальное расстояние от центра кластера с
# наименьшим количеством точек до красного гиганта,
# A2​ – максимальное расстояние от центра кластера
# с наименьшим количеством точек до красного гиганта.

red_gigant = [point for point in coords
              if point[2][0]=='Y' and point[2].count('I')==3]

centroid = min(cl)
print(f'\n claster centroid with min points: {min(cl)= }\n')

rmin = 10**10
rmax = 0
for point in red_gigant:
    r = ((point[0] - centroid[1])**2 + (point[1] - centroid[2])**2)**0.5
    
    if r < rmin:
        rmin = r
        ro = point
        A1 = int(rmin*10000)
    if r > rmax:
        rmax = r
        ro = point
        A2 = int(rmax*10000)
        
    print(f'{point=} => {A1=} {A2=}' )
# A1=4940
# A2=74302











