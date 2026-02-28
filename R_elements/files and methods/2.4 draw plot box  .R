# plotting graph 3

x3 = rep(2, 10)
y3 = seq(-3, 3, length.out=10)
plot(x3, y3,
      type="l", 
      col="blue", 
      lty="dashed")

grid()   # добавляет сетку для удобства.

legend(x = "bottom",
      lty = c("solid", "dotted", "dashed"),
      col = c("red", "green", "blue"),
      legend = c("parabola", "circle", "segment"))
