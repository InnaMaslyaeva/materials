# 7 - 131 ege2023
'''
Сколько секунд потребуется обычному модему,
передающему сообщения со скоростью 65 536 бит/с,
чтобы передать цветное растровое изображение
размером 1024 на 768 пикселей,
при условии, что цвет каждого пикселя кодируется
3 байтами?'''

v = 65_536 #бит/с
S = 1024 * 768 #пикселей
i = 3 * 8 # bit

V = S * i
print(f' {S= } {i= } {V= } bit')

t = V / v
print(f' {t= } sec')  # t= 288.0 sec
