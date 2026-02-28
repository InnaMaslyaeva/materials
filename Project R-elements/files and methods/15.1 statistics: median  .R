# 9.2 Статистика: медиана
# 1) Импортируем данные из файла 
my_data = read.csv("Таблица2.csv", sep = " " ) 
print(my_data[[2]])

# 1) Вычисляем медиану столбца Seminar
median_seminar = median(my_data$Seminar)
median_seminar = median(my_data[[2]])
cat("Медиана столбца Seminar:", median_seminar, "\n")

# 2) Вычисляем медиану столбца Task
median_task = median(my_data$Task)
cat("Медиана столбца Task:", median_task, "\n")  # ?????? игнор NA

# 3) Добавляем новую строку с именем "DN" и медианными значениями
new_row = data.frame(
  Student = "DN",
  Seminar = round(median_seminar),
  Task = round(median_task))
  
my_data = rbind(my_data, new_row)
  
# Выводим обновленный датафрейм
cat("\nДатафрейм после добавления строки DN:\n")
print(my_data)
  
# 4) Добавляем новый столбец Total как сумму Seminar и Task
my_data$Total = my_data$Seminar + my_data$Task
  
# 4) Добавляем новый столбец Total как сумму Seminar и Task
my_data$Total = my_data$Seminar + my_data$Task

# Выводим окончательный датафрейм
cat("\nДатафрейм с добавленным столбцом Total:\n")
print(my_data)

