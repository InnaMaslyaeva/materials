# 3.1 Создать функцию getSumRecursive(), которая для заданного массива 
# возвращает сумму его элементов с помощью рекурсии. 
# Засечь время выполнения алгоритма (с помощью встроенной функции proc.time()) и 
# сравнить результат со встроенной функцией sum().

# Функция 1 для вычисления суммы элементов массива рекурсивно
getSumRecursive = function(arr) {
  if (length(arr) == 0) {
    return("Ошибка: массив пустой")
  }
  if (length(arr) == 1) {
    return(arr[1])
  }
  return(arr[1] + getSumRecursive(arr[-1]))
}

# 1 Создаем массив чисел от 1 до 100
arr = 1:100

# 2 Время выполнения рекурсивной функции
start_time_recursive = proc.time()
sum_recursive = getSumRecursive(arr)
end_time_recursive = proc.time()

# 3 Время выполнения встроенной функции sum()
start_time_builtin = proc.time()
sum_builtin = sum(arr)
end_time_builtin = proc.time()

# 4 Результаты
cat("Рекурсивная сумма:", sum_recursive, "\n")
cat("Время выполнения (рекурсия):", (end_time_recursive - start_time_recursive)["elapsed"], "секунд\n")
cat("Встроенная сумма:", sum_builtin, "\n")
cat("Время выполнения (sum()):", (end_time_builtin - start_time_builtin)["elapsed"], "секунд\n")
