# 24

# поиск самой длинной цепочки повторяющихся символов

def f1(s):
    # 1 перебор символов строки по индексу
    s = 'AAAABBBCDDDDEFFGGHIIJJJKLLLAAAMMNOOPPPPQQQQAAAAARRSSSTUUVV'
    lmax = -1 # длина подцепочки
    t = ''
    for i in range(len(s)):
        if s[i] =='A':
            t = t + 'A'        
            lmax = max(lmax, len(t))            
            print(f'{s[i]= } {t= } {lmax= } ')
        elif s[i] != 'A': # начинам заново
            t = ''
    #print(f'1 перебор символов по индексу: {lmax=}\n') # 5
    return lmax      

def f2(s):
    # 2 перебор символов строки по символу   
    s = 'AAAABBBCDDDDEFFGGHIIJJJKLLLAAAMMNOOPPPPQQQQAAAAARRSSSTUUVV'
    lmax = 0
    t = ''
    for n in s:
        if n == 'A':
            t = t + n
            print(f'{n=} {t=}')
        else:
            if len(t)>0:
                lmax = max(lmax, len(t))
                #print(f'{t= } {len(t)= } {lmax= } ')
            t = ''
    #print(f'2 перебор символов строки - по символу: {lmax=}\n') # 5
    return lmax

def f3(s):
    # 3 проверка вхождения подстроки в строку
    s = 'AAAABBBCDDDDEFFGGHIIJJJKLLLAAAMMNOOPPPPQQQQAAAAARRSSSTUUVV'
    print(f'{"A" in s= } ') # main question ?

    flag = True
    x = ''
    while True:
        x = x + 'A'
        flag = x in s
        print(f'{x=} {len(x)=} {flag=} ')
      
        if flag == False:
            print(f'summary: len={len(x)-1} {x=} ')
            break        
    #print(len(x)-1) # 5    
    return t, len(x)-1    

def f4(s):
    # 4 проверка вхождения подстроки в строку, индексы
    s = 'BZAXDBDDAWZDYEYDEFFFBYFYZDCBAXDECCCCZXEWDECCCXEDBXYCXWX'
    print('C' in s) # main question ?
    
    t = 'C'
    while t in s:        
        ind = s.index(t)
        print(f'{t=} {len(t)=} {t in s0=} {s0.index(t)=} ')
        t = t + 'C'
        
    #print(f'3 {ind=} {t=} {s[ind-5: ind+len(t)+5]=} {len(t)-1}')
    return t, len(t)-1 

def f5(s):
    # 5 проверка вхождения подстроки 'A' в строку, индексы дальше
    s = 'AAAABBBCDDDDEFFGGHIIJJJKLLLAAAMMNOOPPPPQQQQAAAAARRSSSTUUVV'
    ##print(s.index('A', 10))
    ##print(s[s.index('A', 10): s.index('A', 10)+50])

    ind = 0
    for el in s:
        try:
            if el == 'A':
               i = s.index(el, ind+1)
               print(f'{el=} {i=} ')
               ind = i
        except:
            break
    return 1 if ind>0 else 0     

def f6(s):
    # 6 функция replace 
    s = 'BZAXDBDDAWZDYEYDEFFFBYFYZDCBAXDECCCCZXEWDECCCXEDBXYCXWX'
    
    for i in 'ABDEFGHIJKLMNOPQRSTUVWXYZ':
        s = s.replace(i, '*')
        #print(f'{i=} {s=}')
    #print(f'{s=}') # C?

    t = sorted( [i for i in s.split('*') if i != ''] )[-1]
    print(f'{t=}')
    return t, len(t)

def f7(s):
    # 7 подбор неполной цепочки "ACD" draft 

    def f(a):
        result = []
        for l in "ACD":
            a1 = a + l
            if a1 in s:
                result.append(a1)
        return result

    s = 'DEDDBDDEDACFDEECAADEDDADCADCAEDAAACDDDFCCEBDABCFEE'
    #print(f'{s=} ')

    last = ''
    a = ''
    r = f(a)
    #print(f'{r= }')
    while True:
        r1 = []
        for el in r: # пытаемся добавлять новый элементики автоматически, если есть что
            t = f(el)
            r1.extend(f(el))
            #print(f'{el= } {r1= }')
        r = r1
        if len(r1)>0: last = r1[-1] # искомый последний элемент  
        if len(r)==0: break 

    print(f'{s=} ')   
    print(f'{s.index(last)=}') # "DDADCADCA")
    print(f'{last=} {len(last)=}')
    return last

def f8(s):
    # 6 самая длинная цепочка, содержазая 6*"А" - срезы
    s = 'AAAABBB5CDDDDEFFGGHIIJJJKLLLAAAMMNOOPPPPQQQQ5AAAAARRSSSTUUVV'

    lmax = 0
    smax = '_'
    for i in range(len(s)-1):
        for j in range(i,len(s)):
            if i < j and  s[i:j:].count('A') == 6:                 
                 if len(s[i:j:]) > lmax:
                     lmax = len(s[i:j:])
                     smax = s[i:j:]
                     print(f'{i=} {j=} {s[i:j:]=} {lmax=} {smax=} ')
    return lmax, smax

