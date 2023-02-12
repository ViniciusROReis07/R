clientes <- c("Marcos Aguar", "Paula Miranda", "Emilio Santos", "Priscila de Albuquerque")

match("Priscila de Albuquerque", clientes)

clientes[4] <- "Pryscilla de Albuquerque"


salarios <- c(4000, 2500, 1200, 3400)

salarios <- salarios - ((salarios*30)/100)