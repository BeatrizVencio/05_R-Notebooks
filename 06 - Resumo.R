#################### RESUMO ####################
# Instalando e chamando pacotes               # Pacotes e bases importantes:
install.packages("ggplot2")                   # dslabs
library(ggplot2)                              # dplyr
require(ggplot2)                              # murders

# Declarar variável
a <- 4
a <- 2

# Cálculos básicos e importantes de variáveis no R:
soma <- a + b
subtracao <- a - b
multiplicacao <- a * b
divisao <- a / b
exponenciacao <- a^b
resto <- a %% b
divisao_inteira <- a %/% b
raiz_quadrada <- sqrt(a)        # DICA: Lembrem do cálculo de raiz quadrada


# Classificação de variável no R:
class(a)

# Remover variáveis da memória do R:
rm(a,b)

# Conversão para Maiúsculas e Minúsculas
texto <- "Ciência de Dados"
tolower(texto) 
toupper(texto)

# Substituição de Texto
sub("Ciência", "Engenharia", texto) 

# Encontrando e Extraindo Substrings
substr(texto, 1, 7)             # DICA: Lembrem da função paste!

# Manipulação de Vetores no R
cidade <- c("Brasília"
            ,
            "São Paulo"
            ,
            "Rio de Janeiro"
            ,
            "Porto Alegre"
)
print(cidade)
temperatura <- c(32,22,35,17)
região <- c(1,2,3,4)

# Acessando o primeiro elemento do seu vetor
cidade[1]
cidade[3]

# Acessando intervalos de valores dentro do seu vetor
temperatura[1:3]
temperatura[2:4]

# Copiando vetores
cidade2 <- cidade
cidade2

# Adicionar um novo elemento
cidade2[5] <- "Curitiba"
cidade2

# Excluindo um elemento do seu vetor
temperatura[-2]

# Alterando um vetor
cidade2[3] <- "Belo Horizonte"

# Adicionar um novo elemento
cidade2[5] <- "Curitiba"
cidade2

# Criação de fatores
dias <- c("seg"
          ,
          "ter"
          ,
          "qua"
          ,
          "qui"
          ,
          "sex")
fator_dias <- factor(dias)

# Níveis nos fatores
levels(fator_dias) <- c(levels(fator_dias),
                        "sab"
                        ,
                        "dom")
print(fator_dias)

# Convertendo Fator em Vetor
dias_vetor <- as.character(fator_dias)
print(dias_vetor)          # DICA: Lembrem do exercício de filmes com levels

# Observar o dataframe
str(murders)                   # DICA: Não esqueça de instalar e chamar o pacote
head(murders)                  # com o install.packages e library!
murders$population            
murders$region                 # Olhem a parte de coerção
names(murders)

# Função Seq (Sequência)
seq(1,10)
1:10
seq(1,10,2)
seq(from = 1, to = 10, by = 2)

# É possível criar um novo tipo de vetor de sequência dizendo a quantidade de
elementos?
  x <- seq(0, 100, length.out = 5)
print(x)

# Desenvolvendo matrizes no R:
matriz <- matrix(1:6, nrow=2, ncol=3)
print(matriz)

# Atribuir nomes às linhas
rownames(matriz) <- c("Preço1"
                      ,
                      "Preço2")

# Atribuir nomes às colunas
colnames(matriz) <- c("Banana"
                      ,
                      "Maça"
                      ,
                      "Laranja")
print(matriz)

# Acessando Elementos
matriz[1,2] 

# Acessando diversos elementos da matriz
M[2,1]
M[2, ] 
M[ ,2]                           # DICA: Lembrem do exercício de vendas
M[ ,1:2]
M[1:2,1]

# Operações básicas de matrizes
soma <- matriz + matriz2
subtracao <- matriz - matriz2                
divisao <- matriz / matriz2
multi <- matriz * matriz2
multicorreto <- M1 %*% M2

# Criando uma lista e atrelando a nomes
minha_lista <- list(nome = "Beatriz", idade = 30, notas = c(8, 9, 10))

# Acessar o campo nome 1ª Forma
minha_lista$nome 

# Acessar o campo nome 2ª Forma
minha_lista[[1]] 

# Criar uma lista com diferentes tipos de dados
exemplo_lista <- list(inteiro = 1, texto = "Oi", booleano = TRUE)

# Criar uma lista que contém outra lista
lista_aninhada <- list(primeira_lista = exemplo_lista, numero = 42)

# Acessar um elemento dentro de uma lista aninhada
lista_aninhada$primeira_lista$texto 

# Ordenação de vetores
vetor <- c(4, 1, 7, 2)
sort(vetor)
sort(vetor, decreasing = TRUE) 

# Carregar o pacote dplyr
install.packages("dplyr")
library(dplyr)

# Criar um dataframe de exemplo
df <- data.frame(nome = c("Ana", "Bob", "Cid"), idade = c(23, 45, 19))

# Ordenar por idade
df_ordenado <- arrange(df, idade)
print(df_ordenado)

# Ordenando a base murders
max(murders$total)
i_max <- which.max(murders$total)
i_max
murders$state[i_max]
