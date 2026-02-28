f <- function(x) {  2^x + x  }
bisection <- function(f, a, b, tol = 1e-6, max_n = 100) {
  if (f(a) * f(b) > 0) {
    stop("Функция должна менять знак на концах интервала")
  }
  x0 <- a
  x1 <- b
  y0 <- -10 # !
  y1 <- 10  # !
  plot(NULL, xlim = c(x0, x1), ylim = c(y0, y1), 
       xlab = "x", 
       ylab = "y", 
       main = "Bisection Method with Visualization")
  
  curve(f(x), from = x0, to = x1, col = "blue", lwd = 2, add = TRUE) # График функции
  
  abline(h = 0, col = "black", lwd = 1)  # Ось X
  abline(v = 0, col = "black", lwd = 1)  # Ось Y
  grid()
  
  n <- 0 # Количество итераций
  while ((b - a) / 2 > tol && n < max_n) {
    c <- (a + b) / 2  # Середина отрезка
    
    # Визуализация текущего шага
    y0 = -8
    points(c, f(c), col = "red", pch = 19, cex = 1.5)  # Отмечаем текущую середину
    segments(a, 0, b, 0, col = "green", lwd = 2)  # Отрезок текущего интервала
    text(c, y0, labels = paste0("Iter: ", n), col = "darkred")  # Подпись номера итерации
    y0 = y0-1
    
    Sys.sleep(0.5)
    if (f(c) == 0) {
      return(c)  # Нашли точный корень
    }
    
    if (f(a) * f(c) > 0) {
      a <- c  # Корень в [c, b]
    } else {
      b <- c  # Корень в [a, c]
    }
    n <- n + 1
  }
  return((a + b) / 2)  # Возвращаем найденный корень
}

# Метод бисекции с визуализацией
root <- bisection(f, -1, 0)
print(paste("Найденный корень:", root))
