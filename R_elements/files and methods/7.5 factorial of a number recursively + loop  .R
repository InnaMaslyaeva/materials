# 3.2 Создать функцию getFactorialRecursive(), которая для заданного 
# натурального числа возвращает факториал этого числа с помощью рекурсии. 
# Создать функцию getFactorial() без использования рекурсии, 
# а с использованием цикла while. Сравнить время выполнения алгоритмов 
# (с помощью встроенной функции proc.time()).
# Аргументы функции: натуральное число.
# Возвращаемое значение: число или сообщение о некорректности данных.
# Пример: 5 → 120
#Некорректные данные:
# 1) длина числа не равна 1 (то есть передан массив)
# 2) число меньше 1
# 3) число не является целым (используйте остаток от деления на 1)

# Функция 1 для вычисления факториала рекурсивно
getFactorialRecursive = function(n) {
  if (length(n) != 1 || n < 1 || n %% 1 != 0) {
    return("Ошибка: некорректные данные")
  }
  if (n == 1) {
    return(1)
  }
  return(n * getFactorialRecursive(n - 1))
}

# Функция 2 для вычисления факториала с использованием цикла while
getFactorial = function(n) {
  if (length(n) != 1 || n < 1 || n %% 1 != 0) {
    return("Ошибка: некорректные данные")
  }
  
  result = 1
  i = n
  while (i > 1) {
    result = result * i
    i = i - 1
  }
  return(result)
}

# Число 
n = 5

# Время выполнения рекурсивной функции
start_time_recursive = proc.time()
factorial_recursive = getFactorialRecursive(n)
end_time_recursive = proc.time()

# Время выполнения функции с циклом while
start_time_iterative = proc.time()
factorial_iterative = getFactorial(n)
end_time_iterative = proc.time()

# Результаты
cat("Факториал (рекурсия):", factorial_recursive, "\n")
cat("Время выполнения (рекурсия):", (end_time_recursive - start_time_recursive)["elapsed"], "секунд\n")
cat("Факториал (цикл while):", factorial_iterative, "\n")
cat("Время выполнения (цикл while):", (end_time_iterative - start_time_iterative)["elapsed"], "секунд\n")

