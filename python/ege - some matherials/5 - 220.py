# 220
# 2
for i in range(700, 801):
    
    N = i #351
    x1 = N // 100 # 3
    x2 = (N // 10) % 10  # 4
    x3 = N % 10       # 5
    if x1 == 0 or x2 == 0 or x3 == 0: continue
    #print('N=', N, x1, x2, x3)

    nmax = str(max(x1, x2, x3))
    nmin = str(min(x1, x2, x3))
    nsr = str((x1+x2+x3) - int(nmax) - int(nmin))    
    #print('nmax = ', nmax, 'nmin = ', nmin, 'nsr = ', nsr)

    r1 = nmax + nsr # 10 * nmax + nsr
    r2 = nmin + nsr
    r = int(r1) - int(r2)
    #print('r1 = ', r1, 'r2 = ', r2, 'r = ', r)
    if r == 80: print('i = ', i, 'r = ', r, 'r1 = ', r1, 'r2 = ', r2)
