rm(list=ls())
#data set for max_r = 2n
setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/novo_eps/eps_1_n/")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


n <- 1000


R <- rbind(df_b,df_q,df_m,df_i)
names(R)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "1/n"
}

R$eps <- res

res <-matrix(1:400);

for (i in 1:100) {
    res[i,1] <- 'Bubble'
}
for (i in 100:200) {
    res[i,1] <- 'Quick'
}
for (i in 200:300) {
    res[i,1] <- 'Merge'
}
for (i in 300:400) {
    res[i,1] <- 'Insertion'
}
R$algorithm <- res


#data set for max_r = n
setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/novo_eps/eps_10_n/")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R2 <- rbind(df_b,df_q,df_m,df_i)
names(R2)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "10/n"
}

R2$eps <- res

res <-matrix(1:400);

for (i in 1:100) {
    res[i,1] <- 'Bubble'
}
for (i in 100:200) {
    res[i,1] <- 'Quick'
}
for (i in 200:300) {
    res[i,1] <- 'Merge'
}
for (i in 300:400) {
    res[i,1] <- 'Insertion'
}
R2$algorithm <- res

#data set for max_r = n/2
setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/novo_eps/eps_20_n/")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R3 <- rbind(df_b,df_q,df_m,df_i)
names(R3)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "20/n"
}

R3$eps <- res

res <-matrix(1:400);

for (i in 1:100) {
    res[i,1] <- 'Bubble'
}
for (i in 100:200) {
    res[i,1] <- 'Quick'
}
for (i in 200:300) {
    res[i,1] <- 'Merge'
}
for (i in 300:400) {
    res[i,1] <- 'Insertion'
}
R3$algorithm <- res


R <- rbind(R, R2, R3)


#Interaction Plot
interaction.plot(R$eps, R$algorithm, R$max_ord, type="b", col=c(2:5),leg.bty="o",leg.bg="beige",lwd=2,pch=c(18,24),ylab="Max Subarray",xlab="Number of array elements",main="Interaction Plot with eps Variation")
# legend(2100, 500, legend=c("BubbleSort", "MergeSort", "QuickSort", "InsertionSort"), lty=1, cex=0.8)


#Anova Testing
anova2<-aov(max_ord~as.factor(eps)+as.factor(algorithm),data=R)
summary(anova2)

anova2<-aov(max_ord~as.factor(eps)*as.factor(algorithm),data=R)
summary(anova2)


#Normality Test
qqnorm(anova2$res)
qqline(anova2$res)

#Boxplots for similarities
boxplot(R$max_ord ~ R$algorithm, data=R)
boxplot(R$max_ord ~ R$eps, data=R)


#Shappiro Normality Test
shapiro.test(anova2$res)

#TukeyHSD
t = TukeyHSD(anova2, alternative="two.sided")
print(t)

#Bartlett Testing
bartlett.test(R$max_ord~interaction(R$eps, R$algorithm),data=R)



#Non-Parametric alternative to Two-Way ANOVA
aov.out = aov(max_ord~eps*algorithm, data=R)
FS = summary(aov.out)[[1]]$F[1]
FP = summary(aov.out)[[1]]$F[2]
FSP = summary(aov.out)[[1]]$F[3]
pvalueS = 0
pvalueP = 0
pvalueSP = 0
for (i in 1:5000){
# p-value for System
# p-value for Programmer # p-value for interaction
R$T = sample(R$max_ord)
aov.out = aov(T~eps*algorithm, data=R)
pFS = summary(aov.out)[[1]]$F[1]
pFP = summary(aov.out)[[1]]$F[2]
pFSP = summary(aov.out)[[1]]$F[3]
if (pFS >= FS)
          pvalueS = pvalueS + 1
     if (pFP >= FP)
          pvalueP = pvalueP + 1
     if (pFSP >= FSP)
          pvalueSP = pvalueSP + 1
}
print(paste("eps: ", pvalueS/5000))
print(paste("algoritmo:" , pvalueP/5000))
print(paste("eps:algoritmo:", pvalueSP/5000))