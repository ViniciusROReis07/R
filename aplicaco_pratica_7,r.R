cliente_1 <- list(Nome="Marcos", Salario="3200", Historico_Gastos=matrix(c(334, 356, 544), ncol = 3, nrow = 1), Idade=45)

cliente_2 <- list(Nome="Paulo", Salario="7500", Historico_Gastos=matrix(c(230, 280, 399), ncol = 3, nrow = 1), Idade=27)

cliente_3 <- list(Nome="Joao", Salario="1200", Historico_Gastos=matrix(c(120, 255, 270), ncol = 3, nrow = 1), Idade=19)


media_gastos_cliente_1 <- mean(as.numeric(cliente_1$Historico_Gastos))
media_gastos_cliente_2 <- mean(as.numeric(cliente_2$Historico_Gastos))
media_gastos_cliente_3 <- mean(as.numeric(cliente_3$Historico_Gastos))