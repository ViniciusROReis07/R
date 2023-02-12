produtos<-c("TV", "Refigerador","Notebok", "Celular")

quantidades<-c(30, 36, 20, 15)


vendas <- cbind(produtos, quantidades) #Junta vetores para criar uma matriz e cada vetor e uma coluna e o mais acomselhado de criar a partir de vetores

vendas <- rbind(produtos, quantidades) #Junta vetores para criar uma matriz e cada vetor e uma linha



matrix(1:20, nrow =4 , ncol =5)

matrix("Brasil", nrow =4 , ncol =5)

matrix(0, nrow =4 , ncol =5)


matrix(1:20, nrow =4 , ncol =5, byrow= T)

matrix(1:30, nrow =4 , ncol =5, byrow= T) # da erro porque ele vai tentar preencher uma matriz que na armeza toda essa qtd

matrix(1:5, nrow =4 , ncol =5, byrow= T) # Quando acabare a qtd de itens ele vai comecar a repetir


matrix(1:5, nrow =4 , ncol =5)






vendas[linha, coluna]

vendas[1, 2]

vendas[1, ] # Buscando todos os dados de uma linha

vendas[, 2] # Buscando todos os dados de uma cluna

vendas[2:4,]#Buscando todos os dados em um intervalo de linhas



vendas[4, 2]

vendas[2,1]


vendas_jan <- vendas
vendas_fev <- vendas_jan
vendas_fev[, 2] <- as.numeric(vendas_jan[,2]) + 2 #modificandos todos os itens que estao na segunda coluna, as.numeric converte string para numero

vendas_fev[1,1]<-c("Televisor") # Alterando um valor especifico


vendas_fev[3, ] <- c("PC", 40) # Alterando uma linha completa


vendas_fev[2:4, 2] <- c(12, 100, 30) # Alterando a segunda coluna em um intervalo de linhas

vendas_fev[c(1, 4), 1] <- c("Tv", "Smartphone") #Alterando a primeira coluna de duas linhas especificas

vendas_fev[, -1] # Exluindo a primeira coluna de todas as linhas
vendas_fev[-2, ] # Excluindo todas as colunas da segunda linha
vendas_fev[-1, -2]




carlos<-c(120, 130, 400, 230)
marcos<-c(20, 334, 420,130)
maria<-c(22, 28, 19, 10)


vendas_reais <- cbind(carlos, marcos, maria)


dim(vendas_reais) # retorna a dimensao de um array

nrow(vendas_reais) # retorna a qtd de linhas de um array

ncol(vendas_reais) # retorna a qtd de colunas de um array

#dim()[2] igual a ncol()
#dim()[1] igual a nrow() 


vendas_reais - 2
vendas_reais <- vendas_reais + 5

comissoes <- vendas_reais * 0.10

comissoes/2

comissoes ** 2

sqrt(comissoes)

log(comissoes)

sum(comissoes[,1])
mean(comissoes[,1])
mean(vendas_reais[,1])

sum(comisses)

Jan<-comissoes*2
Fev<-comissoes

Jan + Fev
Jan - Fev

Jan * Fev

Jan %*% Fev[-3,]

dim(Jan)
dim(Fev[-3,])


A <- matrix(0, nrow = 5, ncol = 10)
image(A)

A<-matrix(1:50, nrow=5, ncol = 10)
image(A)
image(volcano)

contour(A)
contour(volcano)

persp(A)
persp(volcano)




#2x=10

solve(2, 10) #Resolve formulas matematicas

#3x + 2y = 8
#1x + 1y = 2

linha1<-c(3, 2, 8)
linha2<-c(1, 1, 2)

A<-rbind(linha1, linha2)

solve(A[, 1:2], A[,3]) #Calculando a matriz inversa

det(A[,-3]) # Determinante da matriz

A

t(A)# Matriz transporta 
























