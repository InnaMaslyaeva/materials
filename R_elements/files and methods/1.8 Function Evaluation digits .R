# 2025.02.15 1.3 Function Evaluation 7 digits 1.3
# Функция getDigits()
getDigits <- function(number) {
  print(number)
  
  if (length(number) != 1) {
    return("Ошибка: передан массив вместо числа")
    }
  else{
       if (!is.numeric(number) || number %% 1 > 0) {
        return("Ошибка: число не является целым")
       }
    else{
         if (number < 0) {
         return("Ошибка: negative number")
         }
      else{
           x= unlist(strsplit(as.character(number), ""))
          return(x)
  }}}
}
number= 14159265
print(getDigits(number))

