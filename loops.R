fornecedores <- c("A", "B", "E", "D", "X")
quant_Jan <- c(120, 230, 200, 340, 10)
quant_Fev <- c(220, 630, 60, 50, 60)
quant_Mar <- c(520, 430, 100, 34, 10)


resumo <- cbind(fornecedores, quant_Jan, quant_Fev, quant_Mar)

resumo <- as.data.frame(resumo)

resumo$fornecedores <- c("Camil", "Zaeli", "Tio Joao", "Danone", "Liza")

str(resumo)

resumo$quant_Jan <- as.numeric(as.character(resumo$quant_Jan)) # Para conventer de categorica para numerico
resumo$quant_Fev <- as.numeric(as.character(resumo$quant_Fev)) # Para conventer de categorica para numerico
resumo$quant_Mar <- as.numeric(as.character(resumo$quant_Mar)) # Para conventer de categorica para numerico


#Novos pedidos

resumo$quant_Abril <- c(200, 300, 260, 150, 430)

#objetivo: Fazer o usuario revisar seu pedido

for (i in 1:nrow(resumo)) {
  cat("Voce pediu", resumo$quant_Abril[i], "Unidades ao fornecedor", resumo$fornecedores[i],". Pedido realizado \n") #Funcao para concatenar textos com variaveis
}


i<- 1

while(i<=nrow(resumo)){
  cat("Voce pediu", resumo$quant_Abril[i], "Unidades ao fornecedor", resumo$fornecedores[i],". Pedido realizado \n") #Funcao para concatenar textos com variaveis
  i <- i + 1
}


k<- 0
while(k==0){
  print("Continuar Pedido: Sim(0) Nao(1)")
  k<-scan()
}









