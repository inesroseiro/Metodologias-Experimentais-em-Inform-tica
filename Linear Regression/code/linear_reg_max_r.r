rm(list=ls())

n <- 1000
#teste para max_r = n, 2n, n/2
#setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/maxr_com_n/100/")
#df_b100 = read.table("bubble_n_subarray.txt")
setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/testes_3_meta/")
df_b = read.table("merge_n_subarray.txt")
#setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/maxr_com_n/10000")
#df_b10000 = read.table("bubble_n_subarray.txt")
#setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/maxr_com_n_4/100/")
#df_b100_4 = read.table("bubble_n_subarray.txt")
#setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/maxr_com_2n/1000/")
#df_b1 = read.table("bubble_n_subarray.txt")
#setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/maxr_com_n_4/10000")
#f_b10000_4 = read.table("bubble_n_subarray.txt")
#setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/parametros_base/100/")
#df_b100_pb = read.table("bubble_n_subarray.txt")
#setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/parametros_base/1000/")
#df_b2 = read.table("bubble_n_subarray.txt")
#setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/parametros_base/10000/")
#df_b10000_pb = read.table("bubble_n_subarray.txt")

R<- rbind(df_b)
names(R)[1]<-paste("subarray")

res <-matrix(1:200);
max_r <- 600
for (i in 1:21) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 21:41) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 41:61) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 61:81) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 81:101) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 101:121) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 121:141) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 141:161) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 161:181) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
for (i in 181:200) {
    res[i,1] <- max_r
    max_r <- max_r + 100
}
max_r <- 600
R$input_x <- res

#xlab="X axis title",
#ylab="Subarray"
lr.out = lm(R$subarray~log(R$input_x))
summary(lr.out)
plot(R$input_x, R$subarray,main="Linear regression for Quick Sort with Logarithmic transformation",
ylab="Max ordenated subsequence (max_size)",
xlab="Max Range (max_r)")
curve(614.43 - 43.75*log(x), add=TRUE, col="red")
plot(lr.out)