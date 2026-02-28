# Возвращает соответствующим образом отложенные и итерированные разницы.
# diff(x, lag = 1, differences = 1, …)
# x -числовой вектор или матрица, содержащие значения для разности.
# lag - целое число, указывающее, какой отставать использовать.
# differences - целое число, указывающее порядок разности.
# … - дополнительные аргументы для передачи в методы или из методов.

f <- function(x) { return(sin(x)) }

x0 <- seq(1:10)
print(x0)

x <- diff(1:10, 1)
print(x)

# x <- diff(1:10, 1, 2)
# print(x)

a = 1
b = 3
x0 <- seq(a, b, length.out = 1000)
print(x0)

x <- diff(x0)
print(x)

x0 = seq(0,pi, by=0.1) # n = 10
print(x0)
x <- diff(x0)
print(x)
# ------------------
# Returns the first or last parts of a vector, matrix, table, data frame or function. 
# Since head() and tail() are generic functions, they may also have been extended to other classes.
# tail(x, n = 6L, addrownums = TRUE, …)
# x - an object
# n - a single integer. If positive or zero, size for the resulting object: 
#   number of elements for a vector (including lists), rows for a matrix or data frame or 
#   lines for a function. If negative, all but the n last/first number of elements of x.
# addrownums - if there are no row names, create them from the row numbers.
# … - arguments to be passed to or from other methods.

x0 <- seq(0:pi, 10)
print(x0)

x0 = seq(0,pi, by=0.1) # n = 10
print(x0)

y0 <- head(x0, 3) # , … , n = 6L
print(y0)

y1 <- tail(x0, 3)
print(y1)

y2 <- head(x0, -1)
print(y2)

y3 <- tail(x0, n = 6, addrownums = TRUE) 
print(y3)

y0 = f(x0)
print(y0)
y2 <- head(y0, -1)
print(y2)