# Метод наименьших квадратов (МНК)

# 1. Задаем массив аргументов x_data (50 чисел от 1 до 10)
x_data = seq(1, 10, length.out = 50)

# 2. Задаем массив шума (нормальное распределение)
set.seed(123) # для воспроизводимости
noise = rnorm(length(x_data), mean = 0, sd = 1)

# 3. Задаем массив значений y_data = 3*x_data + noise
y_data = 3 * x_data + noise

# 4. Строим точечный график данных
plot(x_data, y_data, 
     pch = 19, col = "blue",
     xlab = "x", ylab = "y",
     main = "Аппроксимация данных методом МНК",
     ylim = c(min(y_data)-1, max(y_data)+1))
grid()

# 5. Определяем функцию для аппроксимации (линейная)
f_LSM = function(x, a) { a * x }

# 6. Задаем массив возможных значений параметра a
a_values = seq(0, 5, by = 0.1)

# 7. Функция для вычисления суммы квадратов отклонений (SSE)
getSSE = function(x, y, f, a) { sum((y - f(x, a))^2) }

# 8. Функция для нахождения оптимального значения параметра a
optimal = function(x, y, f, a_values) {
  n = length(a_values)
  best_a = a_values[1]
  best_res = getSSE(x, y, f, best_a)
  
  for (i in 1:n) {
    current_a = a_values[i]
    current_res = getSSE(x, y, f, current_a)
    
    # lines(x_data, f_LSM(x_data, current_res), 
    #       col = "green", lwd = 2)
    
    if (current_res < best_res) {
      best_a = current_a
      best_res = current_res
    }
  }
  
  return(best_a)
}

# 9. Находим оптимальное значение параметра a
a_best = optimal(x_data, y_data, f_LSM, a_values)
cat("Оптимальное значение параметра a:", a_best, "\n")

# 10. Визуализация результатов
lines(x_data, f_LSM(x_data, a_best), 
      col = "red", lwd = 2)

# Добавляем легенду
legend("bottomright",
       legend = c("Исходные данные", 
                  paste("МНК-аппроксимация (a =", round(a_best, 2))),
       col = c("blue", "red"),
       pch = c(19, NA),
       lty = c(NA, 1),
       lwd = 2)
grid()
