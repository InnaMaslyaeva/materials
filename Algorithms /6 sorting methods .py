# sorting methods

'''
● метод пузырька
● метод выбора
● «быстрая сортировка»
● сортировка «кучей»
● сортировка слиянием
● пирамидальная сортировка '''

def check_sort(a):    
    for i in range(len(a)-1):
        if a[i] > a[i+1]:            
            return False
    return True    

def imstruments(a):
    a1 = sorted(a)
    print(f'● По возрастанию: {a1=}\n') 

    a2 = sorted(a, reverse = True)
    print(f'● По убыванию: {a2=}\n')   

    def lastDigit ( n ):
       return n % 10
    a3 = sorted (a, key = lastDigit )
    print(f'● По последней цифре: {a3=}\n')

    a4 = sorted(a, key = lambda x: x % 10)
    print(f'● По последней цифре: {a4=}\n') 
    
def Bubble_Sort_1(a):
    # 1 сортировка пузырьком O(n²),
    # Поменяем местами два соседних элемента,
    # которые стоят в неправильном порядке: A[i] > A[i + 1].
     
    for i1 in range(0, len(a)):
        print(f'step: {i1+1} ')
        for i2 in range(0, len(a)-1):            
            if a[i2] > a[i2+1]:
                print(a[i2], a[i2+1], end=' -> ')
                a[i2], a[i2+1] = a[i2+1], a[i2]
                print(a[i2], a[i2+1])    
        print(f'result: {a=}\n')
    return a    

def Selection_Sort_2(a):
    # 2 сортировка выбором O(n²),
    # Сначала выберем в списке наименьший элемент и
    # поставим его на место с индексом 0 в списке (в начало списка).
    # Потом среди всех оставшихся элементов выберем наименьший и
    # поставим его на место с индексом 1. 
    #for i in range(0, len(a) - 1): 
    #    for j in range(i + 1, len(a)): 
    #        if a[j] < a[i]: 
    #            a[i], a[j] = a[j], a[i]
    
    for i1 in range(0, len(a)-1):
        print(f'step: {i1=} ')
        for i2 in range(i1+1, len(a)):            
            print(a[i1], a[i2], end=' -> ')
            if a[i1] > a[i2]:
                a[i1], a[i2] = a[i2], a[i1]
            print(a[i1], a[i2])    
        print(f'result: {a=}\n')
    return a 

def Insertion_sort_3(a):
    # 3 сортировка вставками O(n²),
    # алгоритм добавления i-го элемента к уже
    # отсортированной части.
    for i in range(1, len(a)):      
        new_elem = a[i]     
        j = i - 1     
        while j >= 0 and a[j] > new_elem:         
            a[j + 1] = a[j] 
            j -= 1
            print(f'{i=} {j=} {a[i]=} {a[j]=} {a=}')
        a[j + 1] = new_elem        
    print(f'result: {a=}\n')    
    return a


def sorting_heap_4(a):
    # 4 пирамидальная сортировка
    a = [44, 55, 12, 42, 94, 18, 6, 67]
    print(f'Original list: {a=}')
    a_new = []

    while True:
        if len(a) == 0:
            break
        else:
            amax = max(a)
            a_new.append(amax)
            a.remove(amax)
            print(f'{a=}  ->  {a_new=} ')
    print(f'{a_new=}')
    return a_new

def Scheiker_Sort_5(a):
    # 1 сортировка пузырьком O(n²),
    # Поменяем местами два соседних элемента,
    # которые стоят в неправильном порядке: A[i] > A[i + 1].
     
    for i1 in range(0, len(a)):
        print(f'step: {i1+1} ')
        if i1%2==0:
            for i2 in range(0, len(a)-1):            
                if a[i2] > a[i2+1]:
                    print(a[i2], a[i2+1], end=' -> ')
                    a[i2], a[i2+1] = a[i2+1], a[i2]
                    print(a[i2], a[i2+1])
        else:
            for i2 in range(len(a)-1,0,-1):
                print(i2, i2+1) #a[i2], a[i2+1])
                if a[i2] < a[i2-1]:
                    print(a[i2], a[i2-1], end=' -> ')
                    a[i2], a[i2-1] = a[i2-1], a[i2]
                    print(a[i2], a[i2-1])
            
        print(f'result: {a=}\n')
    return a    

def min_in_array_6(a):
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
print(f'  Original list: {a=}')
print(f'  Sorted list? - {check_sort(a)}\n')

# 1 Python instruments:
imstruments(a)

# 2 Algorithms:

# ● метод пузырька
#Bubble_Sort_1(a)

#Scheiker_Sort_5(a)

# ● метод выбора
#Selection_Sort_2(a)

# ● сортировка вставками
#Insertion_sort_3(a)

# ● пирамидальная сортировка
#sorting_heap_4(a)

# ● «быстрая сортировка»


# ● сортировка «кучей»


# ● сортировка слиянием


# ● minimum in array
# min_in_array_6(a)



