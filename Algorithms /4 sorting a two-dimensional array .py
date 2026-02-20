# сортировка двумерного массива/словаря

# 1 list
a = [[16074, 258],[18285, 74],[23738, 58],
     [4801, 65],[2568, 155],[3456, 122],
     [7779, 122],[16074, 255],[5051, 68],
     [21873, 202],[6677, 196],[20649, 283],
     [15669, 112]]
print(f'list origin data: {a=}\n')

a1 = sorted(a, reverse = True)
print(f'sorted data by a[0] \|/: {a1=}\n')

a2 = sorted(a, key = lambda x: x[1])
print(f'sorted data by a[1] /|\: {a2=}\n')

# 2 dictionary
t = {'D': 1467, 'N': 1493, 'K': 1397, 'I': 1469, \
     'Y': 1447, 'R': 1492, 'W': 1532, 'H': 1419, \
     'L': 1536, 'T': 1450, 'M': 1457, 'E': 1518, \
     'P': 1442, 'A': 1400, 'Z': 1451, 'V': 1509, \
     'F': 1461, 'C': 1501, 'U': 1455, 'J': 1457, \
     'B': 1471, 'G': 1531, 'S': 1451, 'X': 1442, \
     'Q': 1478, 'O': 1536}
print(f'dictionary origin data: {t=}\n')

# сортировка по key
t1 = sorted(t.items())
print(f'sorted by values: {t1=}\n')

# сортировка по value
t2 = sorted(t.items(), key = lambda item : item[1])
print(f'sorted by keys: {t2=}')

