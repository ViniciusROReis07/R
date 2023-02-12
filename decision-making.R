fornecedores <- c("A", "B", "E", "D", "X")
quant_Jan <- c(120, 230, 200, 340, 10)
quant_Fev <- c(220, 630, 60, 50, 60)
quant_Mar <- c(520, 430, 100, 34, 10)


resumo <- cbind(fornecedores, quant_Jan, quant_Fev, quant_Mar)

resumo <- as.data.frame(resumo)

resumo$fornecedores <- c("Camil", "Zaeli", "Tio Joao", "Danone", "Liza")

resumo$quant_Abril <- c(130, 300, 240, 145, 225)
resumo$capacidade<- c(460, 500, 470, 390, 100)

i <- 5

if(resumo$quant_Abril[i]<=resumo$capacidade[i]){
  print("Pedido aprovado")
}else{
  if(resumo$quant_Abril[i]>1000){
    cat("Pedido absurdamente alto")
  }else{
    cat("Desculpe! A quantidade solicitada SUPERA a capacidade do fornecedor", resumo$fornecedores[i], "\n")
  }
}



for(i in 1:nrow(resumo)){
    if(resumo$quant_Abril[i] <= resumo$capacidade[i]){
      print("Pedido Aceito")
    }else{
      cat("Atencao! O seu pedido de", resumo$quant_Abril[i], "Supera o limite de ", resumo$capacidade[i], "do fornecedor", resumo$fornecedores[i], "\n")
    }
}





