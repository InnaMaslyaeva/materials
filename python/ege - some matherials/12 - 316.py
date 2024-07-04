# 12 - 316
'''
Дана программа для Редактора:
ПОКА  нашлось(>1)  ИЛИ нашлось(>2)  ИЛИ нашлось(>3)
  ЕСЛИ  нашлось(>1) 
    ТО заменить(>1, 2>)
  КОНЕЦ ЕСЛИ
  ЕСЛИ  нашлось(>2)
    ТО заменить(>2, 21>)
  КОНЕЦ ЕСЛИ
  ЕСЛИ  нашлось(>3) 
    ТО заменить(>3, 11>)
  КОНЕЦ ЕСЛИ
КОНЕЦ ПОКА
На вход программы поступает строка, начинающаяся с символа «>»,
а затем содержащая  22 цифры 1, k цифр 2 и 23 цифры 3,
расположенных в произвольном порядке.
Определите минимальное значение k,
при котором сумма числовых значений цифр строки,
получившейся в результате выполнения программы,
будет превышать 2023.'''
# 645
for k in range(500, 700):
    #k = 1
    #s = '>' + 23 * '3' + 22 * '1' + k * '2'
    s = '>'  + 22 * '1' + k * '2' + 23 * '3'    

    while '>1' in s or '>2' in s or '>3' in s:
        if '>1' in s:
            s = s.replace('>1', '2>', 1)
        if '>2' in s:
            s = s.replace('>2', '21>', 1)
        if '>3' in s:
            s = s.replace('>3', '11>', 1)
    #print(s)
    m = s.count('1') + 2 * s.count('2') + 3 * s.count('3')
    if m > 2023:
        print('k=', k, '->', m)
        # break
    

