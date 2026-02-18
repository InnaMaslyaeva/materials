# data structures - variables, lists, matrix

# 1 variables/переменная

x = 5     # int
y = 5.2   # float
f = True  # bool
c = 1+5j  # complex
#print(f'{x= } {y= } {f= } {c= }')
#print(type(x), type(y), type(f), type(c))


# 2 sequence

# 2.1 list/список 
a = [1,2,3]
#print(f'list: {a= }')

a = ['a','b','c']
#print(f'{a= }')

a = [12,'b',3.75]
#print(f'{a= }')

b = 'abcdef'
#print(f'srtring: {b= } index: {b[1]= } slice: {b[1:4]= } ')


# 3 loop/цикл

### 3.1 цикл for / elemnent
###k = 0
##a = [12,'b',3.75]
##for el in a:
##    #k += 1  #k = k + 1
##    print(f'{el= }') # {k= } 

### 3.2 цикл for / index
##a = [12,'b',3.75] # index: 0, 1, 2 leght(a) = 3
##print(f'\n{a= }')
##print(f'{a[0]= } {a[1]= }\n')
##
##for i in range(len(a)):
##    print(f'{i= } {a[i]= }')

# 3.3 цикл while
##a = [12,'b',3.75]  # len(a) = 3 # matrix
##k = 0
##while k < len(a): # пока K <= 3
##    print(f'{k= } {a[k]= }')
##    k += 1

# 3.4 цикл while    
##a = [12,13,14]
##k = 0
##while True:   # пока истинно
##    print(a[k])
##    k += 1
##    if k > 2 : break

   
# 4 matrix/двумерный список = матрица
a = [[0, 0], [0, 0], 5, 'a']
#print(f'{a=} \n')

##for line in a:
##    print(f'{line= }')

a = [[1, 2], [3, 4]]
#print(f'{a=} \n')

##k = 1
##for line in a:
##    for n in line:
##        print(f'{k} {line= } {n=} ') # {line= }
##        k += 1

a = [[1, 2], [3, 4]]
#print(f'{a=} \n')

##k = 0
##for line in a:
##    for n in line:
##        k += 1
##        print(f'{k} {line= } {n=} ') # {line= }

d1 = [0] * 8
##print(f'{d1=}')

d2 = [[0] * 2]*8
##print(f'{d2=}')

##for el in d2:
##    el[0] = 5
##    print(f'{el=}')
##
##print(f'{d2=}')


# 5 set
s = set()
s.add(3)
s.add(4)
s.add(4)
print(f'set: {s= } ') # {3, 4}


# 6 dictionary
d = {}
print(f'dictionary: {d= } {type(d)= } ')

for i in '01234567':
    el = '7'+i
    d[el] = 0
    #print(el, d)
print(f'{d= } ')

x0 = 8**888 + 15*15**1515 - 2**444
#print(x0)
for key, value in d.items():
    d[key] = str(x0).count(key)
    print(key, value, d[key])
print(f'{d= } ')


# 7 tuple

















