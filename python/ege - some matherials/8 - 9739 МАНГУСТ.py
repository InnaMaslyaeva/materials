# 8 - 9739 МАНГУСТ
# 100810
from itertools import product

pool = list(product('МАНГУСТ', repeat = 6))
pool = sorted(pool)
print(pool[:8:])

ar_c = []
c = 0
for word in pool:
    c += 1
    t=''.join(word)

    if t[0] != ('У') and t.count('М') == 2 and t.count('Г') <= 1:
        ar_c.append(c)
        #c += 1

print(max(ar_c)) # (c,t)
