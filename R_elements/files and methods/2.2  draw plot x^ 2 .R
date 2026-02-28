# 2.2 plotting graph o
# 1
x1 <- seq(-5, 8, by=0.1) # создаёт последовательность значений xx от -10 до 10 с шагом 0.1.

y1 <- x1^2                  # вычисляет значения функции y=x2y=x2.

plot(x1, y1,                    # строит график с:
     type="l",                # соединяет точки линией.
     col="red",              # задаёт цвет линии.
     lwd=2,                   # увеличивает толщину линии.
     xlim=c(-4,4),
     ylim=c(0,8),
     main="График функции y = x^2",  # заголовки.
     xlab="x", 
     ylab="y")

grid()   # добавляет сетку для удобства.
# grid(nx = length(x), ny = NULL, col = "gray", lty = "dotted")
# grid(ny = length(y), nx = NULL, col = "gray", lty = "solid")
 
# # 2
# plot(1:10, type="l", lwd=2, lty=c(5,2))  # 5 пикселей линия, 2 пикселя пробел
# 
# # 3
# plot(1:5, type="l", lwd=2, lty="dashed", col="blue")  # Штриховая линия
# 
