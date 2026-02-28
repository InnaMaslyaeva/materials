# 2.5 Графически найти все значения параметра , при которых система
# x*(y+3*x) = abs(x)
# y=x+a
# имеет ровно 4 решения.

# Подключение библиотеки для графиков
library(ggplot2)

# Функции
#f1 <- function(x, y) {x * (y + 3 * x) - (abs(x))^3 } # Уравнение 1
f1 <- function(x, y) { (abs(x))^3/x - 3*x } # Уравнение 1
f2 <- function(x, a) {x + a } # Уравнение 2 (прямая)

# Создание сетки значений
x <- seq(-10, 10, length.out = 60)  # x в диапазоне
y <- seq(-10, 10, length.out = 60)
y1 = f1(x, y)  # x в диапазоне
a <- seq(-4, 4, by=2)  # Разные значения a

# График
plot(x, f1(x,y), xlim = c(-10, 10), ylim = c(-10, 10), 
     xlab = "x", 
     ylab = "y", 
     main = "1.5",
     col = "grey",
     lwd = 2,
     type = 'l')
abline(h = 0, col = "black", lwd = 1)  # Ось X
abline(v = 0, col = "black", lwd = 1)  # Ось Y

# Добавляем линии y = x + a для разных a
for (a in a) {
  abline(a, 1, col = "red", lwd = 1.5, lty = 2)
}

legend(x="bottomright", 
       lty = c(1, 2),
       col = c("grey", "red"),
       legend = c("f1", "y = x + a"))
