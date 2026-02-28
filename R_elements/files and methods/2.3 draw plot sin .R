# plotting graph 3

t = seq(0, 2*pi, by=0.5)
x2 = cos(t)
y2 = sin(t)

plot(t, y2,
       col="green",
       lwd=2,      
       main="График функции ",  
       xlab="x", 
       ylab="y")

grid()   # добавляет сетку для удобства.


