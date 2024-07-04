# 17 - 380
'''
В файле 17-380.txt содержится последовательность
целых чисел, не превышающих по модулю 100 000.
Определите количество троек элементов
последовательности, в которых не более двух
из трёх элементов являются четырёхзначными
числами, а сумма элементов тройки не больше
максимального элемента последовательности,
оканчивающегося на 25. В ответе запишите
количество найденных троек чисел,
затем максимальную из сумм элементов таких троек.
В данной задаче под тройкой подразумевается
три идущих подряд элемента последовательности.'''
# 6315 84523

f = open('17-380.txt')
data = [int(x) for x in f ]
print(data[:5:])

# максимального элемента последовательности,
# оканчивающегося на 25
##x25 = 0
##for num in data:
##    if num%100 == 25:
##        x25 = max(x25, num)
##        print(x25)
x25 = 84725        

#data = data[:50:]
smax = 0
k = 0
for i in range(len(data)-2):
    if ((len(str(abs(data[i]))) == 4) + (len(str(abs(data[i+1]))) == 4) +\
        (len(str(abs(data[i+2]))) == 4)) <=2:
        if data[i]+data[i+1]+data[i+2] <= x25:
            smax = max(smax, data[i]+data[i+1]+data[i+2])
            k += 1
            #print(k, data[i], data[i+1], data[i+2], smax)
print(k, smax)        
