# 3 circle
f = function(x) { sin(x)}
f1 = function(x) { cos(x)}

t = seq(0,2*pi, by=0.1)
x1 = f(t)
y1 = f1(t)
plot(x1,y1,
     main = 'Graph f(x) = sin(x)',
     xlab = 'x',
     ylab = 'log',
     
     xlim = c(-2,2),
     ylim = c(-2,2),
     type = 'l',
     lwd = 3,
     col = 'green',
     lty = 'solid'
     )
abline(h = 0, col = "black", lwd = 1)  # Ось X
abline(v = 0, col = "black", lwd = 1)
grid()
