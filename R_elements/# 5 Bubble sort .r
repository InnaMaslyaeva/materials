# Сортировка пузырьком
a <- c(3, 1, 4, 1, 5)              # Пример массива
#a <- c(5, 7, -1, 9, 123, -436, -8)
{
for (i1 in 1:length(a)) {
  #cat("i1 =", i1 - 1, "\n")
  
  for (i2 in 1:(length(a) - 1)) {
    #cat(a[i2], a[i2 + 1], "\n")
    
    if (a[i2] > a[i2 + 1]) {      
      t <- a[i2]
      a[i2] <- a[i2 + 1]
      a[i2 + 1] <- t
    }    
    #cat(a[i2], a[i2 + 1], "\n")
  }  
  cat("a =", a, "\n")
}
cat("sorted a =", a, "\n")
}
