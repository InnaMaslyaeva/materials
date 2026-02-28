#  9.4: Студенты с Total >= среднего

# Импортируем данные из файла 
# 1) Импортируем данные из файла 
my_data = read.csv("Таблица2.csv", sep = " " ) 
print(my_data)

# 2) Добавляем новый столбец Total как сумму Seminar и Task
my_data$Total = my_data$Seminar + my_data$Task

cat("Студенты с Total больше или равным среднему:\n")
# Вычисляем среднее значение Total (игнорируя NA)
mean_total = mean(my_data$Total, na.rm = TRUE)
print(mean_total)

# Выводим студентов, удовлетворяющих условию
above_avg <- my_data[my_data$Total >= mean_total & !is.na(my_data$Total), "Student"]
print(above_avg)


#  9.5: Два студента с наибольшими Total
cat("\nДва студента с наибольшими значениями Total:\n")

# Сортируем по убыванию Total и берем первых двух
top_two <- head(my_data[order(-my_data$Total, na.last = TRUE), "Student"], 2)
print(top_two)