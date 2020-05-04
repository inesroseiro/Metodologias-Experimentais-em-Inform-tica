rm(list=ls())
setwd("/Users/iroseiro/Desktop/MEI_RL/data")
df_b = read.table("quick_n_subarray.txt")
R<- rbind(df_b)
names(R)[1]<-paste("subarray")

res <-matrix(1:200);
n <- 200
for (i in 1:21) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 21:41) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 41:61) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 61:81) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 81:101) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 101:121) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 121:141) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 141:161) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 161:181) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
for (i in 181:200) {
    res[i,1] <- n
    n <- n + 200
}
n <- 200
R$input_x <- res

#xlab="X axis title",
#ylab="Subarray"
lr.out = lm(log(R$subarray)~ log(R$input_x))
summary(lr.out)


plot(R$input_x, R$subarray,main="Linear regression for Quick Sort with power transformation",
ylab="Max ordenated subsequence (max_size)",
xlab="Number of elements (n)")


#bubble curve
curve(0.74578 * x^0.97556,add = TRUE, col = 'red')

#insertion curve
curve(0.60574 * x^0.6951,add = TRUE, col = 'red')

#merge curve
curve(0.63495 * x^0.87176,add = TRUE, col = 'red')

#quick curve
curve(0.62761 * x^0.89838,add = TRUE, col = 'red')


write.csv(R, file = "MyData.csv")
