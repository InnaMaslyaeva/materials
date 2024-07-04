# 17 - 270
# Определите количество пар чисел, в которых ровно
# один из двух элементов больше, чем сумма цифр всех
# чисел в файле, делящихся на 35, а шестнадцатеричная
# запись другого оканчивается на EF. В ответе запишите
# два числа: сначала количество найденных пар, а
# затем – минимальную сумму элементов таких пар.
# 15 6410

def sss(x):    
    n = [0]*10
    x1 = str(x)
    for i in range(10):
        t = str(i)
        n[i] = x1.count(t)    
    s = 0
    for i in range(10):
        s = s + i * n[i]    
    return s    

with open ('17-243.txt') as f:
    s = f.readlines()
    s1 = []
    p = []
for word in s:
    word = word.replace('/n','')
    if word[len(word)-2]:
        p.append(int(word))
#p = [6271, 4251]

print(p)
ssum35 = 0 #сумма цифр в файле, делящихся на 35
for i in range(len(p)):   
    if p[i] % 35 == 0 :
        ssum35 = ssum35 + int(sss(p[i]))
        print('p[i]=', p[i], 'ssum35=', ssum35)
print('ssum35=', ssum35)     

cnt = 0
smin = 10000000
for i in range(len(p)-1):    
    x1_16 = hex(p[i])
    x2_16 = hex(p[i+1])
     
    if (p[i] > ssum35 and x2_16[-1] == 'f' and x2_16[-2] == 'e') or \
        (p[i+1] > ssum35 and x1_16[-1] == 'f' and x1_16[-2] == 'e'):
        print(cnt, 'p[i]=', p[i], x1_16, 'p[i+1]=', p[i+1], x2_16)
        smin = min(smin, p[i]+p[i+1])
        cnt += 1    

print('cnt=', cnt, 'smin=', smin)  
