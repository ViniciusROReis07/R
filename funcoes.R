fornecedores <- c("A", "B", "E", "D", "X")
quant_Jan <- c(120, 230, 200, 340, 10)
quant_Fev <- c(220, 630, 60, 50, 60)
quant_Mar <- c(520, 430, 100, 34, 10)


resumo <- cbind(fornecedores, quant_Jan, quant_Fev, quant_Mar)

resumo <- as.data.frame(resumo)

resumo$fornecedores <- c("Camil", "Zaeli", "Tio Joao", "Danone", "Liza")

resumo$quant_Abril <- c(130, 300, 240, 145, 225)
resumo$capacidade<- c(460, 500, 470, 390, 100)

##### 1 - Cadastre pedidos novos (continuar cadastrando ate que o usuario interrompa)
##### 2 comprar os pedios de acordo com o estoque de cada forncedor

tabela_f <- resumo[,c(1,6)]
tabela_f$Preco <- c(12, 14, 23, 44, 20)



novos_pedidos<-function(nome, tabela_fornecedores){
  k<-0
  meus_pedidos<- c()
  
  while(k==0){
    print("------------------- NOVO PEDIDO ------------------------")
    cat("Temos ", nrow(tabela_fornecedores), "forncedores cadastrados. \n")
    
    for (i in 1:nrow(tabela_fornecedores)) {
      cat("Quntas quantidade voce deseja pedir a ", tabela_fornecedores$fornecedores[i], "? \n")
      meus_pedidos[i] <- scan(n=1) #cadastro dos pedidos
      
      if(meus_pedidos[i]<0.1*tabela_fornecedores$capacidade[i]){
        cat("Pedido Muito baixo. Ele deve ser maior que ", 0.1*tabela_fornecedores$capacidade[i], "unidades \n")
      
      }else{
        if(meus_pedidos[i]<=tabela_fornecedores$capacidade[i]){
          print("Pedido Enviado com Sucesso!")
        }
        if(meus_pedidos[i]>tabela_fornecedores$capacidade[i]){
          cat("Pedido ACIMA do estoque maximo. O pedido deve ser no maximo ", tabela_fornecedores$capacidade[i], "unidades \n")
        }
        
      }
      
    }
    
    print(" ----------------- Revise seu pedido ------------------ \n")
    tabela_fornecedores$Pedidos <- meus_pedidos
    
    print(tabela_fornecedores)
    
    print("------------ DIGITE 0 (Continuar pedidos) --------- 1 (Finalizar pedido)")
    k<- scan(n=1)
    
  }
  
  return(tabela_fornecedores)
  
}

novos_pedidos("Vinicius", tabela_f)











