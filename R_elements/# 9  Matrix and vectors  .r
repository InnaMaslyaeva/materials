# a=c(3,1,5,6,4,4,1,3,10,4,2,5)
#for (i1 in 1:length(a)){
#for (i2 in 1:(length(a)-1)){
# if (a[i2]>a[i2+1]){
#  t=a[i2]
# a[i2]=a[i2+1]
#a[i2+1]=t
# }
#  }
#}
# print(a)

# С помощью программы на языке R найти угол (с округлением
# до целого) между векторами с координатами (2, 0, 4) и (2, 0, 5).
# Вывести на экран сообщение формата “Угол между векторами
# [координаты 1-ого вектора] и [координаты 2-ого вектора]
# примерно равен [alpha] градусов”. Ответ: 5

# a = c(2,0,4)
# b = c(2,0,5)

# len_a = sqrt(sum(a^2))
# len_b = sqrt(sum(b^2))

# p = sum(a*b)
# print(p)

# alfa = p / (len_a * len_b)
# print(alfa)
# alfa_rad = acos(alfa)
# print(alfa_rad)

# alfa_grad = round( alfa_rad * 180 / pi)
# print(alfa_grad)

# Переформатирование матрицы
#a = matrix_data <- matrix(
#  c(1, 2, -5, 2, -1, 3, 1,2,-1),  # Элементы массива
#  nrow = 3,             # Количество строк
#  ncol = 3,             # Количество столбцов
#  byrow = TRUE          # Заполнение по строкам
#)
#cat("Матрица для решения уравнения:\n")
#print(matrix_data)
#print(a)

#a = matrix_data <- matrix(
#  c(1, 2, -5, 2, -1, 3, 1,2,-1),  # Элементы массива
#  nrow = 1,             # Количество строк
#  ncol = 9,             # Количество столбцов
#  byrow = TRUE          # Заполнение по строкам
#)
#print(a)