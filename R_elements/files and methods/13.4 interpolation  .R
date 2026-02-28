# 5.5 

# 1) Создаем функцию y(x) = x^3 - 2x^2 + x - 1
y <- function(x) {
  x^3 - 2*x^2 + x - 1
}

# 2) Создаем данные
n <- 5
x_data <- seq(-3, 5, length.out = n)
y_data <- y(x_data)

# Настраиваем параметры графики
par(mar = c(5, 5, 4, 2)) # Увеличиваем поля для подписей
    
# 3) Создаем основной график
plot(x_data, y_data, 
         pch = 19, col = "blue", cex = 1.5,
         xlab = "x", ylab = "y", 
         main = "Интерполяция функции y(x) = x³ - 2x² + x - 1",
         ylim = c(min(y_data)-5, max(y_data)+5),
         xlim = c(min(x_data)-0.5, max(x_data)+0.5),
         las = 1, font.main = 1, cex.lab = 1.2)
grid(col = "gray90", lty = 2)
    
# 4) Создаем массив для интерполяции
x_new <- seq(min(x_data), max(x_data), by = 0.1)
    
# 5) Линейная интерполяция
linear_interp <- approx(x_data, y_data, xout = x_new)
lines(linear_interp$x, linear_interp$y, col = "red", lwd = 2.5)
    
# 6) Реальная функция
y_real <- y(x_new)
lines(x_new, y_real, col = "darkgreen", lwd = 2.5, lty = 1)
    
# # 7) Добавляем легенду
# legend("topleft",
#            legend = c("Исходные точки", "Линейная интерполяция", "Реальная функция"),
#            col = c("blue", "red", "darkgreen"),
#            pch = c(19, NA, NA),
#            lty = c(NA, 1, 1),
#            lwd = 2,
#            pt.cex = 1.2,
#            bg = "white",
#            cex = 0.9,
#            inset = 0.02)
    
# Добавляем подпись с информацией о параметрах
mtext("n = 5 точек данных | Шаг интерполяции: 0.1", 
          side = 1, line = 4, cex = 0.8, col = "gray40")

# 7) Расчет и график относительной ошибки
rel_err <- abs(linear_interp$y - y_real) / abs(y_real) * 100

# Создаем новый график для ошибки
par(mfrow = c(1, 1)) # Сбрасываем разбиение на несколько графиков
plot(x_new, rel_err, type = "l",
     col = "purple", lwd = 2,
     xlab = "x", ylab = "Относительная ошибка, %",
     main = "Относительная ошибка линейной интерполяции")
grid()