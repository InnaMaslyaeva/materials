# plotting graph 3 2.1

x1= seq(1, 256, by=5)
#print(x1)
y1=log(x1)
#print(y1)

plot(x1, y1,
      type="p", 
      col="blue", 
      xlim=c(0, 10),
      lwd=2,
     )

grid()   # добавляет сетку для удобства.

legend(x = "bottom",
      lty = c("dotted"),
      col = c("blue"),
      legend = c("log"))

