
# Исходная функция
f = function(x) { return(sin(x)) }

# Модифицированная функция интегрирования с сохранением данных прямоугольников
integrRectangle = function(f, a, b, n) {
  dx = (b - a) / n
  res = 0
  rectangles = data.frame(left=numeric(n), right=numeric(n), height=numeric(n))
  
  for (i in 1:n) {
    l = a + dx * (i - 1)   # левая граница прямоугольника
    r = l + dx             # правая граница
    h = f((l + r) / 2)     # высота в средней точке
    res = res + dx * h
    
    # Сохраняем параметры прямоугольника
    rectangles[i,] = c(l, r, h)
  }
  
  return(list(integral=res, rectangles=rectangles))
}

# Параметры интегрирования
a = 0
b = pi
n = 10  # Уменьшено для наглядности визуализации

# Вычисляем интеграл и получаем данные прямоугольников
result = integrRectangle(f, a, b, n)
integrNum = result$integral
rects = result$rectangles

# Создаем основу графика
x = seq(a, b, length.out=n) # 500
y = f(x)

plot(x, y, type="l", 
     lwd=3, 
     col="darkblue",
     main=paste("Метод прямоугольников (n =", n, ")\nИнтеграл ≈", round(integrNum, 4),
                " (точное значение = 2)"),
     xlab="x", ylab="sin(x)", 
     ylim=c(0, 1.1)
     )

# Рисуем прямоугольники
rect(rects$left, 0, rects$right, rects$height,
     col=rgb(0.7, 0.9, 1, alpha=0.04),
     #col="lightgrey", 
     
     border="black"
     )

# Добавляем точки средних значений
midpoints = (rects$left + rects$right)/2
points(midpoints, rects$height, pch=n, col="red") # 20

# # Легенда
# legend("topright", 
#        legend=c("sin(x)", "Прямоугольники", "Средние точки"),
#        col=c("darkblue", "lightgrey", "red"),
#        lty=c(1, NA, NA), lwd=c(2, NA, NA),
#        pch=c(NA, 15, 20), pt.cex=c(NA, 2, 1),
#        bg="white")