# 10 reg

import re # стандартная

with open ('10-212.txt') as f:
    s = f.readlines()
    #print(s)
print(s[8048])
print(len(s))

for element in s:
    dot = r'Выйдя'
    t = re.findall(dot, element)
    if len(t) > 0: print(t)
# pycharm
