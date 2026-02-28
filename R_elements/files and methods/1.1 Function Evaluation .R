# 2025.02.15 Function Evaluation 

## Определяем функцию, например, квадратичную
#my_function <- function(x) {
#  return(x^2 + 2*x + 1)
#}
# Функция вычисления переданной функции на заданном значении
#compute_function <- function(f, x) {
#  return() 
#}
#x_value <- 3
#result <- compute_function(my_function, x_value)
#cat("Значение функции в точке", x_value, "равно", result, "\n")

compute_function <- function(x) {
   result=x+5
   return(result) 
}
x <- 3
result= compute_function(x) + 10
print(result)

