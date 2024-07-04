# 17 - 9748

# 299 196183

s = [int(x) for x in open('17_9748.txt')]
print(f' {s[:5:]= } ')

# максимальный элемент на 15
smax15 = max([x for x in s if x%100 == 15 ])
print(f'{smax15= } ') # 96615

#s = s[:100:]
k = 0
smax = 0
for i in range(len(s) - 3):
    # длина хотя бы одного числа 4
    if (len(str(s[i])) == 4 and len(str(s[i+1])) != 4 and len(str(s[i+2])) != 4 ) or \
       (len(str(s[i])) != 4 and len(str(s[i+1])) == 4 and len(str(s[i+2])) != 4 ) or \
       (len(str(s[i])) != 4 and len(str(s[i+1])) != 4 and len(str(s[i+2])) == 4 ) :

       # сумма элементов тройки >= 96615
       if s[i]+s[i+1]+s[i+2] >= smax15:
            k += 1
            print(f'{k= } {s[i]= } {s[i+1]= } {s[i+2]= } {s[i+3]= }'  )
            smax = max(smax, s[i]+s[i+1]+s[i+2])

print( f'*** {k= } {smax= } ' )
