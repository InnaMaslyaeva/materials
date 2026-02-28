# 
#f = function(x) { log(x) } 
f = function(x) { x^2 } 
x = seq(-10,10, by=0.1) # rep(a, n)
#y = c(0,1,2,3,4,5,6,7,8,9,10)
y = f(x)
plot(x,y,
     main = 'Graph f(x) = log(x)',
     xlab = 'x',
     ylab = 'log',
     
     xlim = c(-5,5),
     ylim = c(0,25),
     type = 'l',
     lwd = 3,
     col = 'red',
     lty = 'dotted'
     )