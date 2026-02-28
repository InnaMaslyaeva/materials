# sin
f = function(x) { sin(x)}

x = seq(0, 10, by=0.1)
y = f(x)
plot(x,y,
     main = 'Graph f(x) = sin(x)',
     xlab = 'x',
     ylab = 'y',
     
     xlim = c(0,10),
     ylim = c(-1,1),
     type = 'l',
     lwd = 3,
     col = 'green',
     lty = 'solid'
     )
grid()
