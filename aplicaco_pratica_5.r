pedidos_emprestimos <- array(0, dim=c(4,5,3))

nomes_linhas = c("Cliente 1" ,"Cliente 2", "Cliente 3", "Cliente 4")
nomes_colunas = c("Nome", "Salario", "Idade", "Motivo do Emprestimo", "Valor Solicitado")
nomes_matrizes = c("Melissa M.", "Carlos P.", "Luciana T.")

pedidos_emprestimos <- array(0, dim=c(4,5,3), dimnames = list(nomes_linhas, nomes_colunas, nomes_matrizes))

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

pedidos_emprestimos[,,1] <- funcionario1
pedidos_emprestimos[,,2] <- funcionario2
pedidos_emprestimos[,,3] <- funcionario3


comissoes_funconario1 <- mean(as.numeric(pedidos_emprestimos[,5,1]))
comissoes_funconario2 <- mean(as.numeric(pedidos_emprestimos[,5,2]))
comissoes_funconario3 <- mean(as.numeric(pedidos_emprestimos[,5,3]))

