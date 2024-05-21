#################### DATA FRAME ####################
# Exemplo de criação de um data.frame
dados <- data.frame(
  coluna1 = c(1, 2, 3),
  coluna2 = c("a", "b", "c"),
  coluna3 = c(TRUE, FALSE, TRUE)
)

# Acessando uma coluna
dados$coluna1

# Acessando uma linha
dados[1, ]

# Acessando uma coluna 
dados[ , 1]

# Acessando um elemento específico
dados[1, 2] # Primeira linha, segunda coluna


#################### OPERADORES ####################
#Relacionais: >, <, >=, <=, ==, != para comparar valores.
#Lógicos: & (AND), | (OR), ! (NOT) para combinar condições.

# Exemplos de operadores relacionais
5 > 3 # TRUE
10 == 10 # TRUE

# Exemplos de operadores lógicos
(5 > 3) & (10 <= 20) # TRUE
!(5 == 5) # FALSE


#################### MANIPULAÇÃO DE DF ####################
# Seleção condicional
dados_filtrados <- dados[dados$coluna1 > 1, ]
print(dados_filtrados)

# Adicionar uma nova coluna
dados$coluna4 <- c("novo", "valor", "aqui")

# Modificar uma coluna existente
dados$coluna1 <- dados$coluna1 * 2
print(dados)

# Removendo coluna do data.frame 'dados'
dados$coluna2 <- NULL
print(dados)

# Verificando o resultado
print(dados)

#mean(): Para calcular a média.
#summary(): Para obter um resumo estatístico.

# Calculando a média de uma coluna
media_coluna1 <- mean(dados$coluna1)
print(media_coluna1)

# Obtendo um resumo estatístico do data.frame
resumo_dados <- summary(dados)
print(resumo_dados)


#################### BASE DE DADOS DO R ####################
# Instalando a base
data()
data(WorldPhones)
names(WorldPhones)
help(WorldPhones)

# Usar dataframes: Aumentar o poder do R
install.packages("dslabs")
library(dslabs)

# Chamar o dataframe
data(murders) # chama a base
class(murders) # classifica a variável
help(murders) # mostra a descrição da base

# Observando o dataframe
str(murders) # visão compacta da estrutura
head(murders) # mostra a base em tabela
murders$population # accessor population
murders$region # accessor region
names(murders) # mostra o título das colunas

# Trabalhando com dados
pop <- murders$population # puxou os dados da população
length(pop) # quantidade de linhas na coluna
class(pop) 
class(murders$state)

# Fatores/Factors com data.frames
class(murders$region)
levels(murders$region)


#################### EXERCÍCIO 01 ####################
data(movielens) 
class(movielens) 
help(movielens)

str(movielens)

class(movielens$title)
class(movielens$genres)

levels(movielens$genres)

# tem 100004 linhas
# tem 7 colunas
# title é caractere
# gênero é fator
# 901 gêneros diferentes


#################### SEQUÊNCIAS ####################
# Função Seq (Sequência)
seq(1,10)
seq(1,10,2)
seq(from = 1, to = 10, by = 2)
1:10

x <- seq(0, 100, length.out = 5)
print(x)

#################### ATIVIDADE AVALIATIVA 2 #################### 
# PARTE 1
# 1- Um data frame é uma estrutura de dados usada para armazenar 
# dados tabulados, onde cada coluna pode conter elementos de 
# diferentes tipos, ao contrário da matriz que só armazena um 
# tipo de dado

# 2- Operadores básicos: +, -, *, /, ^, %%, %/%, sqrt()
a <- 5
b <- 3
soma <- a + b
subtracao <- a - b
multiplicacao <- a * b

a <- 10
b <- 2
divisao <- a / b

a <- 2
b <- 3
exponenciacao <- a^b

a <- 10
b <- 3
resto <- a %% b
divisao_inteira <- a %/% b

a <- 9
raiz_quadrada <- sqrt(a)
print(raiz_quadrada)

# 3- Operadores Relacionais: >, <, >=, <=, ==, != para comparar valores
#    Operadores Lógicos: & (AND), | (OR), ! (NOT) para combinar condições

5 > 3 # TRUE
5 < 3 # FALSE
5 >= 3 # TRUE
5 <= 3 # FALSE
10 == 10 # TRUE
10 != 10 # FALSE

(5 > 3) & (10 <= 20) # TRUE
(5 > 3) | (10 == 20) # TRUE
!(5 == 5) # FALSE

# PARTE 2
estudantes <- data.frame(
  nome = c("Ana", "Bruno", "Carlos", "Diana", "Eduardo"),
  idade = c(20, 22, 23, 19, 25),
  curso = c("Ciência de Dados", "Engenharia", "Matemática", "Ciência da Computação", "Estatística"),
  nota_final = c(8.5, 5.0, 7.0, 9.0, 6.5)
)
print(estudantes)

nota_maior <- estudantes[estudantes$nota_final >= 7, ]
print(nota_maior)

idade_maior <- estudantes[estudantes$idade < 25 & estudantes$nota_final >= 7, ] 
print(idade_maior)

# PARTE 3
media_nota_final <- mean(estudantes$nota_final)
print(media_nota_final)

estudantes$aprovado <- estudantes$nota_final >= 7
print(estudantes)

total_estudantes <- nrow(estudantes)
aprovados <- sum(estudantes$aprovado == TRUE)
percent_aprovados <- (aprovados / total_estudantes) * 100
print(percent_aprovados )
