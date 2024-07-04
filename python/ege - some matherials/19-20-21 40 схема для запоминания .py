# 19-20-21 40
# 14	5	9 10

#from functools import lru_cache

def m(h):
    return (h+3), (h*2)

#@lru_cache(None)
def game(h):
    if h >= 33: return 'w'
    
    #19
    #m(h) -> (h+3), (h*2)
    #if (game(h+3)=='w' or game(h*2)=='w'): return 'p1' # Петя добивает до 33
    #if any(game(i)=='w' for i in m(h)): return 'p1'

    #if (game(h+3)=='p1' and game(h*2)=='p1'): return 'v1'
    #if any(game(i)=='p1' for i in m(h)): return 'v1'

    #20
    #if (game(h+3)=='w' or game(h*2)=='w'): return 'p1' 
    #if (game(h+3)=='p1' and game(h*2)=='p1'): return 'v1'
    #if (game(h+3)=='v1' or game(h*2)=='v1'): return 'p2'
    
    #if any(game(i)=='w' for i in m(h)): return 'p1'
    #if all(game(i)=='p1' for i in m(h)): return 'v1'
    #if any(game(i)=='v1' for i in m(h)): return 'p2'

    #21
    if (game(h+3)=='w' or game(h*2)=='w'): return 'p1' 
    if (game(h+3)=='p1' and game(h*2)=='p1'): return 'v1'
    if (game(h+3)=='v1' or game(h*2)=='v1'): return 'p2'
    if ((game(h+3)=='p1' and game(h*2)=='p2') or (game(h+3)=='p2' and game(h*2)=='p1')): return 'v2'
    
    #if any(game(i)=='w' for i in m(h)): return 'p1'
    #if all(game(i)=='p1' for i in m(h)): return 'v1'
    #if any(game(i)=='v1' for i in m(h)): return 'p2'
    #if all(game(i)=='p1' or game(i)=='p2' for i in m(h)): return 'v2'


for s in range(1, 33):
    print(s, game(s)) # s
