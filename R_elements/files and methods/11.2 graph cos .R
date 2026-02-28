# 4.2 Grapf of y=cos(x) over [-2pi,2pi]

# Задаем функцию
f <- function(x) { cos(x)  # Пример функции, можно заменить на любую другую
}

# Создаем отрезок и точки для графиков
x <- seq(-2*pi, 2*pi, length.out = 100)  # Общий отрезок [-2*pi, 2π]

# Создаем разные наборы точек
x1 <- x
x2 <- seq(-2*pi, 2*pi, length.out = 50)
x3 <- seq(-2*pi, 2*pi, length.out = 20)
x4 <- seq(-2*pi, 2*pi, length.out = 10)

# Создаем график
plot(x1, f(x1), 
     type = "l",
     lwd = 2, 
     col = "black",
     ylim = c(-1.1, 1.6), 
     xlab = "x", ylab = "f(x)",
     main = "График функции с разными точками")

# Добавляем остальные графики
points(x2, f(x2), col = "red", pch = 19, cex = 2)  # cex = 2 соответствует ширине 4
points(x3, f(x3), col = "purple", pch = 19, cex = 3.5)  # cex = 3.5 ~ ширине 7
points(x4, f(x4), col = "blue", pch = 19, cex = 5)  # cex = 5 ~ ширине 10

# Добавляем легенду
legend("topright", 
       legend = c("100 точек (линия)", "50 точек", "20 точек", "10 точек"),
       col = c("black", "red", "purple", "blue"),
       lty = c(1, NA, NA, NA), 
       pch = c(NA, 19, 19, 19),
       pt.cex = c(1, 2, 3.5, 5),
       lwd = c(2, NA, NA, NA))
