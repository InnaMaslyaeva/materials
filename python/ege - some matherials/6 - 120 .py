# 6 - 120
'''
Исполнитель Чертёжник перемещается на координатной плоскости,
оставляя след в виде линии. Чертёжник может выполнять команду
сместиться на (a, b), где a, b – целые числа. Эта команда
перемещает Чертёжника из точки с координатами (x, y) в точку
с координатами (x + a; y + b). Например, если Чертёжник
находится в точке с координатами (4, 2), то команда
сместиться на (2, −3) переместит Чертёжника в точку (6, −1). 
Чертёжнику был дан для исполнения следующий алгоритм:
сместиться на (0, 12)
сместиться на (5, -12)
сместиться на (-10, 0)
сместиться на (5, 12)

сместиться на (0, 4)
сместиться на (3, -4)
сместиться на (-6, 0)
сместиться на (3, 4)
Найдите разность между максимальным и минимальным периметром
нарисованных треугольников.'''

from turtle import *

tracer(0)
# рисуем фигуру
k = 20
down()
goto(xcor()+0*k, ycor()+12*k)
goto(xcor()+5*k, ycor()-12*k)
goto(xcor()-10*k, ycor()+0*k)
goto(xcor()+5*k, ycor()+12*k)

goto(xcor()+0*k, ycor()+4*k)
goto(xcor()+3*k, ycor()-4*k)
goto(xcor()-6*k, ycor()+0*k)
goto(xcor()+3*k, ycor()+4*k)

up()
for i in range(-7, 8):
    for j in range(0,18):
        goto(i*k, j*k)
        dot(4)
update()

# max = 5**2 + 12**2 = 13**2 p = 10+13+13 = 36
# min = 3**2 + 4**2 = 5**2   p  =3+4+5 = 12
# delta = 24





