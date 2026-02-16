# сортировка двумерного массива

n = 13
a = [[16074, 258],[18285, 74],[23738, 58],
     [4801, 65],[2568, 155],[3456, 122],
     [7779, 122],[16074, 255],[5051, 68],
     [21873, 202],[6677, 196],[20649, 283],
     [15669, 112]]
print(f'origin data: {a=}')
a1 = sorted(a, reverse = True)
print(f'sorted data: {a1=}')

for i in range(n):
    for j in range(i+1, n):
        print(i, j, a[i][0], a[i][1], a[j][0], a[j][1])
        delta = abs(a[i][1]-a[j][1])
        if a[i][0] == a[j][0] and delta ==3:
            print(i, j)
            print('    *****', a[i][0], a[i][1], a[j][0], a[j][1]) 
print(f'sorted data: {a=}')
