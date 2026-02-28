

# Определение функций f1, f2, f3, f4
#f1 <- function(t) t
f1 <- function(t) t^2  # f2
# f3 <- function(t) t^3
# f4 <- function(t) t^4

# 1 Метод левых прямоугольников
l_pr <- function(x, h) {
  S <- 0
  for (i in 1:(length(x)-1)) {
    S <- S + f1(x[i])
  }
  return(S * h)
}

# 2 Метод правых прямоугольников
p_pr <- function(x, h) {
  S <- 0
  for (i in 1:(length(x)-1)) {
    S <- S + f1(x[i+1])
  }
  return(S * h)
}

# 3 Метод центральных прямоугольников
c_pr <- function(x, h) {
  S <- 0
  for (i in 1:(length(x)-1)) {
    S <- S + f1(x[i] + h/2)
  }
  return(S * h)
}

# 4 Метод трапеций
trap <- function(x, h) {
  S <- 0
  for (i in 1:(length(x)-1)) {
    S <- S + (f1(x[i]) + f1(x[i+1])) / 2
  }
  return(S * h)
}

# 5 Формула Симпсона
simp <- function(x, h) {
  n <- length(x) - 1
  S <- f1(x[1]) + f1(x[n+1])
  for (i in 1:(n/2)) {
    S <- S + 4 * f1(x[2*i])
  }
  for (i in 1:(n/2 - 1)) {
    S <- S + 2 * f1(x[2*i + 1])
  }
  return(S * h / 3)
}

# 5.2 Формула Симпсона
simp2 <- function(x, h) {
  n <- length(x) - 1
  S <- 0
  # S <- f1(x[1]) + f1(x[n+1])
  # for (i in 1:(n/2)) {
  #   S <- S + 4 * f1(x[2*i])
  # }
  # for (i in 1:(n/2 - 1)) {
  #   S <- S + 2 * f1(x[2*i + 1])
  # }
  for (i in 1:(n-1)) {
    S <- S + ( f1(x[i]) + 4 * f1(x[i] + h/2) + f1(x[i+1]) )
  }
  return(S * h / 6)
}

# Основная часть программы
n <- 1000  # !!!!
h <- 1 / n
x <- seq(0, 1, h)
print(h)
print(x)
e = 1/3    # !!!!

# функция - вычисление интегралов и ошибок для f1(t) = t^2
# 1 Метод центральных прямоугольников
res_c_pr <- c_pr(x, h)
err_c_pr <- abs((res_c_pr - e) / (e))
cat("Метод центральных прямоугольников (f1):\n")
cat("res =", res_c_pr, "err =", err_c_pr, "\n\n")

# 2 Метод трапеций
res_trap <- trap(x, h)
err_trap <- abs((res_trap - e) / (e))
cat("Метод трапеций (f1):\n")
cat("res =", res_trap, "err =", err_trap, "\n\n")

# 3 Метод левых прямоугольников
res_l_pr <- l_pr(x, h)
err_l_pr <- abs((res_l_pr - e) / (e))
cat("Метод левых прямоугольников (f1):\n")
cat("res =", res_l_pr, "err =", err_l_pr, "\n\n")

# 4 Метод правых прямоугольников
res_p_pr <- p_pr(x, h)
err_p_pr <- abs((res_p_pr - e) / (e))
cat("Метод правых прямоугольников (f1):\n")
cat("res =", res_p_pr, "err =", err_p_pr, "\n\n")

# 5 Формула Симпсона v1
res_simp <- simp(x, h)
err_simp <- abs((res_simp - e) / (e))
cat("Формула Симпсона (f1):\n")
cat("res =", res_simp, "err =", err_simp, "\n\n")

# 5 Формула Симпсона v2
res_simp2 <- simp2(x, h)
err_simp2 <- abs((res_simp2 - e) / (e))
cat("Формула Симпсона (f1):\n")
cat("res =", res_simp2, "err =", err_simp2, "\n\n")

