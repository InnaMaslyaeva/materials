# 5.3
f <- function(x) { return(x^2) }

integrRectangle <- function(f, a, b, n) {
  dx <- (b - a) / n
  res <- 0
  for (i in 1:n) {
    l <- a + dx * (i - 1)
    r <- l + dx
    res <- res + f((l + r) / 2) * dx  }
  return(res) }

# 5.3 Функция интегрирования методом прямоугольников
integrRectangle <- function(f, a, b, n) {
  x <- seq(a, b, length.out = n + 1)
  dx <- diff(x)
  integral <- sum(dx * f(head(x, -1)))
  return(integral) }

a <- 0
b <- pi
n <- 100

integrNum <- integrRectangle(f, a, b, n)
print(integrNum)

integrAn <- 2
erRectangle <- abs((integrNum - integrAn) / integrAn) * 100
print(erRectangle)

# Create a graph of the function
x_vals <- seq(a, b, length.out = 1000)
y_vals <- f(x_vals)
plot(x = x_vals, y = y_vals,
    type = "l",
    col = "black",
    lwd = 2, main = "Graph of sin(x) over [0, pi]",
    xlab = "x", ylab = "y")  # График функции

library(ggplot2)
ggplot(data.frame(x = x_vals, y = y_vals), aes(x, y)) +
  geom_line(color = "blue", size = 1) +
  labs(title = "Graph of sin(x) over [0, pi]", x = "x", y = "sin(x)") +
  theme_minimal()