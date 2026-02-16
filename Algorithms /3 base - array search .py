# Исходный массив:
from bisect import *

def binS(L, R, x, a): # 2 Бинарный поиск в массиве
    while R-L > 1:
        M = (L + R)//2
        if x == a[M]: return True
        if x > a[M]: L = M
        if x < a[M]: R = M
    return False

a = [52, 7, 10, 45, 3, 34, 97, 60] # массив
x = 10 # искомое число

# 1 Линейный поиск в массиве. Сложность O(n).
a1 = a.sort() # in place
a2 = sorted(a) # not in place

print(a1, a2) #обязательная сортировка массива       

if x in a2: # a? a1? a2?
    print('1/ входит')
else: print('1/ не входит')    
print()    

# 2 Бинарный поиск в массиве. Сложность O(ln(n)).
n = len(a2)
f = binS(-1, n, x, a2)
print(f)
if f: print('2/ входит')
else: print('2/ не входит')
print()

# 3 Встроенный в Python бинарный поиск:
from bisect import *
# bisect_left, bisect_right, bisect
r = bisect_right(a2, x)
# показывает позицию, куда может быть вставлен
l = bisect_left(a2, x)
if r != l: print('3/ входит')
else:   print('3/ не входит')
print()

# пример работы bisect
b = [1,3,4,6,9,9,10]
x = 9 # есть элемент в списке? 
x = 5 # нет элемента в списке
r = bisect_right(b, x)
l = bisect_left(b, x)
print('место в массиве, куда может быть вставлен х: ', l,r)




