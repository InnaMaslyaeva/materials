# 6 - 9737
# Сколько точек с целочисленными координатами
# будут находиться внутри объединения!!! фигур?

from turtle import *

tracer(0)
k = 20
down()
for i in range(2):
    forward(k*10)
    right(90)    
    forward(k*18)
    right(90)
up()
forward(k*5)
right(90)    
forward(k*7)
left(90)
down()
for i in range(2):
    forward(k*10)
    right(90)    
    forward(k*7)
    right(90)

up()
for i in range(-30, 30):
    for j in range(-30, 30):
         goto(i*k, j*k)
         dot(2)
update()

