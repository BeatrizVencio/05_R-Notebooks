#################### ESTRUTURA DE REPETIÇÃO ####################
# Imprimir os números de 1 a 5 usando o “for”
for(i in 1:5) {
  print(i)
}

# Imprimir os números de 1 a 5 usando o “while”
i <- 1
while(i <= 5) {
  print(i)
  i <- i + 1
}

# Somando Números de 1 a 10 com a função “for”
soma <- 0
for (i in 1:10) {
  soma <- soma + i
}
print(paste("A soma dos números de 1 a 10 é:", soma))

# Instalar o pacote 
install.packages("dslabs")
library(dslabs)
data("murders")

# Iterar Sobre as Linhas e Printar os Nomes dos Estados
for (i in 1:nrow(murders)) {
  print(murders$state[i])
}

# Printar Nomes dos Estados Até Chegar a um Estado Específico
i <- 1
while (murders$state[i] != "New York") {
  print(murders$state[i])
  i <- i + 1
}

# Calcular e Armazenar a Taxa de Assassinato por 100.000 Habitantes
taxa_assassinato <- numeric()
for (i in 1:nrow(murders)) {
  taxa <- (murders$total[i] / murders$population[i]) * 100000
  taxa_assassinato <- c(taxa_assassinato, taxa)
}
murders$taxa_assassinato <- taxa_assassinato


#################### CONTROLE DE FLUXO ####################
# Usando combinações de controles de fluxo (repeat e break)
i <- 1
repeat {
  print(i)
  if (i >= 5) {
    break
  }
  i <- i + 1
}

# Usando repeat e break para encontrar o primeiro número quadrado maior que 20
i <- 1
repeat {
  square <- i * i
  if (square > 20) {
    print(paste("O primeiro número quadrado maior que 20 é", square))
    break
  }
  i <- i + 1
}

# Teste de decisões com if & else
x <- 5
if (x > 10) {
  print("x é maior que 10")
} else {
  print("x é menor ou igual a 10")
}

# Usando next para pular números ímpares em um loop
for (i in 1:10) {
  if (i %% 2 != 0) {
    next
  }
  print(paste("O número", i, "é par."))
}

# Instalar o pacote 
install.packages("dslabs")
library(dslabs)
data("murders")

# Uso do if e else para Filtrar Estados com Alta Taxa de Homicídio
for (i in 1:nrow(murders)) {
  if (murders$taxa_assassinato[i] > 5) {
    print(paste(murders$state[i], "tem uma alta taxa de homicídio."))
  } else {
    print(paste(murders$state[i], "tem uma baixa taxa de homicídio."))
  }
}

# Uso do next para Ignorar Estados com População Menor que 1 Milhão
for (i in 1:nrow(murders)) {
  if (murders$population[i] < 1000000) {
    next
  }
  print(paste("O estado", murders$state[i], "tem população de", murders$population[i]))
}
