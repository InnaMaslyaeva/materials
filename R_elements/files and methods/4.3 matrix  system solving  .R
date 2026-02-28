# matrix 2
determ= function(a,b){
  print(1)
  print(a)
  #print(b)
  nnrows= nrow(a) # Количество строк
  nncols= ncol(a)
  # 1 step - 1st row is divided by a[1,1]
  print(2)
  cnt=1
  for (i in (cnt:cnt)) {
    for (j in (1:nncols)) {
      a[i,j]= a[i,j]/a[cnt,cnt]
    }}
  print( a)
  
  # 2 step - +2d & others lines
  print(3)
  cnt=2
  for (i in (cnt:nnrows)) {
    for (j in (1:nncols)) {
      a[i,j]= a[1,j]*(-a[i,j]) + a[i,j]
      #cat('i=', i , a[i,j], '\n') #a[i, ])
    }}
  print(a)
  
  # 3 step - 2d row divide by a[2,2]
  print(4)
  cnt=2
  for (i in (cnt:cnt)) {
    for (j in (2:nncols)) {
      a[i,j]= a[i,j]/a[cnt,cnt]
    }}
  print(a)

  # 4 2d line*-a[3,2] + 3d line
  print(5)
  cnt=3
  for (i in (2:nnrows)) {
    for (j in (3:nncols)) {
      a[i,j]= a[3,3]*(-a[i,j]) + a[i,j]
      #cat('i=', i , a[i,j], '\n') #a[i, ])
    }}
  print(a)

  # # 4
  # cnt=2
  # for (i in (cnt:cnt)) {
  #   for (j in (1:nncols)) {
  #     a[i,j]= a[i,j]/a[cnt,cnt]
  #   }}
  # print(a)
  
  # # 6
  # cnt=2 
  # for (i in (2:nnrows)) {
  #   for (j in (1:nncols)) {
  #     a[i,j]= a[1,j]*(-a[i,j]) + a[i,j]
  #     #cat('i=', i , a[i,j], '\n') #a[i, ])
  #   }}
  # print(a)
  
  a2=a
  b2=b
  return(a2) 
}
#
a0= matrix(
  c(3,2,-5,2,-1,3,1,2,-1),  # Элементы матрицы системы уравнений
  nrow = 3,                 # Количество строк
  ncol = 3,                 # Количество столбцов
  byrow = TRUE              # Заполнение по строкам
)
b0= cat(-1,13,9)            # правая часть системы уравнений
a2= determ(a0, b0)
cat("\n Done! \n")
