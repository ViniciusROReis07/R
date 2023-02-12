desempenho<-array(0,dim=c(4,5,3))

r.names<-c("Cliente 1","Cliente 2","Cliente 3","Cliente 4")
c.names<-c("Nome","Salário","Idade","Motivo","Valor Solicitado")
matrizes.names<-c("Funcionário 1 - Melissa M.","Funcionário 2 - Carlos P.","Funcionário 3 -
Luciana T.")
desempenho<-array(0,dim=c(4,5,3),dimnames=list(r.names,c.names,matrizes.names))

funcionario1<-cbind(Nome=c("Marcos","Paulo","João","Kamila"),
                    Salario=c(4000,3000,4500,2300),
                    Idade=c(45,33,36,45),
                    Motivo=c("Compra de Carro","Reforma da Casa","Viagem","Compra de Casa"),
                    Valor.Pedido=c(45000,34000,20000,120000))
funcionario2<-cbind(Nome=c("Marcela","Fábio","Luana","Romero"),
                    Salario=c(3200,4500,2500,1300),
                    Idade=c(34,30,56,54),
                    Motivo=c("Compra de Carro","Viagem","Viagem","Compra de Carro"),
                    Valor.Pedido=c(75000,55000,19000,90000))

funcionario3<-cbind(Nome=c("Gustavo","Bruno","Joana","Vânia"),
                    Salario=c(11000,5600,1580,6300),
                    Idade=c(56,29,44,57),
                    Motivo=c("Compra de Casa","Viagem","Compra de Apartamento","Reforma da Casa"),
                    Valor.Pedido=c(55000,8000,21000,7000))

desempenho[,,1]<-funcionario1
desempenho[,,2]<-funcionario2
desempenho[,,3]<-funcionario3

total<-rbind(desempenho[,,1],desempenho[,,2],desempenho[,,3])
total<-as.data.frame(total) #transformando em Data Frame

rownames(total)<-seq(1:12) #simplificando o nome das linhas

str(total$Salário)
str(total$Idade)
str(total$Valor.Solicitado)

total$Valor.Solicitado <- as.numeric(total$Valor.Solicitado)


# a) criando um fator através da função gl(n, k, labels) # n: quantidade de níveis, k repetições
funcionario<-gl(3, 4, labels=c("Melissa M.","Carlos P.","Luciana T."))
# b) adicionando ao banco
total$funcionario<-funcionario
# c) fazendo filtro por funcionário
total[funcionario=="Melissa M.",]
total[funcionario=="Carlos P.",]
total[funcionario=="Luciana T.",]


table(total$Motivo) #contagem dos motivos

barplot(table(total$Motivo)) #sobre a tabela criada no item "a)" para ver o gráfico de barras.

pie(table(total$Motivo)) #) sobre a tabela criada no item acima para ver o gráfico de pizza

