# 5.2 Метод наименьших квадратов

# 1) Создаем массив x_data из 50 чисел от 1 до 32
x_data = seq(1, 100, length.out = 100) # 32

# 2) Создаем массив y_data = 3*log2(x_data) + шум
set.seed(123) # для воспроизводимости
y_data = 3*log2(x_data) + rnorm(length(x_data), mean = 0, sd = 1)

# 3) Создаем функцию f_LSM(x, a) = a*log2(x)
f_LSM = function(x, a)  { a * log2(x) } # { a * x } #

# 4) Определяем диапазон для a (например, от 0 до 6 с шагом 0.1)
a_values = seq(0, 5, by = 0.1)

# 5) Реализуем МНК-алгоритм (метод наименьших квадратов)
mse_values = sapply(a_values, function(a) {
  sum((y_data - f_LSM(x_data, a))^2)
})

# 6) Находим оптимальное значение a
a_best = a_values[which.min(mse_values)]
cat("Оптимальное значение a:", a_best, "\n")

# 7) Строим графики
par(mar = c(4, 4, 2, 1)) # настраиваем поля графика
plot(x_data, y_data, 
     pch = 19, col = "blue",
     xlab = "x_data", ylab = "y_data",
     main = "Аппроксимация данных методом наименьших квадратов")

# Добавляем теоретическую зависимость без шума (для сравнения)
lines(x_data, 3*log2(x_data), col = "green", lwd = 2, lty = 2)
#lines(x_data, x_data, col = "green", lwd = 2, lty = 2)

# Добавляем найденную оптимальную зависимость
lines(x_data, f_LSM(x_data, a_best), col = "red", lwd = 2)

# # Добавляем легенду
# legend("bottomright",
#        legend = c("Данные с шумом", "Теоретическая зависимость", "Найденная зависимость"),
#        col = c("blue", "green", "red"),
#        pch = c(19, NA, NA),
#        lty = c(NA, 2, 1),
#        lwd = 2,
#        cex = 0.8)

grid()
