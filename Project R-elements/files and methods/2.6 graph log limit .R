# plotting graph 3 2.1
# Нарисовать график функции y1=log(x1) на промежутке [1,256] по 50 точкам.

x1= seq(1, 256, by=1)
print(x1)
y1=log(x1)
print(y1)

plot(x1, y1,
     type="p", 
     col="blue", 
     xlim=c(1, 10),
     lwd=2,
)
plot(x1, y1,
     type="p", 
     col="blue", 
     lwd=2,
)

grid()   # сетка
legend(x = "bottomright",
       lty = c("dotted"),
       col = c("blue"),
       legend = c("log"))