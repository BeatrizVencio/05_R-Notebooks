#################### STRINGS #################### 
# Concatenando String
nome <- "Beatriz" 
saudacao <- paste("Olá, ", nome)
print(saudacao)

string1 <- 'Olá, mundo!'
string2 <- "Ciência de Dados"
concate <- paste(string1, string2)
print(concate)

# Contar o número de caracteres em uma string
string1 <- 'Olá, mundo!'
string2 <- "Ciência de Dados"
nchar(string1) 
nchar(string2) 

# Conversão para Maiúsculas e Minúsculas
texto <- "Ciência de Dados"
tolower(texto) # Minúsculo
toupper(texto) # Maiúsculo

# Substituição de Texto
sub("Ciência", "Engenharia", texto) 
sub("de Dados", "da Computação", texto) 

# Encontrando e Extraindo Substrings
substr(texto, 1, 7) # o R sempre começa contando do 1
strsplit(texto, " ")
class(texto)


#################### Instalando e chamando pacotes #################### 
install.packages('dslabs') 
library(dslabs)
require(dslabs)
data('murders')
help('murders')
View(murders)

# Transformar todos os Nomes dos Estados para Maiúsculas
murders$state <- toupper(murders$state)
print(murders$state)

# Contar o Número de Caracteres nos Nomes dos Estados
murders$state_length <- nchar(murders$state)
print(murders$state_length)

# Criar uma Nova Coluna com Abreviações dos Nomes dos Estados
murders$state_abbr <- substr(murders$state, 1, 4)
print(murders$state_abbr)
rm(list = ls())


#################### VETORES #################### 
# Criação de vetor
vetor <- c(1, 2, 3, 4, 5) # c() para concatenar elementos
vetor2 <- c("a", "b", "c", "d", "e")
print(vetor)
print(vetor2)

# Acessando elementos
print(vetor[1]) # pegando o primeiro elemento
print(vetor[2:4]) # precisa abrir o colchete
print(vetor[8])
# NA - o R sabe que o elemento existe, mas não foi preenchido 
# Null - não existe valor

# Adicionando novos elementos ao vetor
vetor <- c(vetor, 6, 7)
print(vetor)

# Alterando elementos do vetor
vetor[1] <- -10
print(vetor) 

# Excluindo elementos do vetor
vetor <- vetor[-1] # exclui o primeiro elemento
print(vetor) 

# Excluindo elementos do vetor original
vetor <- c(1, 2, 3, 4, 5)
vetor <- vetor[vetor != 3] # exclui o elemento 3 do vetor
print(vetor)

# Criando Vetores utilizando a função c()
cidade <- c("Brasília" ,
            "São Paulo" ,
            "Rio de Janeiro" ,
            "Porto Alegre")
print(cidade)

temperatura <- c(32,22,35,17)
regiao <- c(1,2,3,4)

cidade[1]
cidade[3]

temperatura[1:3]
temperatura[2:4]

# Copiando vetores
cidade2 <- cidade
cidade2

temperatura[-2] # excluindo

cidade2[3] <- "Belo Horizonte" # alterando o valor

cidade2[5] <- "Curitiba" # adicionando um valor
cidade2

cidade2 <- NULL # deletando um vetor
cidade2
rm(cidade2)

# Coerção de um vetor
x <- c(1,"canada",3,4,5)
x <- 1:5 # vetor de 1 a 5 
y <- as.character(x) # transforma tudo em caractere
y
as.numeric(y) # transforma tudo em número

# Dados NA no vetor - Not Available
x <- c("1","b","3")
as.numeric(x)
b <- 2
x <- c(1,b,3)
as.numeric(x)


#################### FATORES #################### 
# Criação de fatores
dias <- c("seg", "ter", "qua", "qui", "sex")
fator_dias <- factor(dias)
print(fator_dias)

# Níveis dos fatores
levels(fator_dias) <- c(levels(fator_dias), "sab", "dom")
print(fator_dias)

# Removendo níveis de um fator
fator_dias <- factor(fator_dias, levels = c("seg", "ter", "qua", "qui", "sex"))
print(fator_dias)

# Número de níveis de um fator
n <- nlevels(fator_dias)
print(n)

# Convertendo Fator em Vetor
dias_vetor <- as.character(fator_dias)
print(dias_vetor)

# Nomeando os filmes
filmes <- c("O Poderoso Chefão", 
            "O Senhor dos Anéis", 
            "Pulp Fiction", 
            "Matrix",
            "Coringa")

# Avaliações dos filmes
avaliacoes <- c(5, 4.5, 3, 4, 4.5)

# Gênero dos filmes
generos <- factor(c("Drama", "Fantasia", 
                    "Crime", "Ficção Científica", 
                    "Drama"))
levels(generos)

# Quantos filmes de cada gênero
table(generos)

# Calculando a avaliação média
tapply(avaliacoes, generos, mean)
