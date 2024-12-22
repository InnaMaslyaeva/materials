# Prime numbers 
# x = input = readline(prompt = "Введите число: ")
# print(x)
# number <- as.numeric(input) # Преобразуем введенную строку в число
# #cat("Вы ввели число:", number, "\n")

# dividers = c()
# k = 0
# for (n in 1:number){
#     if (number %%n == 0){
#     k = k + 1
#     dividers = c(dividers, number %/%n)
#     } 
# }
# cat('The number of dividers=', k, '\n')
# cat('The list of dividers=', dividers, '\n')

# l = length(dividers)
# cat('The list of dividers=', l, '\n')

# # x[x %in% c(1, 2, 5)]
# d = c(seq(length(dividers), 1, by=-1))
# cat('sequence of dividers=', d, '\n')

# cat('The list of dividers=', dividers[d], '\n')
# cat('The list of dividers=', dividers[length(dividers):1])

x = 17
dividers = c()
k = 0
priznak = 0 $ prime number
for (n in 2:(number-1)){
    if (number %%n == 0){
    k = k + 1
    dividers = c(dividers, number %/%n)
    priznak = 1
    break
    } 
}
cat('priznak=', priznak, '\n')


