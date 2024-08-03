# Cargar librerías necesarias
library(ggplot2)

# Datos de ejemplo
lenguajes <- c("Python", "Java", "JavaScript", "C++", "Ruby")
uso <- c(45, 30, 25, 15, 10)

# Crear un dataframe
datos <- data.frame(lenguajes, uso)

# Ordenar los datos de mayor a menor
datos <- datos[order(-datos$uso), ]

# Crear el gráfico
ggplot(datos, aes(x = reorder(lenguajes, -uso), y = uso)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Uso de Lenguajes de Programación", x = "Lenguajes", y = "Uso (%)") +
  theme_minimal()
