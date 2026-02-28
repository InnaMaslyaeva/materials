# 3.3 
numberOfWaysRec <- function(n) {
  # Проверка на корректность данных
  if (length(n) != 1 || n < 1 || n %% 1 != 0) {
    return("Некорректные данные: аргумент должен быть натуральным числом")
  }
  
  # Базовые случаи рекурсии
  if (n == 1) return(1)  # только 1 способ: шаг 1
  if (n == 2) return(2)  # способы: 1+1 или 2
  
  # Рекурсивный случай: f(n) = f(n-1) + f(n-2)
  return(numberOfWaysRec(n - 1) + numberOfWaysRec(n - 2))
}

# iteration
# numberOfWaysIter <- function(n) {
#   if (n < 1 || n %% 1 != 0) return("Некорректные данные")
#   if (n == 1) return(1)
#   a <- 1
#   b <- 2
#   for (i in 3:n) {
#     c <- a + b
#     a <- b
#     b <- c
#   }
#   return(b)
# }

# Пример использования:
print(numberOfWaysRec(5))  # 8
print(numberOfWaysRec(10)) # 89
print(numberOfWaysRec(30)) # Уже будет работать медленно

# Проверка некорректных данных:
print(numberOfWaysRec(0))   # Некорректные данные
print(numberOfWaysRec(-5))  # Некорректные данные
print(numberOfWaysRec(3.5)) # Некорректные данные
print(numberOfWaysRec(c(1, 2))) # Некорректные данные


