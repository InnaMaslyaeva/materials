# Решение квадратичного уравнения 
a = 1
b = 4
c = 1
D = b * b - 4 * a * c
cat('D= ', D, '\n')
if (D>0){
x1 = (-b - sort(D))/ (2 * a)
x2 = (-b + sort(D))/ (2 * a)
cat('two roots: ', x1, 'and', x2)
} else { 
    if (D==0){
        x1 = (-b )/ (2 * a)
        cat('one root=', x1)
    } else {
    cat(' no roots')
    }
}

