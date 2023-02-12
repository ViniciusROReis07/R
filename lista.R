### Lista

clienes_nomes<-c("Roberta", "Maria", "Marcos", "Felipe")
clienes_quant<-c(12,10, 22, 12)
ID_clientes<-seq(101, 104)
novo_cliente<-c(TRUE, FALSE, FALSE, TRUE)


balancos <- list(ID_clientes, clienes_nomes, clienes_quant, novo_cliente, matrix(0,4,5), mean)

list(ID=seq(101, 104), nome=c("Roberta", "Maria", "Marcos", "Felipe"), Quant=c(12,10, 22, 12),
     Novo_cliente=c(TRUE, FALSE, FALSE, TRUE))

#Criando uma lista ja com os nomes dos elementos
balancos2 <- list(ID=ID_clientes,Nomes=clienes_nomes,Quantidades=clienes_quant, Novo_Cliente=novo_cliente, Historico=matrix(0,4,5),Media=mean(clienes_quant))

#Ou colonado nomes

balancos

names(balancos)<-c("Codigo do Cliente", "Nomes", "Quantidades Vendidas","Novo Cliente?", "Historico", "Media Vendida")

#Acessando dados de um array pelio nome

balancos$Historico
balancos$Nomes

balancos$Nomes[2]

balancos$`Quantidades Vendidas`[2]

#Acessando dados de um array pelo index

balancos[[1]]
balancos[[2]]
balancos[[3]]
balancos[[4]]
balancos[[5]]

historico<-balancos[[5]]

#Adicionando e removendo individuos da lista

balancos$Nomes[3] <- "Paulo"

balancos$`Quantidades Vendidas`[c(1,3)] <- c(13,23)

balancos$`Novo Cliente?` <- FALSE

balancos$Historico[1,] <- c(10, 13, 11, 17, 19)
balancos$Historico[4, 3] <- 20

balancos$Historico <- balancos$Historico[,-5]


balancos$Nomes[5]<- "Camila"
balancos$Nomes[5:8] <- c("Camila", "Fabio", "Marta", "Patricia")

balancos$Nomes <- balancos$Nomes[-c(3,7)]

colnames(balancos$Historico)<-c("Jan", "Fev", "Mar", "Abri")
rownames(balancos$Historico)<-balancos$Nomes[-c(5,6)]

balancos <- balancos[-6]






lista_info<-list(Data="12-10-2020", Gestor="Mauricio Almeida", Mes_referencia="Outubro")
lista_final<-c(balancos, lista_info)



names(lista_final)


unlist(lista_final)#Transforma a lista em um vetor








