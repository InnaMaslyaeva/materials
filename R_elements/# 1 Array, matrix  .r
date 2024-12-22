# переменная
# x <- 5
# cat(x)

# 0 output
# cat(): Используется для вывода строки, но не подходит для структурированных объектов, таких как списки. Поэтому сначала выводим текст.
# print(): Используется для структурированных объектов (списки, матрицы, и т. д.).

# 1 arrays
# 1.1 одномерный массив = вектор
# a <- c(8, 7, 4, 6, 9)  # Исходный массив
# cat("a =", a, "\n")

# # 1.2 array - output
# l <- list(x = 1:2, y = c(3, 4))
# cat("l =", "\n")
# print(l)

# 1.3  Добавление элемента 10 в конец массива
# a <- c(a, 10)  # c(a, 10) объединяет исходный массив a с новым элементом 10.
#                # Результат присваивается обратно в a, чтобы обновить массив.
# print("a=", a) # Вывод результата

# 1.4 удаление элемента из массива
# a <- c(8, 7, 4, 6, 9)  # Исходный массив
# cat('original a=', a, '\n')
# a <- a[-3]   # Удаление третьего элемента
# cat('result a=', a)    # Вывод результата

# 2 Создаем двумерный массив -------------------------------
# 2.1 Создание двумерного массива
# matrix_data <- matrix(
#   c(1, 2, 3, 4, 5, 6),  # Элементы массива
#   nrow = 2,             # Количество строк
#   ncol = 3,             # Количество столбцов
#   byrow = TRUE          # Заполнение по строкам
# )
# # Вывод массива
# print(matrix_data)

# 2.2 matrix — функция для создания двумерного массива. 
# Здесь массив содержит три строки и две колонки.
#    c(1, 2, 2, 5, 3, 9) — это данные для массива.
#    nrow = 3 — указывает количество строк.
#    byrow = TRUE — заполняет массив по строкам.
data <- matrix(c(1, 2, 2, 5, 3, 9), nrow = 3, byrow = TRUE)
cat("summary data in line =", data, "\n")
cat("summary data in frame =", '\n')
print(data)

for (i in 1:(length(data) - 1)) {
  cat(data[i], '\n')
}

# Сравнение методов:
# Метод	 -   Применение	 - Особенности
# matrix() -   Матрицы	 - Основной способ для двумерных массивов.
# array()	 -   Для многомерных массивов  - Подходит для сложных структур данных.
# data.frame()-Таблицы данных	 - Легкий доступ к столбцам с именами.
# list()	 -   Гибкость, сложные структуры данных	- Менее эффективен для матричных операций.
# rbind()/cbind()	- Быстрое создание из строк/столбцов - Удобно для создания небольших матриц.
# dim()	 - Преобразование вектора в массив - Меняет структуру исходного вектора.

# 1. Создание матрицы с matrix()
# mat <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
# print(mat)

# 2. С использованием array()
# arr <- array(c(1, 2, 3, 4, 5, 6), dim = c(3, 2))
# print(arr)

# 3. С помощью data.frame()
# Функция data.frame() используется для создания таблицы данных, 
# которая также является двумерной структурой.
# df <- data.frame(
#   Col1 = c(1, 2, 3),
#   Col2 = c(4, 5, 6)
# )

# 4. С использованием списков (list())
# Списки в R могут содержать в себе двумерные массивы, 
# но не всегда удобно обращаться к элементам.
# list_2d <- list(
#   Row1 = c(1, 2),
#   Row2 = c(3, 4)
# )
# print(list_2d)

# 5. Создание через комбинацию векторов
# Склеивание векторов с использованием rbind() (строки) 
# или cbind() (столбцы).
# # Создание матрицы через строки
# mat1 <- rbind(c(1, 2, 3), c(4, 5, 6))
# print(mat1)
# # Создание матрицы через столбцы
# mat2 <- cbind(c(1, 2), c(3, 4), c(5, 6))
# print(mat2)

# 6. Создание матрицы с использованием dim()
# Вы можете задать размеры массива вручную 
# с помощью функции dim().
# vec <- c(1, 2, 3, 4, 5, 6)
# dim(vec) <- c(2, 3)  # Задаем 2 строки и 3 столбца
# print(vec)





# Выводим график ----------------------------------------
#plot(data[,1], data[,2], type = "b", col = "blue", pch = 19,
#     xlab = "X", ylab = "Y", main = "График по данным массива")

# library(ggplot2)
# data <- data.frame(X = c(1, 2, 3), Y = c(2, 5, 9))
# cat("summary data =", data, "\n")
# ggplot(data, aes(x = X, y = Y)) +
#   geom_line(color = "blue") +
#   geom_point(color = "blue") +
#   labs(title = "График по данным массива", x = "X", y = "Y")
