# 24 - 5223

with open('24_5223.txt') as f:
    s = f.readlines()
print(len(s), s[0][:10:])

#"asdfghddzccvvvvddddbbn".split("dd")
#['asdfgh', 'zccvvvv', '', 'bbn']

lmax = 0
ar = s[0].split('DD')
k = 0
for word in ar:
    if 'EF' in word:
        k += 1
        lmax = max(lmax, len(word))
        print(k, word[:10:], lmax, '\n')
