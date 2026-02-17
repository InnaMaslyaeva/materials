# sorting


def sorting1_bubble(a):
    # 1 сортировка пузырьком
    for i1 in range(0, len(a)):
        print(f'{i1=} step:')
        for i2 in range(0, len(a)-1):
            print(a[i2], a[i2+1], end=' -> ')
            if a[i2] > a[i2+1]:
                a[i2], a[i2+1] = a[i2+1], a[i2]
            print(a[i2], a[i2+1])    
        print(f'result: {a=}\n')
    return a    


def sorting4_heap(a):
    # 4 пирамидальная сортировка
    a = [44, 55, 12, 42, 94, 18, 6, 67]
    a1 = []

    while True:
        if len(a) == 0:
            break
        else:
            amax = max(a)
            a1.append(amax)
            a.remove(amax)
            print(a1, '<-', a)
    print(a1)
    return a

def sorting5_min_in_array(a):
    # 0 минимальное в массиве
    a_min = 1000
    print('a_min=', a_min, 'a=', a)
    a_min = min(a_min, a[i2])
    print(i2, a[i2])
    if a_min < a[i1]:
        a_min, a[i1] = a[i1], a_min
    print('a_min=', a_min, 'a=', a)
    return a     

#a = [3,6,2,9,5,1,7]
#a = [44, 55, 12, 42, 94, 18, 6, 67]
a = [7,3,2,6,4,5,1]
print(f' original list: {a=}')

#a1 = sorted(a)
#a2 = sorted(a, reverse = True)
#print(f'{a1=} <-> {a2=}')   

sorting1_bubble(a)
#sorting2_election(a)
#sorting3_insertion(a)
#sorting4_heap(a)
#sorting5_min_in_array(a)


