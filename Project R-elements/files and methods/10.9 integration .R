# 5.1 Функция вычисления интеграла методом прямоугольников для дискретных данных
integrRectangleDiscrete <- function(x, y) {
  if (length(x) != length(y)) {
    return("Ошибка: массивы разной длины")
  }
  n <- length(x)
  integral <- sum(diff(x) * head(y, -1))
  return(integral)
}

# 5.2 Функция вычисления интеграла методом трапеций для дискретных данных
integrTrapezoidalDiscrete <- function(x, y) {
  if (length(x) != length(y)) {
    return("Ошибка: массивы разной длины")
  }
  integral <- sum(diff(x) * (head(y, -1) + tail(y, -1)) / 2)
  return(integral)
}

# 5.3 Функция интегрирования методом прямоугольников
integrRectangle <- function(f, a, b, n) {
  x <- seq(a, b, length.out = n + 1)
  dx <- diff(x)
  integral <- sum(dx * f(head(x, -1)))
  return(integral)
}

# 5.4 Функция интегрирования методом трапеций
integrTrapezoidal <- function(f, a, b, n) {
  x <- seq(a, b, length.out = n + 1)
  y <- f(x)
  integral <- sum(diff(x) * (head(y, -1) + tail(y, -1)) / 2)
  return(integral)
}
# 5 
# Функция вычисления относительной ошибки
error <- function(numeric, analytic) {
  return(abs((numeric - analytic) / analytic) * 100)
}

# 5.5 Визуализация ошибки интегрирования
library(ggplot2)
plotError <- function(f, F, a, b, n_values, method) {
  analytic_value <- F(b) - F(a)
  errors <- sapply(n_values, function(n) {
    numeric_value <- if (method == "rectangle") {
      integrRectangle(f, a, b, n)
    } else {
      integrTrapezoidal(f, a, b, n)
    }
    error(numeric_value, analytic_value)
  })
  df <- data.frame(n = n_values, error = errors)
  ggplot(df, aes(x = log10(n), y = log10(error))) +
    geom_line() +
    geom_point() +
    labs(title = paste("Ошибка метода", method), x = "log10(n)", y = "log10(Ошибка)")
}

# Построение графиков для заданных функций
n_values <- seq(10, 1000, by = 10)
plotError(function(x) exp(x), function(x) exp(x), 5, 10, n_values, "rectangle")
# plotError(function(x) exp(x), function(x) exp(x), 5, 10, n_values, "trapezoidal")
# plotError(function(x) sin(x), function(x) -cos(x), 0, 3 * pi, n_values, "rectangle")
# plotError(function(x) sin(x), function(x) -cos(x), 0, 3 * pi, n_values, "trapezoidal")
# plotError(function(x) sin(99 * x), function(x) -cos(99 * x) / 99, 0, pi, n_values, "rectangle")
# plotError(function(x) sin(99 * x), function(x) -cos(99 * x) / 99, 0, pi, n_values, "trapezoidal")
# plotError(function(x) x^2, function(x) x^3 / 3, 0, 10, n_values, "rectangle")
# plotError(function(x) x^2, function(x) x^3 / 3, 0, 10, n_values, "trapezoidal")