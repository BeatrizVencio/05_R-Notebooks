#################### MANIPULAÇÃO DE DF ####################
# Primeira matriz
matriz <- matrix(1:6, nrow=2, ncol=3)
print(matriz)

# Atribuir nomes às linhas
rownames(matriz) <- c("Preço1", "Preço2")

# Atribuir nomes às colunas
colnames(matriz) <- c("Banana", "Maçã", "Laranja")
print(matriz)

# Outra forma de desenvolver uma matriz
M <- matrix(ncol=2, nrow=2, data = 1:4)
print(M)

# Acessando Elementos
matriz[1,2] # primeira linha, segunda coluna

# Acessando elementos da matriz
M[2,1] # segunda linha, primeira coluna
M[2, ] # só a segunda linha
M[ ,2] # só a segunda coluna 
M[ ,1:2] 
M[1:2,1] # intervalo 

# matriz em forma de data.frame
as.data.frame(M) # transforma em data.frame
as.matrix(M) # transforma em matriz

# Soma de Matrizes
matriz2 <- matrix(6:1, nrow=2, ncol=3)
soma <- matriz + matriz2
print(soma)

# Subtração de Matrizes
subtracao <- matriz - matriz2
print(subtracao)

# Divisão de Matrizes
divisao <- matriz / matriz2
print(divisao)

# Multiplicação de Matrizes
multi <- matriz * matriz2
print(multi)

# Outra forma de Multiplicação 
M1 <- matrix(c(1, 2, 3, 4), nrow=2) # Uma matriz 2x2
M2 <- matrix(c(2, 1, 0, 3), nrow=2) # Outra matriz 2x2
resultado <- M1 %*% M2
print(resultado)

# Como encontrar a transposta
transposta <- t(matriz)
print(transposta)

# Extrair a diagonal
diag_valores <- diag(matriz)
print(diag_valores)

# Definir uma nova diagonal
diag(matriz) <- c(10, 20)
print(matriz)

# Matriz de zeros
zeros <- matrix(0, nrow=3, ncol=3)
print(zeros)

# Matriz de uns
uns <- matrix(1, nrow=3, ncol=3)
print(uns)

# Adicione suas matrizes
matriz_A <- matrix(1:4, nrow=2)
matriz_B <- matrix(5:8, nrow=2)

# Combinação horizontal
horizontal <- cbind(matriz_A, matriz_B) # cria outra matriz usando as linhas
print(horizontal)

# Combinação vertical
vertical <- rbind(matriz_A, matriz_B) # cria outra matriz usando as colunas
print(vertical)


#################### EXERCÍCIO 02 ####################
# Instalando e carregando o pacote
if (!require("matrixStats")) {         # se precisar e ele nâo estiver instalado
  install.packages("matrixStats")      # o prórpio loop vai instalar, mas se nn
  library(matrixStats)                 # precisar, ele simplesmente pula o loop
} 

# Matriz hipotética de vendas
set.seed(42) # cria uma semente que gera valores dentro da mesma 
vendas <- matrix(sample(50:100, 9, replace=TRUE), nrow=3) # sample -> números grande de 50 a 100
                                                          # 9 -> pulando de 9 em 9 números 
                                                          # replace -> 
rownames(vendas) <- c("Produto_A", "Produto_B", "Produto_C")
colnames(vendas) <- c("Janeiro", "Fevereiro", "Março")
print(vendas)

aumento_percentual_m1_m2 <- (vendas[,2] - vendas[,1]) / vendas[,1] * 100
print(aumento_percentual_m1_m2)
aumento_percentual_m2_m3 <- (vendas[,3] - vendas[,2]) / vendas[,2] * 100
print(aumento_percentual_m2_m3)


produto_maior_aumento_m1_m2 <- rownames(vendas)[which.max(aumento_percentual_m1_m2)]
produto_maior_aumento_m2_m3 <- rownames(vendas)[which.max(aumento_percentual_m2_m3)]
                                              # which.max sempre idica o valor maior

cat("Produto com maior aumento de Mês 1 para Mês 2:", produto_maior_aumento_m1_m2, "\n")
cat("Produto com maior aumento de Mês 2 para Mês 3:", produto_maior_aumento_m2_m3, "\n")
