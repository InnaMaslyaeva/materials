# 5.3 Linear interpolation 

# 1) Создаем функцию y(x) = x^3 - 2x^2 + x - 1
#y <- function(x) {  x^3 - 2*x^2 + x - 1 }
y <- function(x) {  x^2 - 2*x + 3 }

# 2) Создаем данные
n <- 5
x_data <- seq(-3, 5, length.out = n)
y_data <- y(x_data)

# 3) Рисуем точечный график
plot(x_data, y_data, 
     pch = 19, col = "blue",
     xlab = "x", ylab = "y",
     main = "Интерполяция функции y(x) = x³ - 2x² + x - 1",
     ylim = c(min(y_data)-5, max(y_data)+5))

# 4) Создаем массив x_new
x_new <- seq(min(x_data), max(x_data), by = 0.1)

# 5) Линейная интерполяция и ее график
linear_interp <- approx(x_data, y_data, xout = x_new)
lines(linear_interp$x, linear_interp$y, col = "red", lwd = 2)

# 6) Реальные значения и их график
y_real <- y(x_new)
lines(x_new, y_real, col = "green", lwd = 2, lty = 2)

# # Добавляем легенду
# legend("topleft",
#        legend = c("Исходные точки", "Линейная интерполяция", "Реальная функция"),
#        col = c("blue", "red", "green"),
#        pch = c(19, NA, NA),
#        lty = c(NA, 1, 2),
#        lwd = 2,
#        cex = 0.8)

grid()

# 7) Расчет и график относительной ошибки
rel_err <- abs(linear_interp$y - y_real) / abs(y_real) * 100

# Создаем новый график для ошибки
par(mfrow = c(1, 1)) # Сбрасываем разбиение на несколько графиков
plot(x_new, rel_err, type = "l",
     col = "purple", lwd = 2,
     xlab = "x", ylab = "Относительная ошибка, %",
     main = "Относительная ошибка линейной интерполяции")
grid()

# Возвращаем стандартные параметры графики
par(mfrow = c(1, 1))