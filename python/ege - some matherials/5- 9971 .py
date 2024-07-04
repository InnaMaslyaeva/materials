# 5- 9971

for n in range (1,4000):
    n5 = ''
    x = n
    while x > 0:
        n5 = str(x%5) + n5
        x = x//5
        # print(x,n5)
    n6 = n5[::-1]
    n610 = int(n6, 5)
    
    r = abs(int(n610) - int(n))
    if r == 100:

        print(n,n5,n6,r)
