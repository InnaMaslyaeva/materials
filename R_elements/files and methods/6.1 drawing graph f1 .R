#  1 Функция 2.4 
f <- function(x) {
  return(x^2 + x - 6) 
}

# 2 Определяем границы и шаг
x_min <- -5    # Начало промежутка
x_max <- 5     # Конец промежутка
step <- 0.5    # Шаг*
# *Генерируем значения x
x_values <- seq(x_min, x_max, by = step)
# Вычисляем значения функции
y_values <- f(x_values)

# 3 График
plot(x_values, y_values, 
     col = "red",          # Красный цвет точек
     pch = 16,             # Тип маркера (16 - заполненные точки)
     xlab = "x", 
     ylab = "f(x)", 
     main = "График функции f(x) = x^2 + x - 6")

x1 = seq(-1, -0.5, length.out = 50)
y11 = rep(1, 50)
y12 = rep(0.5, 50)
y13 = rep(0, 50)
points(x1, y11)
points(x1, y12)
points(x1, y13)

y1 = seq(0.5, 1, length.out = 50)
x11 = rep(-1, 50)
y2 = seq(0., 0.5, length.out = 50)
x21 = rep(-0.5, 50)
points(x11, y1)
points(x21, y2)

###
x2 = seq(-0.35, 0.15, length.out = 50)
y21 = rep(1, 50)
y22 = rep(0, 50)
points(x2, y21)
points(x2, y22)

y3 = seq(0, 1, length.out = 100)
x31 = rep(-0.35, 100)
x32 = rep(0.15, 100)
points(x31, y3)
points(x32, y3)

###
y4 = seq(0, 1, length.out = 100)
x4 = rep(0.3, 100)
points(x4, y4)

###
y5 = seq(0, 1, length.out = 100)
x5 = rep(0.5, 100)
points(x5, y5)

x6 = seq(0.5, 1, length.out = 50)
y6 = rep(0, 50)
points(x6, y6)

grid()
