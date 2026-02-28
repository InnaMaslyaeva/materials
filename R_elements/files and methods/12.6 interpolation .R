# 5.1 Interpolation

x = c(1, 3, 5, 7, 10)
y = c(3, 2, 4, 1, 2)
x_new = seq(min(x), max(x), by=0.1)
lin_interp = approx(x, y, xout=x_new); lin_interp
# 2 Рисуем точечный график y(x)
plot(x, y,
     pch = 19,
     col = "blue",
     xlab = "Ось X",
     ylab = "Ось Y",
     main = "Точечный график y(x)")
spline_interp = spline(x, y, xout = x_new)
lines(spline_interp$x, spline_interp$y, col = "red", lwd = 2)
spline_interp

# # 1 Создаем произвольные массивы из 5 целых чисел
# set.seed(123) # Для воспроизводимости результатов
# x = sample(1:20, 5, replace = FALSE) # Без повторений
# y = sample(1:10, 5, replace = TRUE)  # Можно с повторами 1:10!
# 
# # Выводим созданные массивы
# cat("x:", x, "\n")
# cat("y:", y, "\n")
# 
# # Устанавливаем параметры графики перед созданием графика
# par(mar = c(4, 4, 2, 1))  # Уменьшаем поля графика (низ, лево, верх, право)
# 
# # 2 Рисуем точечный график y(x)
# plot(x, y, 
#      pch = 19, 
#      col = "blue",
#      xlab = "Ось X", 
#      ylab = "Ось Y",
#      main = "Точечный график y(x)")
# 
# # 3 Создаем массив x_new
# x_new = seq(from = min(x), to = max(x), by = 0.1)
# 
# # 4 Линейная интерполяция
# linear_interp = approx(x, y, xout = x_new)
# lines(linear_interp$x, linear_interp$y, col = "blue", lwd = 2)
# 
# # 5 Интерполяция сплайном
# spline_interp = spline(x, y, xout = x_new)
# lines(spline_interp$x, spline_interp$y, col = "red", lwd = 2)
# 
# # # 6 Настраиваем рисунок для лучшей читаемости
# # legend("topright", 
# #        legend = c("Исходные точки", "Линейная интерполяция", "Сплайн-интерполяция"),
# #        col = c("black", "blue", "red"), 
# #        pch = c(19, NA, NA), 
# #        lty = c(NA, 1, 1), 
# #        lwd = 2,
# #        cex = 0.8)
# grid() # Добавляем сетку для лучшей читаемости
