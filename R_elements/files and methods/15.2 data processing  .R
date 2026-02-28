# 9.3 Обработка данных

# 1) Импортируем данные из файла 
my_data = read.csv("Таблица2.csv", sep = " " ) 
print(my_data)

# 1) Выводим студентов с Task > 3
cat("Студенты с Task > 30:\n")
print(my_data$Student[my_data$Task > 30])

# 2) Выводим студентов с 3 < Task < 20
cat("\nСтуденты с 3 < Task < 20:\n")
print(my_data$Student[my_data$Task > 3 & my_data$Task < 20]) # |

# 3) Выводим часть таблицы с 3 < Task < 7
cat("\nЧасть таблицы с 3 < Task < 7:\n")
print(my_data[my_data$Task > 3 & my_data$Task < 7, ])


# 4) Создаем отсортированный датафрейм по убыванию Total (NA в конце)
sorted_data <- my_data[order(-my_data$Total, na.last = TRUE), ]
cat("\nОтсортированный датафрейм по Total (по убыванию):\n")
print(sorted_data)

# 5) Сохраняем sorted_data в файл без номеров строк
write.csv(sorted_data, "result204.csv", row.names = FALSE)
cat("\nДатафрейм сохранен в файл 'result204.csv' без номеров строк\n")