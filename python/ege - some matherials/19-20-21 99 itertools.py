# 19-20-21 99) task 4 vers 3
# 1 куча камней,  +1, +3, *3  - нельзя повторять ходы!
# 33 - 11, 32 - 10

from itertools import product

#res = permutations('1234', 4)
res0 = product('123', repeat=4)
res1 = []
for el in res0:    
    #print(el)
    res1.append(''.join(el))
res2 = []
for el in res1: 
    if '11' not in el and '22' not in el \
       and '33' not in el and '44' not in el: 
       #print(el)
       res2.append(el)
print('список возможных команд:', res2)
#for el in res2:  # последовательность команд
#    print(el)

#res3 = ['1212', '1213', '1231', '3231', '3232']

for s in range(1, 20):
    print('s=', s)
    
    for el in res2:
        #print('el=', el)
        soum = s
        for i in range(len(el)):
           #print('el=', el, i, el[i])      
   
           if el[i] == '1': soum += 1
           if el[i] == '2': soum += 3
           if el[i] == '3': soum *= 3
    print('el=', el, soum)
    if soum == 100: print('*****el=', el, soum)

