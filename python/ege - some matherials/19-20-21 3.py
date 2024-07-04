# 19 - 20 - 21 - 3
'''
За один ход игрок может добавить в одну
из куч (по своему выбору) один камень или
увеличить количество камней в куче в два раза.
Игра завершается в тот момент, когда суммарное
количество камней в кучах становится не менее 87.
Победителем считается игрок, сделавший последний ход,
т.е. первым получивший такую позицию, при которой
в кучах будет 87 или больше камней. В начальный
момент в первой куче было 9 камней, во второй
куче – S камней; 1 ≤ S ≤ 77.'''
# 20 - 34, 38 - 33

from functools import *

def m(h):
    (a,b) = h # !!!!
    return (a+1,b), (a*2,b), (a,b+1), (a,b*2)

@lru_cache(None)
def game(h):
    (a,b) = h 
    if a+b >= 87: return 'w'

    # 19
    #if any(game(i)=='w' for i in m(h)): return 'p1'
    #if any(game(i)=='p1' for i in m(h)): return 'v1'

    # 20
    #if any(game(i)=='w' for i in m(h)): return 'p1'
    #if all(game(i)=='p1' for i in m(h)): return 'v1'
    #if any(game(i)=='v1' for i in m(h)): return 'v2'

    # 20
    if any(game(i)=='w' for i in m(h)): return 'p1'
    if all(game(i)=='p1' for i in m(h)): return 'v1'
    if any(game(i)=='v1' for i in m(h)): return 'p2'
    if all(game(i)=='p1' or game(i)=='p2' for i in m(h)): return 'v2'


s1 = 9
for s in range(1, 78):
    h = (s1, s)
    print('s=', s, game(h))




    
