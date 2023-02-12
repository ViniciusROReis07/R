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


#Igualdade

resumo$quant_Jan[2] == 100

resumo$fornecedores[2] == "Zaeli"

sum(resumo$quant_Jan[2]) == 400

sum(resumo$quant_Jan[2]) == 230


#Diferenca

resumo$quant_Jan[2] != 100

resumo$fornecedores[2] != "Zaeli"

sum(resumo$quant_Jan[2]) != 400

sum(resumo$quant_Jan[2]) != 230


# Operadores logicos "Comparativos"



#  > < >= <=
  
#>
resumo$quant_Jan[2] > 200
resumo$quant_Jan[2] > 500


#<
resumo$quant_Jan[2] < 200
resumo$quant_Jan[2] < 500

# <=

2 <= 3

resumo$quant_Fev[4] <= 90
resumo$quant_Fev[3] <= 40

#>=

resumo$quant_Fev[4] >= 90
resumo$quant_Fev[4] >= 40

#### "e"


(resumo$quant_Mar[3] > 300) & (resumo$quant_Mar[3] < 200)



#### "ou"

(resumo$quant_Fev[4] == 60) | (resumo$quant_Fev[2] < 650)









