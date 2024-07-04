# 24 - 239
'''Текстовый файл 24-239.txt состоит не более
чем из 10**6 символов и содержит только латинские буквы X, Y, Z.
Найдите максимальную длину подстроки, которая состоит из
сочетаний XY, YZ, YZZ, записанных в произвольном порядке.
В ответе укажите наибольшую длину подходящей подстроки.
Например, в строке ZZXZXZZXYYZYZZYYY самая длинная
подходящая подстрока – XYYZYZZ имеет длину 7. '''

# 1 читаем данные 
#n = 30000
with open ('24-239.txt') as f:
    s0 = f.readline()
    n = len(s0)
    print('len(s0)=', len(s0))
    s1 = s0[0:100:]
##    #print(s[0], s[1], s[2], s[3])
print(s1)

s = s1
s = 'ZZXZXZZXYYZYZZYYY'

i = 0
word = ''
while i < len(s):
    # сочетаний XY, YZ, YZZ
    #print(s[i]+s[i+1])

    if s[i]+s[i+1] == 'XY' or  s[i]+s[i+1] == 'YZ':
        word += s[i]+s[i+1]
        print(s[i]+s[i+1], word)
        i += 2

    if s[i]+s[i+1]+s[i+2] == 'YZZ':
        word += s[i]+s[i+1]+s[i+2]
        print(s[i]+s[i+1]+s[i+2], word)
        i += 3
    #else:
        print('*******',  word)
        word = ''
    
    i += 1


