fornecedores <- c("A", "B", "E", "D", "X")
quant_Jan <- c(120, 230, 200, 340, 10)
quant_Fev <- c(220, 630, 60, 50, 60)
quant_Mar <- c(520, 430, 100, 34, 10)


resumo <- cbind(fornecedores, quant_Jan, quant_Fev, quant_Mar)

resumo_df <- as.data.frame(resumo)


data.frame(fornecedores= c("A", "B", "E", "D", "X"),
           quant_Jan =c(120, 230, 200, 340, 10),
           quant_Fev =c(220, 630, 60, 50, 60),
           quant_Mar =c(520, 430, 100, 34, 10)
)

data.frame(V1=fornecedores, V2=quant_Jan, v3=quant_Fev, v4=quant_Mar)



resumo_df[2,] # acessando uma linha especifica

resumo_df[2:4,]

resumo_df[c(1,5),]

resumo_df$quant_Jan #acessando uma variavel especifica

resumo_df[,c(1,4)]


resumo_df$fornecedores[3]
resumo_df[3,1]


a<- as.factor(a)  #transforma sua variável "a" em um fator

b<-as.character() #transforma sua variável "b" em um vetor de texto

c<- as.numeric(c)  #transforma sua variável "c" em um vetor de números



resumo <- data.frame(fornecedores, quant_Jan, quant_Fev, quant_Mar) # Ja cria com o tipo de variavel correto

str(resumo)

resumo_1 <- cbind(fornecedores, quant_Jan, quant_Fev, quant_Mar)
resumo_1 <- as.data.frame(resumo_1)

str(resumo_1) # Tpo corretos das variaveis

resumo_1$quant_Fev + 10 # Nao e possivek porque esta como categorica

resumo_1$quant_Jan <- as.numeric(as.character(resumo_1$quant_Jan)) # Para conventer de categorica para numerico
resumo_1$quant_Mar <- as.numeric(as.character(resumo_1$quant_Mar)) # Para conventer de categorica para numerico



resumo$quant_Jan[5]<-100
resumo$quant_Fev[2:4]<- c(640, 75, 60)

resumo$quant_Mar[c(1,4)] <- c(130, 400)

resumo$fornecedores <- c("Camil", "Zaeli", "Tio Joao", "Danone", "Liza")


#Adicionar variaveis ao DataFrame

resumo$quant_Abril <- c(230, 250, 140, 320, 101)

#Remover variaveis do DataFrame

resumo <- resumo[, -5]

resumo[6,] <- c("Friboi", 0, 0, 55)

resumo <- resumo[-6,]
resumo <- resumo[-c(1,4),]

ncol(resumo)
nrow(resumo)

dim(resumo)

length(resumo$quant_Jan)
names(resumo)


View(resumo) #Cria uma visualizacao igual ao excel


summary(resumo) #Quando for variaveis numericas calcula a media, min, max e etc
str(resumo)




