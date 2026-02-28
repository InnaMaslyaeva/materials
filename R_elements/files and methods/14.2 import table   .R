# 9.1 Импорт таблицы

# 1) Импортируем данные из файла task204.csv (или task205.csv) в датафрейм my_data
# Предполагается, что файл находится в рабочей директории
my_data = read.csv("Таблица1.csv")  

# 2) Выводим структуру датафрейма my_data
cat("\nСтруктура датафрейма my_data:\n")
str(my_data)

# 3) Выводим весь датафрейм my_data
cat("\nСодержимое датафрейма my_data:\n")
print(my_data)

# 4) Выводим 3-ий столбец датафрейма my_data
cat("\nТретий столбец датафрейма my_data:\n")
print(my_data[, 3])  # или print(my_data[[3]])

# 5) Выводим столбец Student датафрейма my_data
cat("\nСтолбец 'Student' датафрейма my_data:\n")
print(my_data$Student)  # или print(my_data[["Student"]])

# 6) Выводим 1-ую строку датафрейма my_data
cat("\nПервая строка датафрейма my_data:\n")
print(my_data[1, ])