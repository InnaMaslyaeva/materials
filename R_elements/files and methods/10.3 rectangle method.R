# Функция вычисления интеграла методом прямоугольников для дискретных данных

f = function(x) { return(sin(x)) }

integrRectangle = function(f, a, b, n) {
  dx = (b - a) / n # 
  
  res = 0
  for (i in 1:n) {
    l = a + dx * (i - 1)   # x0
    r = l + dx             # x1
    res = res + dx * f((l + r) / 2)  # s = s + x*h
  }
  return(res)
}

a = 0  # начало  интервала
b = pi # конец интервала
n = 1000 # точность расчёта

# Расчёт интеграла
integrNum = integrRectangle(f, a, b, n)
print(integrNum)
# n = 10 -> 2.008248
# n = 100 -> 2.000082
# n = 1000 -> 2.000001

# integrAn = 2
# erRectangle = abs((integrNum - integrAn) / integrAn) * 100
# print(erRectangle)

# Create a graph of the function
x_vals <- seq(a, b, length.out = 1000)
y_vals <- f(x_vals)

# Построение графиков
plot(x = x_vals, y = y_vals, type = "l", 
     col = "blue", 
     lwd = 2, main = "Graph of sin(x) over [0, pi]", 
     xlab = "x", ylab = "y")  # График функции

# ggplot(data.frame(x = x_vals, y = y_vals), aes(x, y)) +
#   geom_line(color = "blue", size = 1) +
#   labs(title = "Graph of sin(x) over [0, pi]", x = "x", y = "sin(x)") +
#   theme_minimal()

