# 8 - 339
'''
Определите количество десятизначных
тринадцатеричных чисел,
в которых сумма нечётных цифр равна
сумме чётных цифр. При вычислении
суммы цифр считать,
что значение цифры А – 10,
значение цифры B – 11 и т. д.'''

alf13 = '0123456789abc'

x013 = '1_000_000_000'
x010 = int(x013, 13) # 10 604 499 373
print(x010)

x113 = 'c_ccc_ccc_ccc'
x110 = int(x113, 13) # 137 858 491 848
print(x110)

k = 0
for x in range(x010, x110): #x010 + 100):
    x13 = []
    while x > 0:
        x13.append(x%13)
        x = x//13
    x13 = x13[::-1]
    n1 = [num for num in x13 if int(num)%2==1 ]
    s1 = sum(n1)
    n0 = [num for num in x13 if int(num)%2==0 ]
    s0 = sum(n0)
    if s0 == s1:
        k += 1
        #print(f'{k= } {x= } {x13= } ') # {n1= } {n0= }

print(f'{k= } ')
# 2076464049






