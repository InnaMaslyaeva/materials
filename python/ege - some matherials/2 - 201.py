# 2 - 201
print('x y z f')

for x in [0,1]:
    for y in [0,1]:
        for z in [0,1]:
            #f = ¬(x ≡ y → z)
            f = not(not(x != (not(y) or z)))
            print(x,y,z,f)
    
"""
x y z f
0 0 0 True
0 0 1 True    1!
0 1 0 False   1
0 1 1 True    0
1 0 0 False   1
1 0 1 False   0!
1 1 0 True    0
1 1 1 False
"""
x y z     -> yxz
0 0 1 True
1 0 1 False
