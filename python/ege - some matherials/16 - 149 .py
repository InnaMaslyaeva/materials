# 16 - 149 
'''Алгоритм вычисления функции F(n, m),
где n и m – натуральные числа, задан следующими соотношениями:
F(n, m) = 0, если m > n,
F(n, m) = 1 + F(n, m + 1), если m ≤ n и n делится на m,
F(n, m) = F(n, m + 1), если m ≤ n и n не делится на m.
Чему равно значение выражения F(107864, 3)?'''
# 14

##from functools import lru_cache
##import sys
##
##def F(n, m):
##    if m > n: f = 0
##    elif m<=n and n%m==0: f = 1 + F(n, m + 1)
##    elif m<=n and n%m!=0: f = F(n, m + 1)
##    return f
##
##sys.setrecursionlimit(50000)
###print( F(107864, 3))
##print( F(100, 3))

##N = 100 #107864
##a = [[0 for n in range(N+3)] for m in range(N+3)]
###print(f' {a[0][0]= } {a[0][1]= } {a[1][0]= }   ')
###print( f' {a= } ')
##
##for n in range(N+1, 0, -1):
##    for m in range(N+1, 0, -1):
##    
##        if m > n: a[n][m] = 0
##        elif m<=n and n%m==0: a[n][m] = 1 + a[n][m+1]
##        elif m<=n and n%m!=0: a[n][m] = a[n][m+1]
##        
###print( a[N][3])
##print( f' {a[N][3]= } ')
###for i in range(N):
###    print( f' {a[i]= } ')

N = 107864
cnt = 0
for m in range(3, N+1):
    if N % m == 0:
        cnt += 1
print(cnt)


