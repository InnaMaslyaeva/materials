# dichotomy_method
# Итеративно делит интервал пополам, пока не достигнет заданной точности

# Определяем уравнение y = log(x) + x - C (ищем корень при y = 0)
f = function(x) log(x) + x - 0  # Решаем log(x) + x = 0

dichotomy_method <- function(f, a, b, tol = 1e-6, max_iter = 100) {
  if (f(a) * f(b) > 0) {
    stop("На данном интервале [a, b] нет корня или их четное количество.")
  }
  
  iter <- 0
  while ((b - a) / 2 > tol && iter < max_iter) {
    c = (a + b) / 2  # Средняя точка!!!
    if (f(c) == 0) {
      return(c)  # Если нашли точный корень
    } else if (f(a) * f(c) < 0) {
      b = c  # Корень в левом подотрезке
    } else {
      a = c  # Корень в правом подотрезке
    }
    iter = iter + 1
  }
  return((a + b) / 2)  
}

# Указываем начальный интервал [a, b]
a = 0.1  # log(x) определен только при x > 0
b = 2

root = dichotomy_method(f, a, b)
cat("Приближенное решение уравнения:", root, "\n")
