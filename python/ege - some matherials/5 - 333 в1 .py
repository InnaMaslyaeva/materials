# 5 - 333

def f3(x):
    x3 = ''
    while x >0:
        x3 = str(x%3) + x3
        x = x//3
    return x3

res = []
for N in range(5,100):
     t = f3(N)

     if N%3==0:
         t1 = t + t[-2]+t[-1]
     else:
        r = (N%3)*5
        r1 = f3(r)
        t1 = t + r1

     R = int(t1, 3)
     if R > 133:
          print(N, t, t1, R)
          res.append(R)
          #break
print(sorted(list(set(res))))
