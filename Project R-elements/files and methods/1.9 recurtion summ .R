# 4.3 
# Функция для сложения двух чисел
getSum <- function(a, b) {
  return(a + b)  # Базовая реализация (но можно и без "+" — см. альтернативу ниже)
}

# Альтернативная реализация getSum() без использования "+" (если требуется)
getSumAlt <- function(a, b) {
  while (b != 0) {
    carry <- bitwAnd(a, b)  # Побитовое И (перенос)
    a <- bitwXor(a, b)      # Побитовое исключающее ИЛИ (сумма без переноса)
    b <- bitwShiftL(carry, 1)         # Сдвиг переноса на 1 бит влево
  }
  return(a)
}

# Функция для умножения через многократное сложение (без "+" и "*")
getProd <- function(a, m) {
  if (m == 0) return(0)
  
  abs_m <- abs(m)
  result <- 0
  
  # Используем getSum() для сложения
  for (i in 1:abs_m) {
    result <- getSum(result, a)
  }
  
  # Учитываем знак
  if (m < 0) {
    result <- -result
  }
  
  return(result)
}

# Примеры использования:
print(getSum(2, 3))    # 5
print(getProd(2, 3))   # 6
print(getProd(-2, 3))  # -6
print(getProd(2, -3))  # -6
print(getProd(0, 5))   # 0