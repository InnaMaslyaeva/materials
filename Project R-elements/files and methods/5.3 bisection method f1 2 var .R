f <- function(x) { x^2 + x - 6 }

bisection <- function(f, a, b, tol = 1e-6, max_n = 100) {
  if ((a^2 + a - 6) * (b^2 + b - 6) > 0) {
    stop("Функция должна менять знак на концах интервала")
  }
  n <- 0 # n итерации
  # && n < max_n
  while ((b - a) / 2 > tol ) {
    c <- (a + b) / 2  # 1 Середина отрезка
    if ((c^2 + c - 6) == 0) {
      return(c)  # 2? Нашли точный корень
    }
    
    if ((a^2 + a - 6) * (c^2 + c - 6) > 0) {
      a <- c  # 3 Корень в интервале [c, b]
    } else {
      b <- c  # 4 Корень в интервале [a, c]
    }
    n <- n + 1
  }
  return((a + b) / 2)  # Возвращаем среднюю точку
}

# 1 task: Ищем корень на отрезке [0,3]
x0 = 0
x1 = 3
y = bisection(f, x0, x1)
print(paste("Найденный корень:", y)) # " 2.00000023841858"

# 2 Строим график
x0 <- -1
x1 <- 4
y0 <- -10
y1 = 10

x = seq(x0, x1, by=0.5)
y = x^2 + x - 6
plot(x, y, xlim = c(x0, x1), ylim = c(-10, 10), 
     xlab = "x", 
     ylab = "y", 
     type = "l",
     main = "Graph of f(x) = x^2 + x - 6")
abline(h = 0, col = "black", lwd = 1)  # Ось X
abline(v = 0, col = "black", lwd = 1)  # Ось Y
grid()

