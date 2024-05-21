#################### Primeiro Código em R #################### 
mensagem <- "Vou passar em introdução a R com SS"
print(mensagem)

# Dúvidas sobre funções
?print
?log
?mean
help(mean)

# Importando a base
data("mtcars")
help(mtcars)


#################### SOBRE AS VARIÁVEIS #################### 
# Permitido
x <- 1
x1 <- 2
objeto <- 3
meu_objeto <- 4
meu.objeto <- 5

# Não permitido
1x <- 1
_objeto <- 2
meu-objeto <- 3

# Salvar variáveis diferentes
b <- 2
B <- 3
b
B

# Diferença entre = e <- Isso funciona?
a = 1
b = 1
c = -1
z = 'Beatriz Vencio'
OU
a <- 1
b <- 1
c <- -1
z <- 'Beatriz Vencio'


#################### DIFERENÇA ENTRE = E <-: #################### 
# Isso funciona
my_function <- function(a = 1){
  return(a + 1)
}
my_function(10)
rm(my_function)

# Isso não funciona
my_function <- function(a <- 1){
  return(a + 1)
}


#################### VISUALIZAR E EXCLUIR VARIÁVEIS #################### 
#Observar suas variáveis
ls(a)
ls

#Removendo variável, vetor, fator, etc...
rm ()
rm (z)
rm(list = ls())

# Classificando Variáveis
class(a)
class(b)
class(c)
class(z)

# Erro no R:
5 + 
  ??????((((()))))


#################### CÁLCULOS BÁSICOS #################### 
# Cálculo de adição
a <- 5
b <- 3
soma <- a + b
print(soma)

# Cálculo de subtração
a <- 5
b <- 3
subtracao <- a - b
print(subtracao)

# Cálculo de multiplicação
a <- 5
b <- 3
multiplicacao <- a * b
print(multiplicacao)

# Cálculo de divisão
a <- 10
b <- 2
divisao <- a / b
print(divisao)

# Cálculo de exponenciação
a <- 2
b <- 3
exponenciacao <- a^b
print(exponenciacao)

# Cálculo do resto da divisão
a <- 10
b <- 3
resto <- a %% b
print(resto)

# Cálculo da divisão inteira
a <- 10
b <- 3
divisao_inteira <- a %/% b
print(divisao_inteira)

# Cálculo do resto da raiz quadrada
a <- 9
raiz_quadrada <- sqrt(a)
print(raiz_quadrada)


#################### DESAFIO #################### 
# Realizar a fórmula de Bhaskara com as seguintes informações:
a <- 1
b <- -7
c <- 10 

# Resolução
r1 <- (-b+sqrt(b^2 -(4*a*c)))/2*a
r2 <- (-b-sqrt(b^2 -(4*a*c)))/2*a

print(r1)
print(r2)

# Instalando e chamando pacotes
install.packages("ggplot2")
library(ggplot2) # puxa todas as funções da biblioteca
require(ggplot2) # puxa partes específicas da biblioteca
