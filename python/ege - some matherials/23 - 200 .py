# 23 - 200 
'''200) Исполнитель преобразует число,
записанное на экране. У исполнителя есть
три команды, которым присвоены номера:

Прибавь 3
Умножь на 2
Умножь на 7
Первая команда увеличивает
число на экране на 3, вторая умножает его на 2,
третья – умножает на 7. Сколько существует
различных программ, которые преобразуют
исходное число 2 в число 472 и содержат
больше команд умножения, чем сложения?'''
# 52

def F(begin, end, delta=0):
    if begin > end: return 0
    elif begin == end and delta == 0: return 0
    elif begin == end and delta > 0: return 1
    else:
        # содержат больше команд умножения, чем сложения
        k = F(begin, end-3, delta-1) 
        
        if end%2==0:
            k += F(begin, end//2, delta+1)            
        if end%7==0:
            k += F(begin, end//7, delta+1)       
       
        return k 
    
print(F(2, 472))






##def F(begin, end, delta=0):
##    if begin > end: return 0
##    elif begin == end: return 1
##    else:
##        k = F(begin, end-3)
##        k1 = k
##
##        k2 = 0
##        if end%2==0:
##            k += F(begin, end//2)
##            k2 += k
##        if end%7==0:
##            k += F(begin, end//7)
##            k2 += k
##
##        # содержат больше команд умножения, чем сложения
##        #if  k2 > k1: return k1+k2
##        #else: return 0
##        return k #(k1 + k2)
##    
##print(F(2, 472))
