#################### PACOTE DPLYR ####################
# Carregando o pacote dplyr
install.packages("dplyr")
library(dplyr)
  
# Criando um exemplo de data frame
df <- data.frame(
  Nome = c("Ana", "Bruno", "Carlos", "Dani", "Eva"),
  Idade = c(23, 31, 29, 35, 42),
  Score = c(87, 90, 78, 85, 92)
)
  
# Função filter()
# Filtrar linhas onde a idade é maior que 30
df_filtrado <- filter(df, Idade > 30)
print(df_filtrado)

# Função select()
# Selecionar somente as colunas Nome e Idade
df_selecionado <- select(df, Nome, Idade)  
print(df_selecionado)

# Função arrange()
# Ordenar o data frame baseado no Score de forma descendente
df_ordenado <- arrange(df, desc(Score))  
print(df_ordenado)

# Função mutate()
# Criar uma nova coluna chamada "Categoria" baseada na Idade
df_mutate <- mutate(df, Categoria = ifelse(Idade > 30, "Senior", "Junior"))  
print(df_mutate)

# Função summarise()
# Calcular a média de idade e score
df_resumo <- summarise(df, Media_Idade = mean(Idade), Media_Score = mean(Score))  
print(df_resumo)

# Funções group_by() e summarise()
# Agrupar por Categoria e calcular a média de Score por grupo
df_agrupado <- df_mutate %>%
  group_by(Categoria) %>%
  summarise(Media_Score = mean(Score))  
print(df_agrupado)
  

#################### PACOTE HSAUR2 ####################  
# Carregar os pacotes
install.packages("HSAUR2")
library(HSAUR2)
library(dplyr)

# Carregar os dados
data(Forbes2000)
head(Forbes2000) # mostra a base igual no py

# Filtrar as empresas de tecnologia com vendas superiores a 30 bilhões:
tech_empresas <- Forbes2000 %>%
  filter(category == "Technology" & sales > 30)
head(tech_empresas)

# Selecionar as colunas relevantes
colunas_selecionadas <- Forbes2000 %>%
  select(name, category, sales, profits, assets)
head(colunas_selecionadas)

# Listar as 10 empresas com os maiores lucros:
top_lucros <- Forbes2000 %>%
  arrange(desc(profits)) %>%
  head(10)
top_lucros

# Criar uma nova coluna "profit_ratio" que é a proporção do lucro sobre as vendas:
com_profit_ratio <- Forbes2000 %>%
  mutate(profit_ratio = profits / sales)
head(com_profit_ratio)

# Agrupar empresas por categoria e obter a média de vendas e lucros por categoria:
categoria_resumo <- Forbes2000 %>%
  group_by(category) %>%
  summarise(Media_Sales = mean(sales, na.rm = TRUE),
  Media_Profits = mean(profits, na.rm = TRUE))
head(categoria_resumo)

# Obter a empresa com o maior número de ativos em cada categoria:
top_ativos <- Forbes2000 %>%
  group_by(category) %>%
  top_n(1, wt = assets)
head(top_ativos)


#################### FAMÍLIA APPLY #################### 
# Criem uma matriz
mat <- matrix(1:9, ncol=3)

# Soma por coluna sem apply (por loop)
mat <- matrix(1:9, ncol=3)
result <- numeric(ncol(mat))
for(i in 1:ncol(mat)) {
  result[i] <- sum(mat[, i])
}
result

# Soma por coluna com apply
apply(mat, 2, sum)

# Criem uma lista
lista <- list(a=1:5, b=6:10)

# Calcula a média de cada elemento da lista sem lapply (por loop)
lista <- list(a=1:5, b=6:10)
result <- list()
for(i in 1:length(lista)) {
  result[[i]] <- mean(lista[[i]])
}
names(result) <- names(lista)
result

# Calcula a média de cada elemento da lista com lapply
lapply(lista, mean)

# Calcula a média de cada elemento da lista sem sapply (por loop):
lista <- list(a=1:5, b=6:10)
result <- list()
for(i in 1:length(lista)) {
  result[[i]] <- mean(lista[[i]])
}
names(result) <- names(lista)
result
unlist(result)

# Resultado em vetor, não em lista
sapply(lista, mean)

# Aplica uma função sobre subgrupos de um vetor
notas <- c(7, 8, 9, 6, 8)
turmas <- c('A'
            ,
            'A'
            ,
            'B'
            ,
            'B'
            ,
            'B')

# Média de notas por turma sem tapply (com loop)
unique_turmas <- unique(turmas)
result <- numeric(length(unique_turmas))
for(i in 1:length(unique_turmas)) {
  result[i] <- mean(notas[turmas == unique_turmas[i]])
}
names(result) <- unique_turmas
result

# Média de notas por turma com tapply
tapply(notas, turmas, mean)
