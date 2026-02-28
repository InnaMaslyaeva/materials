# 2 Функция вычисления интеграла методом прямоугольников
integrRectangle <- function(f, a, b, n) {
  dx <- (b - a) / n
  res <- 0
  rectangles <- data.frame(x_left = numeric(n), x_right = numeric(n), y = numeric(n))
  
  for (i in 1:n) {
    l <- a + dx * (i - 1)
    r <- l + dx
    y <- f((l + r) / 2)
    res <- res + dx * y
    
    # Сохраняем данные прямоугольников для визуализации
    rectangles[i, ] <- c(l, r, y)
  }
  
  return(list(integral = res, rectangles = rectangles))
}

# 1 Параметры нтегрирования
f <- function(x) sin(x)
a <- 0
b <- pi
n <- 20  # Уменьшено для наглядности визуализации
# Точное значение интеграла
exact <- 2

# 3 Вычисление интеграла
result <- integrRectangle(f, a, b, n)
integrNum <- result$integral
rectangles <- result$rectangles

# 4 Создаем основу графика
x_vals <- seq(a, b, length.out = 1000)
y_vals <- f(x_vals)

plot(x = x_vals, y = y_vals, type = "l", 
     col = "darkblue", 
     lwd = 3, 
     main = paste("Интегрирование sin(x) на [0, π]\nЧисленный результат:", 
                  round(integrNum, 5), 
                  " (ошибка:", round(abs(integrNum - exact)/exact*100, 2), "%)"),
     xlab = "x", ylab = "sin(x)", 
     ylim = c(0, 1.1))

# 5 Добавляем прямоугольники
rect(xleft = rectangles$x_left, ybottom = 0, 
     xright = rectangles$x_right, ytop = rectangles$y,
     col = rgb(0.7, 0.9, 1, alpha = 0.5), 
     border = "blue")  # NA

# 6 Добавляем площадь под кривой
polygon(c(x_vals, rev(x_vals)), 
        c(y_vals, rep(0, length(y_vals))),
        col = rgb(0.5, 0.8, 1, alpha = 0.3), 
        border = "blue")  # NA

# 7 Добавляем легенду
legend("topright", 
       legend = c("sin(x)", "Прямоугольники", "Площадь под кривой"),
       fill = c(NA, rgb(0.7, 0.9, 1, 0.5), rgb(0.5, 0.8, 1, 0.3)),
       border = c(NA, NA, NA), 
       lty = c(1, NA, NA),
       col = c("blue", NA, NA), 
       lwd = c(3, NA, NA))
