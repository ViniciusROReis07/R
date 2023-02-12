install.packages("forcats")

genero<-c("2", "2", "1", "1", "2", "3")

genero_ft<-as.factor(genero)
str(genero)
str(genero_ft)

a<-factor(c("2", "2", "1", "1", "2", "3"))
str(a)

genero_ft[1]
genero_ft[2]

genero_ft[2:4]

genero_ft[length(genero_ft)]

genero_ft[2] <- 3

















produtos_online<-factor(c("Produto A", "Produto C", "Produto A", "Produto B", "Produto C", "Produto B" ))
produtos_pres<-factor(c("Produto C", "Produto C", "Produto B", "Produto A", "Produto A" ))

library(forcats)

vendas <- fct_c(produtos_online, produtos_pres)



## Alterar o label dos nveis do fator
genero_ft <- factor(c(1,2,2,2,2,3,1,1))

plot(genero_ft)

a<-lvls_revalue(genero_ft, c("Masculino", "Feminino", "Outros"))

plot(a)

levels(genero_ft)<-c("Masculino", "Feminino", "Outros")

plot(genero_ft)










genero_ft <- factor(c(1,1,3,2,3,1,1,2,3))
plot(genero_ft)


a<-fct_recode(genero_ft, Masculino="1") #Alterar uma label especifica

plot(a)





como_sube<-factor(c("Internet", "INTERNET","net", "Google", "Pesquisa na Web", "amigo", "amiga", "uma pessoa"))

a<-fct_collapse(como_sube, Internet=c("Internet", "INTERNET","net", "Google", "Pesquisa na Web"), Amigo=c("amigo", "amiga", "uma pessoa"))


plot(a)




estado_civil<-factor(c("Solteiro", "solteiro","viuvo", "divorciado", "solteiro", "casado","casado", "uniao estaval"))


plot(estado_civil)



a<-fct_lump(estado_civil, 2, other_level = "Outros") #Deixando as duas categorias que mais aparecem em evidencia

plot(a)






escolariedade <- factor(c("Superior", "Fundamental", "Fundamental", "Pos-graduacao", "Ensino_Medio", "Superior"))

plot(escolariedade)

a<-fct_relevel(escolariedade, c("Fundamental", "Ensino_Medio", "Superior", "Pos-graduacao")) # Reoorganizando o nivel de sequqncia de cada variavel, pois por padrao cria em ordem alfabetica
plot(a)

# Criterios para ordernar os niveis do fator
# Ordem alfabetica
# Ordem Racional      Ensino medio < Superior < Mestrado < Doutorado
# Ordernar por uma variavel externa

faturamento <-c(30, 24, 12, 40, 20, 30, 44, 53)
escolariedade <- factor(c("Fudamental", "Superior", "Mestrado", "Doutorado", "Doutorado", "Fundamental", "Mestrado", "Doutorado"))

# Reodernar os niveis de acordo com uma funcao extrerna, primeiro vem o menor nivel
fct_reorder(escolariedade, faturamento, mean)


fct_reorder(escolariedade, faturamento, sum)









