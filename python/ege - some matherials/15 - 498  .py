# 15 - 49 Poliakov
#  Укажите наименьшее целое значение А, при котором выражение
#  (680 y + 256 x < A) ∨ (5 x + 3 y > 11112)
#  истинно для любых целых неотрицательных значений x и y.

def f(x,y,A):    
   return (680*y + 256*x < A) or (5*x + 3*y > 11112)

A0 = 680*11112//3

for A in range(A0, A0+1000):
    OK = 1
    for x in range(6000): # проверяем а == 1?
      for y in range(6000):
         if (not f(x,y,A)) == True :  # f(x,y,A) == 0 ?
            OK = 0
            break
      if not OK: break
    if OK:
        print(A)
        break
