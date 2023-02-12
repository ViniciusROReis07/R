array(elementos, dimensao, nomesdasdimensoes)

# Criacao de Arrays usando matrizes

A<-matrix(1:20, nrow = 4, ncol = 5)

array(A, dim = c(4,5,2)) # quando retira o terceiro argumento de dim ele cria uma matriz, o terceiro arqumento do dim e a qtd de matrizes que eu quero

array(0, dim = c(3,4,2))

array(c("Tv", "Galadeira", "Rack"), dim = c(3,2,3))

# Criacao de Arrays usando vetores

vendas<-c(12, 24, 30)
produtos<-c("TV", "Geladeira", "Cama")

array(c(produtos, vendas), dim = c(3,2,2))

vendas_totais <- array(c(produtos, vendas), dim = c(3,2,3))


nomes_variaveis<-c("Produtos", "Quantidade")
nomes_matrizes<-c("Janeiro", "fevereiro", "Marco")
nomes_linhas<-c("Marcos", "Joao", "Maria")

vendas_totais<-array(c(produtos, vendas), dim= c(3,2,3), dimnames = list(nomes_linhas, nomes_variaveis, nomes_matrizes))


dim(vendas_totais)

vendas_totais[linha, coluna, matriz]


vendas_totais[,,1] #Vendas de Janeiro

vendas_totais[,,2] #Vendas de Fevereirp

vendas_totais[,,3] #Vendas de Marco



vendas_totais[,1,] #Coluna 1 de cada Matiz = Produtos vendidos em cada mes

vendas_totais[,2,] #Coluna 2 de cada Matiz = Quntidades vendidos em cada mes


vendas_totais[1, ,] # A linha 1 de cada tabela = producao de Marcos (produtos e quantidades)


vendas_totais[2, ,] # A linha 2 de cada tabela = producao de Joao (produtos e quantidades)


# Combinacao de dimensoes


vendas_totais[,2,1] #Vendas Janeiro, quantidades


vendas_totais[1,,1]

vendas_totais[1,2,1]

vendas_totais[3,,3]

vendas_totais[2,1,2]

vendas_totais[1,2,1] <- 14

vendas_totais[2,,2] <- c("Freezer", 10)

vendas_totais[2:3,2,3] <- c(34, 80)


vendas_totais[c(1,3),2,3] <- c(20, 40)




#Nomeando as dimensoes

nomes_variaveis<-c("Produtos", "Quantidade")
nomes_matrizes<-c("Janeiro", "fevereiro", "Marco")
nomes_linhas<-c("Marcos", "Joao", "Maria")

vendas_totais<-array(c(produtos, vendas), dim= c(3,2,3), dimnames = list(nomes_linhas, nomes_variaveis, nomes_matrizes))


vendas_totais[,2,]

sum(as.numeric(vendas_totais[,2,]))
max(as.numeric(vendas_totais[,2,]))

















vendas_sem1 <-c(12, 10, 8)
vendas_sem2 <- vendas_sem1*2
vendas_sem3 <- vendas_sem1*3
vendas_sem4 <- vendas_sem3+15



array(c(vendas_sem1, vendas_sem2, vendas_sem3, vendas_sem4), dim=c(3,4,3))

nomes_colunas <- c("Semana 1", "Semana 2", "Semana 3", "Semana 4")
nomes_linhas <- c("Marcos", "Joao", "Maria")
nomes_matrizes <- c("Janeiro", "Fevereiro", "Marco")
vendas_totais <- array(c(vendas_sem1, vendas_sem2, vendas_sem3, vendas_sem4), dim=c(3,4,3), dimnames=list(nomes_linhas, nomes_colunas, nomes_matrizes))


apply(array, margin, ...)

apply(vendas_totais, 2, sum)# o segundo argumento e para especificar se quero linhas = 1 ou colunas = 2, e nessa funcao podemos utilizar as operacoes de vetores
#



