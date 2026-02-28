# Первый замечательный предел lim sin(x) / x == 1 при x → 0
# 2.3 Данные six(x) x
x <- seq(0, 10, by = 0.1)
y1 <- sin(x)
y2 <- x

# Первый график (y=sin(x))
plot(x, y1, 
     type = "l", 
     col = "blue", 
     lwd = 2, 
     ylim = c(0,1), 
     xlim = c(0,1),
     xlab = "X", 
     ylab = "Y", 
     main = "Синус и Косинус")

# Добавление второго графика (y=x)
lines(x, y2, 
      col = "red", 
      lwd = 2)
grid()
# Легенда
legend("bottomright", 
       legend = c("y=sin(x)", "y=x"), 
       col = c("blue", "red"), lwd = 2)
