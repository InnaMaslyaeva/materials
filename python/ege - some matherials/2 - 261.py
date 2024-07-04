# 2 - 261
# F1 = (w → y) == (z  → x),   F2 = (w → y)∧ (¬x == z).

print('x y  z  w  F1  F2')
for x in [0,1]:
    for y in [0,1]:
        for z in [0,1]:
            for w in [0,1]:
                 #F1 = (w → y) == (z  → x)
                 #F1 = not((not(w) or y) != (not(z) or x))
                 #F2 = (w → y)∧ (¬x == z)
                 #F2 = (not(w) or y) and not(not(x) != z)
                
                 F1 = ((not(w) or y) == (not(z) or x))                 
                 F2 = (not(w) or y) and (not(x) == z)
                 
                 print(x, y, z, w ,F1, F2)
# yzxw

