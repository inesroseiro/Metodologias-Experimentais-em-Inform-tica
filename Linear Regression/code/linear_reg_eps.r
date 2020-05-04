rm(list=ls())
#test for max_r 2n 100, 1000 e 10000 com parametros base para BubbleSort
setwd("/home/weebartur/Desktop/MEIcoisinhas/tests")
df_mine = read.table("merge_n_subarray.txt")
R<- rbind(df_mine) 
names(R)[1]<-paste("subarray")

res <-matrix(1:200);

inc <- 0.001
for (i in 1:21) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 21:41) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 41:61) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 61:81) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 81:101) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 101:121) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 121:141) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 141:161) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 161:181) {
    res[i,1] <- inc
    inc <- inc + 0.02
}

inc <- 0.001
for (i in 181:200) {
    res[i,1] <- inc
    inc <- inc + 0.02
}


R$input_x <- res

lr.out = lm(R$subarray~log(R$input_x))
summary(lr.out)