def f9(s):
    # 6 самая короткая цепочка, содержазая 6*"А" - срезы
    s = 'AAAABBB5CDDDDEFFGGHIIJJJKLLLAAAMMNOOPPPPQQQQ5AAAAARRSSSTUUVV'

    lmin = 10**100
    smin = '_'*10000
    for i in range(len(s)-1):
        for j in range(i,len(s)):
            if i < j and  s[i:j:].count('A') == 6:                 
                 if len(s[i:j:]) < lmin:
                     lmin = len(s[i:j:])
                     smin = s[i:j:]
                     print(f'{i=} {j=} {s[i:j:]=} {lmin=} {smin=} ')
    return lmin, smin       

def f10(s):
    # 10 самая короткая цепочка, содержащая 6*"А" - скользящее окно
    def check(t, lmin, smin, K):
        # t = s[l:r:]
        # анализируем длину цепочки        
        if len(t) < lmin and t.count('A')==K:  
               # s[l:r:] 
               lmin = len(t)
               smin = t
               #print(f'--> {l=} {r=} {lmin=} {smin=} {k=}')
        return lmin, smin
    
    
    s = 'AAAABBB5CDDDDEFFGGHIIJJJKLLLAAAMMNOOPPPPQQQQ5AAAAARRSSSTUUVV'
    #s = 'ASABBB5CDDDDEAAFFGGHIIAJJJKLLL' 
    print(len(s))

    # ----l-----r------>
    l = 0 # левая граница
    r = 3 # правая граница
    k = 0 # s.count('A') counter ???
    lmin = 10**10
    smin = '_'

    K = 6 # 6*"A"
    while l < len(s) and r < len(s):
        
        # 1 двигаем правую границу вправо
        while k < K and r < len(s): 
            # s[l:r:] -> r+1
            r = r + 1
            k = s[l:r:].count('A')                       
            print(f'1* {l=} {r=} {s[l:r:]=} {k=}') 

        # 2 двигаем левую границу вправо   
        while k == K and l < len(s)-1:
           # сначала фиксируем результат
           lmin, smin = check(s[l:r:], lmin, smin, K)
           print(f'--> {l=} {r=} {smin=} {lmin=} {k=}')

           # s[l:r:] -> l+1
           l = l + 1
           k = s[l:r:].count('A')           
           print(f'2* {l=} {r=} {s[l:r:]=} {k=}')               
        
    # print(f'{lmin=} {smin=} ')
    return lmin, smin


def f11(s):
    # 11 самая длинная цепочка, содержащая 6*"А" - скользящее окно
    def check(t, lmax, smax, K):
        # t = s[l:r:]
        # анализируем длину цепочки        
        if len(t) > lmax and t.count('A')==K:  
               # s[l:r:] 
               lmax = len(t)
               smax = t
               #print(f'--> {l=} {r=} {lmax=} {smax=} {k=}')
        return lmax, smax
    
    
    s = 'AAAABBB5CDDDDEFFGGHIIJJJKLLLAAAMMNOOPPPPQQQQ5AAAAARRSSSTUUVV'
    #s = 'ASABBB5CDDDDEAAFFGGHIIAJJJKLLL' 
    print(len(s))

    # ----l-----r------>
    l = 0 # левая граница
    r = 3 # правая граница
    k = 0 # s.count('A') counter ???
    lmax = 0
    smax = '_'

    K = 6 # 6*"A"
    while l < len(s) and r < len(s):
        
        # 1 двигаем правую границу вправо
        while k < K and r < len(s): 
            # s[l:r:] -> r+1
            r = r + 1
            k = s[l:r:].count('A')                       
            print(f'1* {l=} {r=} {s[l:r:]=} {k=}') 

        # 2 двигаем левую границу вправо   
        while k == K and l < len(s)-1:
           # сначала фиксируем результат
           lmax, smax = check(s[l:r:], lmax, smax, K)
           print(f'--> {l=} {r=} {smax=} {lmax=} {k=}')

           # s[l:r:] -> l+1
           l = l + 1
           k = s[l:r:].count('A')           
           print(f'2* {l=} {r=} {s[l:r:]=} {k=}')               
        
    # print(f'{lmax=} {smax=} ')
    return lmax, smax


# задача 1: поиск самой длинной цепочки повторяющихся символов

# 1 read data
#f = open('24-1.txt')
#s0 = f.readline()  # one string?
#s1 = f.readlines() # many strings?
#print(len(s0), len(s1)) # (s[:50:]) # 1 строка = 999425 символов
s0 = 'BZAXDBDDAWZDYEYDEFFFBYFYZDCBAXDECZXEWDECXEDBXYCXWX'

# 2 string analysis
s = s0
#print( f'1 перебор символов по индексу: {f1(s)=} ')

#print( f'2 перебор символов по символу: {f2(s)=} ')

#print( f'3 проверка вхождения подстроки в строку: {f3(s)=} ')

#print( f'4 проверка вхождения подстроки в строку: {f4(s)=} ')

#print( f'5 проверка вхождения подстроки в строку: {f5(s)=} ')

#print( f'6 функция replace: {f6(s)=} ')

#print( f'7 подбор неполной цепочки "ACD": {f7(s)=} ') # draft

#print( f'8 самая длинная цепочка c 6*"А" - срезы: {f8(s)=} ')

#print( f'9 самая короткая цепочка c 6*"А" - срезы: {f9(s)=} ')

#print( f'10 самая короткая цепочка, с 6*"А" - скользящее окно: {f10(s)=} ')

print( f'11 самая длинная цепочка, с 6*"А" - скользящее окно: {f11(s)=} ')






