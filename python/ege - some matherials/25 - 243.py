# 25 - 243
'''  На отрезке [100 000; 500 000] найдите такие числа,
 у которых больше 3 различных простых делителей,
 причем все они образуют арифметическую прогрессию
 с разностью отличной от нуля. В качестве ответа
 запишите найденные числа в порядке возрастания,
 справа от каждого числа запишите произведение количества
 простых делителей на разность их арифметической прогрессии.'''

def Farifm(primes): # проверяем арифм_прогрессию
                    # у простых делителей primes=[1, 5, 11, 17, 107] 
                    # с разностью отличной от нуля
    #print(f'primes: {primes=} ')
    delta = True
    d = 0
    for i in range(1, len(primes)-1, 1):        
        delta *= ( (primes[i+1] - primes[i]) == (primes[i] - primes[i-1]) )
    if delta != 0:
        d = (primes[i+1] - primes[i]) * len(primes)
        print(f'*** {i=} {delta= } {primes[i+1] - primes[i]= } {primes[i] - primes[i-1]= } ')
    return (delta, d) 

def Fpr(dd_res): # находим простые делители во множестве 
    primes = []
    for num in dd_res:        
        f = True
        for d in range(2,num): #round((num-1)**0.5)):
            if num%d==0:
                f = False
                break
        if f == True: primes.append(num)
    #print(f'  **простые делители: * {primes=}' )

    if len(primes) > 4 :    # больше 3 различных простых делителей,    
       t1, d = Farifm(primes[1::]) # проверяем арифм_прогрессию из прост_делителей
       if t1 > 0:
           print(f'**d_res* {primes[1::]=} {d=} ' )     
       return t1, d      
    else: return 0, 0  
    
def Fd(x): # подсчет множества делителей числа х
    d_res=[]
    n = round(x**0.5)+1  # !!!!
    for d in range(1,n):
        if x%d==0:
            d_res.append(d)
            if x//d not in d_res: d_res.append(x//d)
    dd_res = sorted(d_res)
    #print(f'*делители * {x=} : {dd_res=}' )
    
    t, d = Fpr(dd_res)  # проверяем количество простых делителей    # ()
    return t, d 
 
k=0
for x in range(101_050, 500_001):
    #if x % 1000==0 : print(x)  # шкала
    
    d_res, d  = Fd(x)    
    if d_res > 0:
        k+=1
        print(f'{k=}  {x=} {d_res=} {d=}\n')
   
'''
101065 48
107525 24
124729 24
177289 48
236555 24
278185 72'''





















