# 5.4 Spline interpolation 

# 1) Создаем функцию y(x) = x^3 - 2x^2 + x - 1
#y <- function(x) {  x^3 - 2*x^2 + x - 1 }
y <- function(x) {  x^2 - 2*x + 3 }

# 2) Создаем данные
n <- 5
x_data <- seq(-3, 5, length.out = n)
y_data <- y(x_data)

# 3) Рисуем точечный график исходных данных
plot(x_data, y_data, 
     pch = 19, col = "blue", cex = 1.5,
     xlab = "x", ylab = "y",
     main = "Сплайн-интерполяция функции y(x) = x³ - 2x² + x - 1",
     ylim = c(min(y(x_data))-5, max(y(x_data))+5))
grid()

# 4) Создаем массив для интерполяции
x_new <- seq(min(x_data), max(x_data), by = 0.1)

# 5) Сплайн-интерполяция и ее график
spline_interp <- spline(x_data, y_data, xout = x_new)
lines(spline_interp$x, spline_interp$y, col = "red", lwd = 2)

# 6) Реальные значения и их график
y_real <- y(x_new)
lines(x_new, y_real, col = "green", lwd = 2, lty = 2)

# # Добавляем легенду
# legend("topleft",
#        legend = c("Исходные точки", "Сплайн-интерполяция", "Реальная функция"),
#        col = c("blue", "red", "green"),
#        pch = c(19, NA, NA),
#        lty = c(NA, 1, 2),
#        lwd = 2,
#        cex = 0.8,
#        bg = "white")

# 7) Расчет и график относительной ошибки
rel_err <- abs(spline_interp$y - y_real) / abs(y_real) * 100

# Создаем новый график для ошибки
dev.new() # Новое графическое окно
plot(x_new, rel_err, type = "l",
     col = "purple", lwd = 2,
     xlab = "x", ylab = "Относительная ошибка (%)",
     main = "Относительная ошибка сплайн-интерполяции")

grid()
abline(h = 0, col = "gray", lty = 3)