# 4.3 Создать 3 функции, численно вычисляющие массив производных по массиву 
# значений функции с заданным шагом:
#  1) по правосторонней схеме dydxRight(y, h);
# 2) по левосторонней схеме dydxLeft(y, h);
# 3) по центральной схеме dydxCentral(y, h).
# После создать 3 массива относительных ошибок errRight, errLeft, errCentral 
# для функции  на отрезке  с шагом . Построить графики зависимости 
# относительных ошибок от точки вычисления производной на одном рисунке.

# Исходная функция
f <- function(x) { return(sin(x))  # Можно заменить на другую функцию
}

# Аналитическая производная
df_exact <- function(x) { return(cos(x))  # Производная sin(x) — это cos(x)
}

# Численные методы вычисления производной
dydxRight <- function(y, h) {
  n <- length(y)
  res <- numeric(n)
  for (i in 1:(n-1)) {
    res[i] <- (y[i+1] - y[i]) / h
  }
  res[n] <- NA  # Последняя точка не вычисляется
  return(res)
}

dydxLeft <- function(y, h) {
  n <- length(y)
  res <- numeric(n)
  res[1] <- NA  # Первая точка не вычисляется
  for (i in 2:n) {
    res[i] <- (y[i] - y[i-1]) / h
  }
  return(res)
}

dydxCentral <- function(y, h) {
  n <- length(y)
  res <- numeric(n)
  res[1] <- NA  # Первая точка не вычисляется
  res[n] <- NA  # Последняя точка не вычисляется
  for (i in 2:(n-1)) {
    res[i] <- (y[i+1] - y[i-1]) / (2 * h)
  }
  return(res)
}

# Задаем параметры
h <- 0.1
x <- seq(0, pi, by = h)  # Отрезок от 0 до pi
yf <- f(x)               # Вычисляем значения функции
df_exact_values <- df_exact(x)  # Вычисляем точные значения производной

# Численные производные
dy_right <- dydxRight(yf, h)
dy_left <- dydxLeft(yf, h)
dy_central <- dydxCentral(yf, h)

# Относительные ошибки
errRight <- abs((dy_right - df_exact_values) / df_exact_values) * 100
errLeft <- abs((dy_left - df_exact_values) / df_exact_values) * 100
errCentral <- abs((dy_central - df_exact_values) / df_exact_values) * 100

# Построение графика
plot(x, errRight, type = "l", col = "red", lwd = 2, ylim = c(0, max(errRight, errLeft, errCentral, na.rm = TRUE)),
     main = "Относительная ошибка численных производных", xlab = "x", ylab = "Ошибка (%)")
lines(x, errLeft, col = "blue", lwd = 2)
lines(x, errCentral, col = "green", lwd = 2)

# Легенда
legend("topleft", legend = c("Правосторонняя", "Левосторонняя", "Центральная"), 
       col = c("red", "blue", "green"), lwd = 2)

