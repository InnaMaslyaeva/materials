
n = 109
data = runif(n, 0, 10) # числа в наборе взяты равномерно (особенность runif())
print(data)

h = hist(data, breaks=10, plot=FALSE) # коробочка под график 
hist(data, col="lightblue", 
     border="darkblue",
     freq=FALSE,  # плотность вероятности 
     breaks=20,    # число столбцов
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
