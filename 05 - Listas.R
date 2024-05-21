#################### LISTAS ####################
# Função list (Lista)
list()
i <- list(2, 3, "c","d", FALSE, 2+3i, 4+2i)
i

# Criando uma lista e atrelando a nomes
minha_lista <- list(nome = "Beatriz", idade = 30, notas = c(8, 9, 10))

# Acessar o campo nome 1ª Forma
minha_lista$nome 

# Acessar o campo nome 2ª Forma
minha_lista[[1]] 

# Adicionar um novo campo
minha_lista$curso <- "Ciência de Dados"
minha_lista$curso
minha_lista[[4]]

# Remover o campo nome
minha_lista$nome <- NULL

# Criar uma lista com diferentes tipos de dados
exemplo_lista <- list(inteiro = 1, texto = "Oi", booleano = TRUE)

# Criar uma lista que contém outra lista
lista_aninhada <- list(primeira_lista = exemplo_lista, numero = 42)

# Acessar um elemento dentro de uma lista aninhada
lista_aninhada$primeira_lista$texto 

# Converter uma lista para um vetor (se possível)
lista_simples <- list(1, 2, 3)
vetor_convertido <- unlist(lista_simples) 

# Nomear elementos de uma lista já existente
names(exemplo_lista) <- c("Int", "Str", "Bool")
exemplo_lista

# Remover elementos de uma lista pelo nome
exemplo_lista$Int <- NULL
exemplo_lista


#################### ORDENAÇÃO DOS DADOS ####################
# Criar o Vetor
vetor <- c(4, 1, 7, 2)

# Ordenação de vetores
sort(vetor)

# Atributo de Ordem
sort(vetor, decreasing = TRUE)

# Carregar o pacote dplyr
install.packages("dplyr")
library(dplyr)

# Criar um dataframe de exemplo
df <- data.frame(nome = c("Ana", "Bob", "Cid"), idade = c(23, 45, 19))

# Ordenar por idade
df_ordenado <- arrange(df, idade)
print(df_ordenado)

# Carregando pacote e dados
install.packages("dslabs")
library(dslabs)
data(murders)

# Ordenando dados
sort(murders$total)

# Crie um novo vetor
x <- c(31, 4, 15, 92, 65)
x

# Ordene os vetores e crie um índice
sort(x)
index <- order(x)

# Analisando os índices gerados
x[index]
order(x)

# Analisando índices ordenados
murders$state[1:10]
murders$abb[1:10]

# Analisando e acessando índices ordenados
index <- order(murders$total)
murders$abb[index]

# Analisando índices ordenados
max(murders$total)
i_max <- which.max(murders$total)
i_max
murders$state[i_max]

# Acessar a coluna de população e armazenar na variável pop
pop <- murders$population

# Usar o comando order para encontrar o vetor de índices que ordena pop
ord <- order(pop)

# Encontrar o índice do estado com o menor tamanho da população
indice_menor_pop <- ord[1]
print(paste("O índice do estado com a menor população é:", indice_menor_pop))

#################### ATIVIDADE AVALIATIVA 3 #################### 
estudante <- list(nome = "Maria", 
              idade = 20, 
              notas = c(8, 9, 7), 
              disciplinas = c("Matemática", "História"))

estudante$nome

estudante$idade <- 21
print(estudante)

estudante$esporte <- "Futebol"
print(estudante)

estudante$esporte <- NULL
print(estudante)

novo_estudante <- list(nome = "Beatriz", 
                       idade = 25, 
                       notas = c(1, 2, 3), 
                       disciplinas = c("Geografia", "Filosofia"))

turma <- list(estudante, novo_estudante)
print(turma)

