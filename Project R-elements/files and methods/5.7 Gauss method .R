# Gauss method for solving a system of linear equations
gaussian_elimination = function(A, b) {
  n = nrow(A) 
  Ab = cbind(A, b)
  n1=n-1
  for (i in 1:n1) {
    Ab[i, ] = Ab[i, ] / Ab[i, i]
    
    for (j in (i + 1):n) {
      if (j <= n) {
        Ab[j, ] = Ab[j, ] - Ab[j, i] * Ab[i, ]
      }
    }
    print(i)
    print(Ab)
  }
  x = numeric(n)  
  for (i in n:1) {
    if (i == n) {
      x[i] = Ab[i, n + 1] / Ab[i, i]  
    } else {
      x[i] = (Ab[i, n + 1] - sum(Ab[i, (i + 1):n] * x[(i + 1):n])) / Ab[i, i]
    }
    print(x[i])
  }
  return(x)
}

A = matrix(c(3, 2, -5, # matrix
              2, -1, 3,
              1, 2, -1), 
            nrow = 3, 
            byrow = TRUE)
b = c(-1, 13, 9)
result = gaussian_elimination(A, b)
cat("Decision:")
print(result)
