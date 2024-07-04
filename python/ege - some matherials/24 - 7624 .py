# 24 - 24variant 7624
# 786

# 1 data
f = open('24_7624.txt')
data = f.readlines()
print(len(data), data[0][:10:])  # data = [[GFHFJHFJHGJ] ]

# 2 замена букв на **
ar = data[0].replace('XX', '**')
ar1 = ar.replace('YY', '**')
ar2 = ar1.replace('ZZ', '**')
ar4 = ar2.replace('XY', '**')
ar5 = ar4.replace('YX', '**')
ar6 = ar5.replace('XZ', '**')
ar7 = ar6.replace('ZX', '**')
ar8 = ar7.replace('YZ', '**')
ar9 = ar8.replace('ZY', '**')

# 3 замена что бы не потерять символы
#print(ar2[:1000:])
ar10 = ar9.replace('**', '* *')
ar10 = ar10.split(' ')

# считаем длины длины отрезков
lmax = 0
for word in ar10:
    lmax = max(lmax, len(word))
    #print(len(word), lmax)
print(lmax)


