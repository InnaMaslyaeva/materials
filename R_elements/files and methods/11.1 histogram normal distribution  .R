# 4.1. normal distribution
n = 100
data = rnorm(n, 0, 10) # числа в наборе взяты нормально 
print(data)

h = hist(data, breaks=10, plot=FALSE)
hist(data, col="yellow",
     border="darkred",
     freq=FALSE,  # плотность вероятности
     breaks=10,    # число столбцов
     xlab = "Переменная",
     xlim=c(min(h$breaks)*1.1,max(h$breaks)*1.1),
     ylab = "Плотность вероятности",
     ylim=c(0,max(h$density)*1.1),
     main = "Гистограмма"
)

lines(density(data, # детализированное значение плотности вероятности
              from=min(data), to=max(data)),
      col="darkred",
      lwd = 2
)

abline(v=mean(data),
       col="red",
       lwd=2, lty="dashed"
)
abline(v=median(data),
       col="grey",
       lwd=2, lty="dashed"
)

legend(x = "topleft",
       lty = c("solid", "dashed", "dashed"),
       col = c("darkred", "red", "grey"),
       legend = c("density", "mean", "median"))
