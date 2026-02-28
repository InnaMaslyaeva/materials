# 4 
f = function(x) { x^2 } 
x = seq(-3,3, by=0.1) # rep(a, n)
y = f(x)
plot(x,y,
     main = 'Graph f(x) = log(x)',
     xlab = 'x',
     ylab = 'log',
     xlim = c(-3,3),
     ylim = c(-1,3),
     type = 'l',
     lwd = 3,
     col = 'red',
     lty = 'solid' )

#строим параметрически заданную окружность
t = seq(0, 2*pi, by=0.5)
x2 = cos(t)
y2 = sin(t)
points(x2, y2, col="green")
# 
#строим отрезок (заметим, что у всех точек х=2, а у пробегает от -3 до 3)
x3 = rep(2, 10)
y3 = seq(-3, 3, length.out=10)
lines(x3, y3, type="l", col="blue", lty="dashed")

#
legend(x = "bottomleft",
       lty = c("solid", "dotted", "dashed"),
       col = c("red", "green", "blue"),
       legend = c("parabola", "circle", "segment"))