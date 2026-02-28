# Метод секущих + визуализация 
# Уравнение f(x) = log(x) + x
f <- function(x) { log(x) + x }
f_derivative <- function(x) { 1/x + 1  } # Производная f'(x)

# Метод хорд (секущих)
secant_method <- function(x0, x1, tol = 1e-6, max_iter = 100) {
  iter <- 0
  while (abs(f(x1)) > tol && iter < max_iter) {
    x_new <- x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0))
    x0 <- x1
    x1 <- x_new
    iter <- iter + 1
    points(x1, f(x1), col = "red", pch = 16, cex = 1.5)
  }
  return(x1)
}

# Метод касательных (Ньютона)
newton_method <- function(x0, tol = 1e-6, max_iter = 100) {
  iter <- 0
  while (abs(f(x0)) > tol && iter < max_iter) {
    x0 <- x0 - f(x0) / f_derivative(x0)
    iter <- iter + 1
  }
  return(x0)
}

# 1 Начальные приближения
x0_secant <- 0.5   # Начальные точки для метода хорд
x1_secant <- 2.0
x0_newton <- 0.5   # Начальное приближение для метода Ньютона

# --- Визуализация ----
x_vals <- seq(0.1, 2, length.out = 100)  # X-координаты
y_vals <- f(x_vals)  # Значения функции

plot(x_vals, y_vals, type = "l", col = "blue", lwd = 2,
     xlab = "x", 
     ylab = "f(x)", 
     main = "Решение уравнения log(x) + x = 0",
     ylim = c(-0.5, 0.5), 
     xlim = c(0.55, 0.62))
abline(h = 0, col = "black", lty = 2)  # Линия y=0

# 2 Решения
root_secant <- secant_method(x0_secant, x1_secant)
#root_newton <- newton_method(x0_newton)

cat("Решение методом хорд (секущих):", root_secant, "\n")
cat("Решение методом касательных (Ньютона):", root_newton, "\n")


# Отмечаем корни
#points(root_secant, f(root_secant), col = "red", pch = 16, cex = 1.5)
#points(root_newton, f(root_newton), col = "green", pch = 16, cex = 1.5)

#legend("topright", legend = c("Метод хорд", "Метод Ньютона"), 
 #      col = c("red", "green"), pch = 16)
