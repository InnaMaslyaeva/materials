n = 1000
data = runif(n, 0, 10) # числа в наборе взяты равномерно (особенность runif())
print(data)

# hist(data)

hist(data, col="lightblue",
     border="darkblue",
     #freq=FALSE,  # плотность вероятности
     breaks=50,    # число столбцов
     xlab="Переменная",
     ylab="Плотность вероятности",
     main="Гистограмма"
     )

lines(density(data, # детализированное значение плотности вероятности
      from=min(data), to=max(data)
      ),
      col="darkred",
      lwd = 2
      )

abline(v=mean(data),
       col="red",
       lwd=2, lty="dashed"
       )

