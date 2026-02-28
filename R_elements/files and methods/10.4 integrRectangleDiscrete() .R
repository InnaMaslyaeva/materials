# 5.1 
f <- function(x) { return(sin(x)) }

integrRectangle <- function(f, a, b, n) {
  dx <- (b - a) / n
  res <- 0
  for (i in 1:n) {
    l <- a + dx * (i - 1)
    r <- l + dx
    res <- res + f((l + r) / 2) * dx
  }
  return(res)
}

integrRectangleDiscrete <- function(x, y) {
  if (length(x) != length(y)) {
    return("Ошибка: массивы разной длины")
  }
  integral <- sum(diff(x) * head(y, -1))
  return(integral)
}

a <- 0
b <- pi
n <- 1000

integrNum <- integrRectangle(f, a, b, n) # 1
print(integrNum)

x <- seq(a, b, length.out = n)
y <- f(x)
integrd <- integrRectangleDiscrete(x, y) # 2
print(integrd)
# n = 10 1.979651
# n = 100 1.999832
# n = 1000 1.999998

integrAn <- 2
erRectangle <- (abs(integrNum - integrd) / integrd) * 100
print(erRectangle)
# n = 10 1.444578
# n = 100 0.01250531
# n = 1000 0.0001235349


# Create a graph of the function
x_vals <- seq(a, b, length.out = 1000)
y_vals <- f(x_vals)
plot(x = x_vals, y = y_vals, type = "l", col = "black", lwd = 2, main = "Graph of sin(x) over [0, pi]",
    xlab = "x", ylab = "y")  # График функции

library(ggplot2)
ggplot(data.frame(x = x_vals, y = y_vals), aes(x, y)) +
   geom_line(color = "blue", size = 1) +
   labs(title = "Graph of sin(x) over [0, pi]", x = "x", y = "sin(x)") +
   theme_minimal()