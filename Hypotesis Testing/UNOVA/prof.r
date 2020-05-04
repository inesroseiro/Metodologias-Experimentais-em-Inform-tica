rm(list=ls())
setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/SecondAssignment/UNOVA")
R = read.table("data.in")
#variavel de resposta e que vai mostrar os dados
#variavel dependende ~ variavel independente
boxplot(R$V2 ~ R$V1)
 
 
aov.out = aov(R$V2 ~ R$V1, data = R)
summary(aov.out)
 
qqnorm(aov.out$res)
qqline(aov.out$res)
 
shapiro.test(aov.out$res)
 
bartlett.test(R$V2 ~ R$V1, data = R)
 
pairwise.t.test(R$V2, R$V1, p.adjust.method= "none", alternative="two.sided")
 
t = TuckeyHSD(aov.out, alternative="two.sided")
plot(t)
 
 
kruskal.test(R$V2 ~ R$V1, data = R)