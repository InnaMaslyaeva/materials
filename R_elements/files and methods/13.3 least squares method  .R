# 5.5 Метод наименьших квадратов (МНК)

# Генерация данных
set.seed(123) # Для воспроизводимости
x_data <- seq(1, 10, length.out = 100)
noise <- rnorm(length(x_data), mean = 0, sd = 1)
y_data <- 2*sin((2/3)*x_data) + noise

# Функция модели с двумя параметрами: a*sin(b*x)
model <- function(x, params) {
  params[1] * sin(params[2] * x)
}

# Функция для вычисления суммы квадратов отклонений
objective <- function(params) {
  sum((y_data - model(x_data, params))^2)
}

# Применяем оптимизацию для нахождения параметров
result <- optim(par = c(1, 0.5),  # Начальные значения параметров
                fn = objective,
                method = "L-BFGS-B",
                lower = c(0.1, 0.1),
                upper = c(5, 2))

# Получаем оптимальные параметры
a_opt <- result$par[1]
b_opt <- result$par[2]

cat("Оптимальные параметры:\n")
cat("a =", round(a_opt, 3), "\n")
cat("b =", round(b_opt, 3), "\n")

# Строим графики
par(mfrow = c(1, 2))

# 1) График данных и модели
plot(x_data, y_data, pch = 19, col = "blue", cex = 0.6,
     main = "Аппроксимация методом МНК",
     xlab = "x", ylab = "y")
curve(2*sin((2/3)*x), add = TRUE, col = "green", lwd = 2, lty = 2) # Истинная функция
curve(model(x, c(a_opt, b_opt)), add = TRUE, col = "red", lwd = 2) # Модель
# legend("topright", 
#        legend = c("Данные", "Истинная функция", "Модель МНК"),
#        col = c("blue", "green", "red"),
#        pch = c(19, NA, NA),
#        lty = c(NA, 2, 1),
#        lwd = 2)

# 2) График остатков
residuals <- y_data - model(x_data, c(a_opt, b_opt))
plot(x_data, residuals, pch = 19, col = "purple", cex = 0.6,
     main = "Остатки модели",
     xlab = "x", ylab = "Остатки")
abline(h = 0, col = "gray", lty = 2)
grid()

# Возвращаем стандартные параметры графики
par(mfrow = c(1, 1))