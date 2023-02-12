#1)

pedidos_emprestios <- matrix(c(NA, NA, NA), 4, 3, F,list(NULL, c("Nome", "Salario", "Idade")))

pedidos_emprestios[1, ] <- c("Marcos de Aguiar", 4000, 44)
pedidos_emprestios[2, ] <- c("Paula Miranda", 2500, 56)
pedidos_emprestios[3, ] <- c("Emilio Santos", 1200, 76)
pedidos_emprestios[4, ] <- c("Pryscilla de Albuquerque", 3400, 40)

#2)
pedidos_emprestios[2, 2] <- 5500.33

