# 5.0 
# Исходная функция
f = function(x) { return(sin(x)) }
#f = function(x) { return(3*x + 5) }

# 1 Задаем набор значений
#x = c(1, 3, 5, 7, 10)
#y = c(-3, 2, 4, -1, 2)
x = c(1,2,3,4,5,6,7,8,9,10)
y = f(x)

# 2 Рисуем точечный график y(x)
plot(x, y, 
     pch = 19, 
     col = "blue",
     xlab = "Ось X", 
     ylab = "Ось Y",
     main = "График заданных точек y(x)")
grid()


# 3 Создаем массив x_new
x_new = seq(from = min(x)-1, to = max(x)+1, by = 0.1)

# 4 Линейная интерполяция
linear_interp = approx(x, y, xout = x_new)
lines(linear_interp$x, linear_interp$y, col = "blue", lwd = 2)

# 5 Интерполяция сплайном
spline_interp = spline(x, y, xout = x_new)
lines(spline_interp$x, spline_interp$y, col = "red", lwd = 2)