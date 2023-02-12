pedidos_emprestimos <- matrix(NA, nrow=4, ncol = 3, dimnames = (list(NULL, c("Nome do Cliente", "Salario Informado", "Idade"))))

pedidos_emprestimos[1,] <- c("Marcos de Aguar", "4000", "44")


pedidos_emprestimos[2,] <- c("Paula Miranda", "2500", "56")

pedidos_emprestimos[3,] <- c("Emilio Santos", "1200", "76")

pedidos_emprestimos[4,] <- c("Pryscila de Albuquerque", "3400", "40")

pedidos_emprestimos[2, 2] <- "5500.33"

pedidos_emprestimos[,2] <- as.numeric(pedidos_emprestimos[,2]) - ((as.numeric(pedidos_emprestimos[,2])*30)/100)

meida_salarial <- mean(as.numeric(pedidos_emprestimos[,2]))

colnames(pedidos_emprestimos, )