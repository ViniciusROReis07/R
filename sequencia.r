#Criando sequencias

1:20

seq(1,25, 2) # O 3 argumento e a qtd de passos
seq(1,25, 0.5) # O 3 argumento e a qtd de passos

rep(3, 4) #Criacao por repedicao, vai repedir o1 argumento a qtd do segundo argumento
rep(1:4, 5)

produtos<-c("TV", "Refigerador","Notebok", "Celular")

rep(produtos, 3, each=2) #each e a qtd de vezes que um elemento vai aparecer

#Amostras aleatorias


sample(1:30, 10) #1 argumento e uma lista e p 2 a qtd de elementos que quero daquela sequencia, sempre que essa funcao for executada ela retornara valores diferentes
sample(1:30, 10, replace = T ) #replace exclui um valor e esse valor nao sera sortiado novamente nesse sorteio, se o valor for T pode sortear o mesmo numero 2 vezes


doc_produtos<-100:150

doc_produtos[3]

doc_produtos[3:9]

doc_produtos[c(4,10)]

doc_produtos[3]<-1002



