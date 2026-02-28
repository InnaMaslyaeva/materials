# 2025.02.16 matrix
# a = matrix_data <- matrix(
#   c(1, 2, 3, 4, 5, 6),  # Элементы массива
#   nrow = 2,             # Количество строк
#   ncol = 3,             # Количество столбцов
#   byrow = TRUE          # Заполнение по строкам
# )

# getrecursion=function(n){
#   a = rep(0, n+1)
#   print(a)
#   for(i in 2:n){
#     if(i==1){
#       a[i]=1
#     }
#     else{
#       a[i]=2*a[i-1]+i+3
#     }
#   }
#   return(a[19])
# }
# getrecursion=function(n){
#   if(n==1){
#     return(1)
#   }
#   else{
#     return(2*getrecursion(n-1)+n+3)
#   }
# }
n=10
a0=  rep(0, n+1)
print(a0)

# a= matrix_data <- matrix(
#     c(1,2,3,4,5,6,7,8,9),  # Элементы массива
#     nrow = 3,             # Количество строк
#     ncol = 3,             # Количество столбцов
#     byrow = TRUE          # Заполнение по строкам
#   )
# print(matrix_data)
# print(dim(matrix_data))
# nnrows= nrow(a)
# cat('количество рядов=', nnrows, '\n')
# nncols= ncol(a)
# cat('количество колонок=', nncols, '\n')

# 10.3 1) Создать матрицу размера 3(строки)x4(столбца), состоящую из 
# квадратов чисел от 1 до 12. Вывести матрицу на экран.
# 2) Заменить 2 строку матрицы на нули. Вывести новую матрицу на экран.
# 3) Заменить 2 столбец на единицы. Вывести новую матрицу на экран.

# d = c(seq(1, 12, by=1))
# cat('sequence =', d, '\n')

# # 1
# squares <- (1:12)^2
# mat <- matrix(squares, nrow = 3, ncol = 4, byrow = TRUE)
# cat("Матрица квадратов чисел от 1 до 12:\n")
# print(mat)

# # 2
# mat[2, ] <- 0
# cat("Матрица после замены второй строки на нули:\n")
# print(mat)

# # 3
# mat[, 2] <- 1
# cat("Матрица после замены второго столбца на единицы:\n")
# print(mat)

