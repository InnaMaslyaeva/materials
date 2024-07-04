# 7 - 46

# 60 кадров /сек
N1 = 65536
i1 = 16 # bit
#V1c = 60 * S * i # 1 sec
#V1m = 60 * V1c = 12 Mbyte
V1c = 12*1024*1024*8 / 60  # V1c= 1677721.6
print(F' {V1c= } bit')

#V1c = V1c / (8*1024*1024)
#print(F' {V1c= } Mb')

#S
S = V1c / i1
print(F' {V1c= } {i1= } -> {S= } pixeles')

# преобразованнное видео
k2 = 20
N2 = 256
i2 = 8 # bit
#V2 = S * i2
V2 = S * i2
print(F' {V2= } bit')

V2 = V2/ (8*1024*1024)
print(F' {V2= } Mb')


