#################### GRÁFICOS NO R #################### 
# Instalando e carregando o pacote
install.packages("ggplot2")
install.packages("dslabs")
library(ggplot2)
library(dslabs)

# Conjunto de dados sobre eficiência de combustível em carros
data(mpg)

# Gráfico de Dispersão
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point()

# Gráfico de Barras
ggplot(data = mpg, aes(x = class)) +
  geom_bar()

# Gráfico de Caixas (Boxplot):
ggplot(data = mpg, aes(x = class, y = hwy)) +
  geom_boxplot()

# Carregar o conjunto de dados
data("gapminder")

# Filtrar dados para o Brasil
brazil_data <- subset(gapminder, country == "Brazil")

# Gráfico de linha simples mostrando a evolução da expectativa de vida no Brasil
ggplot(brazil_data, aes(x = year, y = life_expectancy)) +
  geom_line(color = "blue") +
  labs(title = "Evolução da Expectativa de Vida no Brasil", x = "Ano", y = "Expectativa de
Vida") +
  theme_minimal()

# Gráfico de Dispersão:
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = class)) +
  labs(title = "Relação entre Volume do Motor e Eficiência de Combustível",
       x = "Volume do Motor", y = "Eficiência (hwy)", color = "Classe do Veículo") +
  theme_minimal()

# Histograma da coluna mpg do conjunto mtcars
ggplot(data = mtcars, aes(x = mpg)) +
  geom_histogram(fill = "steelblue", color = "black", bins = 5) +
  labs(title = "Histograma de Milhas por Galão (mpg)", x = "Milhas por Galão", y =
         "Contagem de Carros") +
  theme_minimal()

# Salvando nosso Gráfico de Dispersão:
p <- ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = class)) +
  labs(title = "Relação entre Volume do Motor e Eficiência de Combustível",
       x = "Volume do Motor", y = "Eficiência (hwy)", color = "Classe do Veículo") +
  theme_minimal()

ggsave(filename = "grafico.png", plot = p, width = 7, height = 5)


#################### VISUALIZAÇÃO DE GRÁFICOS #################### 
# Gráfico de linha simples mostrando a evolução da expectativa de vida no Brasil
ggplot(brazil_data, aes(x = year, y = life_expectancy)) +
  geom_line(color = "blue") +
  labs(title = "Evolução da Expectativa de Vida no Brasil", x = "Ano", y = "Expectativa de
Vida") +
  theme_minimal()

# Gráfico de linha personalizado e embelezado
comma_format <- function(x) {
  format(x, big.mark = ",")
}

ggplot(brazil_data, aes(x = year, y = life_expectancy)) +
  geom_line(color = "blue", size = 1.2) +  
  geom_point(aes(color = life_expectancy), size = 3) + 
  geom_smooth(method = "loess", se = FALSE, color = "darkred", size = 1) +
  labs(
    title = "Evolução da Expectativa de Vida no Brasil",
    subtitle = "Destacando a expectativa de vida ao longo dos anos",
    x = "Ano",
    y = "Expectativa de Vida",
    caption = "Fonte: Dataset gapminder da biblioteca dslabs",
    color = "Expectativa\n de Vida"
  ) +
  theme_minimal() +
  theme(legend.position = "bottom",
        legend.title.align = 0.5,
        plot.title = element_text(hjust = 0.5)) +
  geom_text(data = tail(brazil_data, 1),
            aes(label = round(life_expectancy, 1), y = life_expectancy + 0.1),  
            vjust = 0, hjust = 0, size = 4) +
  scale_y_continuous(labels = comma_format)  

#################### EXERCÍCIOS ####################
ggplot(data = mpg, aes(x = class)) +
  geom_bar() +
  labs(title = "Contagem de Veículos por Classe", x = "Classe", y = "Contagem")
