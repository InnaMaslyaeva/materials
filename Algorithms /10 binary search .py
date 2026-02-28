# binary search

''' Двоичный поиск заключается в том,
что на каждом шаге множество объектов делится
на две части и в работе остаётся та часть множества,
где находится искомый объект. '''

# 1 data
a = [2,4,6,8,12] # sorted array
key = 8          # number
print(f'{a=} {key=}')

def binary_search(a, key):
    l = 0           # left
    r = len(a) - 1  # right

    while l <= r:
        m = (l + r) // 2  # center

        if a[m] == key:
            return m  
        elif a[m] < key:
            l = m + 1  # shift left
        else:
            r = m - 1  # shift right

    return -1  # didn't find result

# 2 main
result = binary_search(a, key)

# 3 output
if result != -1:
    print(f"Число {key} найдено на позиции: {result}")
else:
    print(f"Число {key} не найдено в списке.")
