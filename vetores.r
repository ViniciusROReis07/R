vendas<-c(12, 15, 3, 5)

meses<-c("Jan", "Fev", "Mar", "Abril")

vendas2<- scan()
  
#<- atribuir um valor
#NOME <- x

Genero<-c("Masculino", "Feminino")


vendas
meses

vendas[4] #No R comeca no index 1
vendas[c(1, 4)] #Pegando multiplos index
vendas[1:3] #Pega valores em um intervalo

vendas[3]<-13 #Alterando vaores de acordo com o index

vendas[4]<-15

vendas[c(1, 4)]<- c(0, 90) #Alterando multiplos valores de acordo com o index sem intervalo
vendas[2:4] <-c(40, 35, 28) #Alterando valores em sequencia

meses[3:4]<-c("Marco", "Abril")

vendas[-4] #Quando colocamos o - antes de um index do vetor estamos omitindo aquele index

vendas <- vendas[-4]

vendas[4] <- 70

vendas[5:7] <- c(23, 43, 15)



length(vendas)#Verificar o tamanho de um vetor

vendas + 2 # Soma + 2 em cada valor do vetor

vendas * 2 # Multiplica * 2 em cada valor do vetor

vendas / 2 # Divide / por 2 em cada valor do vetor

vendas - 2 # Menos - 2 em cada valor do vetor



vendas ** 3 #Elevand ** por 3 em cada valor do vetor


log(vendas) # Calculando o logaritimo de cada item d vetor


mean(vendas) #Calcula a media do valor

max(vendas) # Retorna o maior valor de um vetor

min(vendas) # Retorna o menor valor de um vetor

sqrt(vendas) # Calcula a raiz de cada item do vetor

sort(vendas) #ordena um vetor

sort(vendas,decreasing = T)

#para atualizar o vetor

vendas <- vendas + vendas * 2

vendas_v1 <- vendas 

vendas_v2 <- c(15, 30, 40, 23, 34, 31, 80)

vendas_v1 + vendas_v2 #Soma index com index, precisa ter o mesmo tamanho
vendas_v1 - vendas_v2 #Subtrai index com index, precisa ter o mesmo tamanho
vendas_v1 - vendas_v2 + vendas * 4





vendedor1 <-c("Nike", "Adidas", "Olympikus")
vendedor2 <-c("Adidas", "Mizuno", "Topper")

union(vendedor1, vendedor2) #Retorna todas as marcas vendidas, nao a repeticao de valores

intersect(vendedor1, vendedor2) #Valor presente nos dois vetores

setdiff(vendedor2, vendedor1) #Retorna os valores que so estao presentes no vetor que e o primeiro argumento
setdiff(vendedor1, vendedor2)


arroz_marcas <-c("Camil", "Tio Joao", "Prato fino", "Milano")
feijao_marcas <-c("Kicaldo", "Milano", "Urbano", "Camil")

interaction(arroz_marcas, feijao_marcas) #Retorna todas as possiveis combinacoes

a<-c("Camisa 1","Camisa 2")

b<-c("Calca 1","Calca 2","Calca 3")

expand.grid(a,b)



#A diferença do método anterior interaction() é que enquanto esse resulta em um fator (variável categórica), o expand.grid() resulta em um data frame com todas as combinações.


produtos<-c("TV", "Refigerador","Notebok", "Celular")
quantidades<-c(30, 36, 20, 15)


quantidades> 10
quantidades>= 20
quantidades < 10
quantidades <= 20
quantidades == 25
quantidades != 25



quantidades2<- quantidades*2

quantidades == quantidades2

quantidades != quantidades2

quantidades > quantidades2

quantidades < quantidades2

quantidades[3] == 60



produtos == "TV"

sum(produtos == "TV") #Em muitas linguagens o 0 == false e o 1 = true, utilizando a funcao de soma podemos comparar todos os valores que se aquele valor existir sempre vai retonar >= 1


nomes<-c("Maria","João","Luiza","Paula")

match("Paula", nomes)   # Localiza em qual posição (índice) do vetor está o elemento "Paula".






