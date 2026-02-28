f <- function(x) { x^2 + x - 6 }

bisection <- function(f, a, b, tol = 1e-6, max_n = 100) {
  if (f(a) * f(b) > 0) {
    stop("Функция должна менять знак на концах интервала")
  }
  n <- 0 # n !
  while ((b - a) / 2 > tol && n < max_n) {
    c <- (a + b) / 2  # Середина отрезка
    if (f(c) == 0) {
      return(c)  # 1 Нашли точный корень
    }
    if (f(a) * f(c) > 0) {
      a <- c  # 2 Корень в интервале [c, b]
    } else {
      b <- c  # 3 Корень в интервале [a, c]
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
y1 <- 10
plot(NULL, xlim = c(x0, x1), ylim = c(y0, y1), 
     xlab = "x", 
     ylab = "y", 
     main = "Graph of f(x) = x^2 + x - 6")
curve(f(x), from = x0, to = x1, col = "blue", lwd = 2, add = TRUE)
abline(h = 0, col = "black", lwd = 1)  # Ось X
abline(v = 0, col = "black", lwd = 1)  # Ось Y
grid()
