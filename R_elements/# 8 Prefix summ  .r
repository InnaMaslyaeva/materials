# Префиксная сумма — это массив, 
# в котором каждый элемент представляет собой сумму 
# всех предыдущих элементов исходного массива, включая текущий.

a <- c(1,2,3,4,5)
s_ar <- c()
ssum <- 0
for (i in 1:length(a)){
    ssum = ssum + a[i]
    s_ar <- c(s_ar, ssum)
    print(ssum)
}
cat('result = ', s_ar)