# 16 - 5167

from functools import lru_cache
import sys

@lru_cache()
def F(n):
    if n >= 10000: f = n 
    if n < 10000 and n % 2 == 0: f = F(n +2) -3
    if n < 10000 and n % 2 != 0: f = F(n +2) +1
    return f

sys.setrecursionlimit(10000)
print(F(94)-F(80))
# --------------------

a = [0] * 10100
for i in range(1, 10100):
    if i >= 10000: a[i] = i
for i in range(10100, 0, -1):  #(#1, 10100):  
    if i < 10000 and i % 2 == 0: a[i] = a[i+2] -3
    if i < 10000 and i % 2 != 0: a[i] = a[i+2] +1
print(a[94]-a[80])


