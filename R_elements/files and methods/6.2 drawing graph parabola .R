#  2.1 "standart_parabola", "new_parabola"

standart_parabola = function(x) { x^2 } 
new_parabola = function(x) { (x -2)^2 - 3 } 
x1 = seq(-5,5, by=0.2) 
y1 = standart_parabola(x1)
plot(x1,y1,
     main = '1.2',
     xlab = 'x',
     ylab = 'y',
     xlim = c(-6,9),
     ylim = c(-4,10),
     type = 'l',
     lwd = 2,
     col = 'red',
     lty = 'dotted')

x2 = seq(-5,7, by=0.1) 
y2 = new_parabola(x2)
lines(x2, y2, type="l", col="blue", lty="solid")

#abline(h,0)
legend(x = "bottomleft", 
       lty = c("dotted", "solid"),
       col = c("red",  "blue"),
       legend = c("standart_parabola", "new_parabola"))