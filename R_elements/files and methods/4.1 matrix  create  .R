# matrix 1

determ= function(a){
  print(a)
  print(dim(a))
  nnrows= nrow(a)
  cat('количество рядов=', nnrows, '\n')
  nncols= ncol(a)
  cat('количество колонок=', nncols, '\n')
  cat("matrix: \n")
  for (i in (1:nnrows)) {
  cat('i=', i , a[i, ], '\n') #a[i, ])
   }
  return(a) 
}
# создание матрицы
# n=10
# m=3
# a0=  rep(0, (n+1)*(m+1))

a0= matrix(
    c(1,2,3,4,5,6,7,8,9),  # Элементы массива
    nrow = 3,             # Количество строк
    ncol = 3,             # Количество столбцов
    byrow = TRUE          # Заполнение по строкам
  )
#print(a0)
#r= determinant.matrix(a0)
r= determ(a0)
print(r)


# cat("matrix: \n")
# nnrows= nrow(a)
# for (i in (1:nnrows)) {
#   cat('i=', i , a0[i, ], '\n') #a[i, ])
# }