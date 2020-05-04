# ---------------- max_r ---------------------------------
#graficos de erros para intervalos de confiança

rm(list=ls())
setwd("/Users/iroseiro/Desktop/max_r/maxr_com_2n/1000")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


n = 100
datab = unlist(df_b,use.names = FALSE)
mb = mean(datab)
sdb = sd(datab)


OutVals = boxplot(datab, plot=FALSE)$out

dataq = unlist(df_q,use.names = FALSE)
OutVals2 = boxplot(dataq, plot=FALSE)$out
which(dataq %in% OutVals2)
dataq[ !(dataq %in%OutVals2) ]

mq = mean(dataq)
sdq = sd(dataq)


datam = unlist(df_m,use.names = FALSE)
OutVals3 = boxplot(datam, plot=FALSE)$out
which(datam %in% OutVals3)
datam[ !(datam %in%OutVals3) ]

mm = mean(datam)
sdm = sd(datam)

datai = unlist(df_i,use.names = FALSE)
mi = mean(datai)
sdi = sd(datai)


errorb <- qt(0.975,df=n-1)*sdb/sqrt(n)
errorq <- qt(0.975,df=n-1)*sdq/sqrt(n)
errorm <- qt(0.975,df=n-1)*sdm/sqrt(n)
errori <- qt(0.975,df=n-1)*sdi/sqrt(n)

std <- sd(datai)/sqrt(n)

min(datab)
max(datab)
min(dataq)
max(dataq)
min(datam)
max(datam)
min(datai)
max(datai)



#.............................

setwd("/Users/iroseiro/Desktop/max_r/maxr_com_n/1000")
df_b2 = read.table("bubble_n_subarray.txt")
df_q2 = read.table("quick_n_subarray.txt")
df_m2 = read.table("merge_n_subarray.txt")
df_i2 = read.table("insert_n_subarray.txt")


n = 100
datab2 = unlist(df_b2,use.names = FALSE)
OutVals3 = boxplot(datab2, plot=FALSE)$out
which(datab2 %in% OutVals3)
datab2[ !(datab2 %in%OutVals3) ]

mb2 = mean(datab2)
sdb2 = sd(datab2)

dataq2 = unlist(df_q2,use.names = FALSE)
OutVals3 = boxplot(dataq2, plot=FALSE)$out
which(dataq2 %in% OutVals3)
dataq2[ !(dataq2 %in%OutVals3) ]
mq2 = mean(dataq2)
sdq2 = sd(dataq2)

datam2 = unlist(df_m2,use.names = FALSE)
OutVals3 = boxplot(datam2, plot=FALSE)$out
which(datam2 %in% OutVals3)
datam2[ !(datam2 %in%OutVals3) ]

mm2 = mean(datam2)
sdm2 = sd(datam2)

datai2 = unlist(df_i2,use.names = FALSE)
OutVals3 = boxplot(datai2, plot=FALSE)$out
which(datai2 %in% OutVals3)
datai2[ !(datai2 %in%OutVals3) ]

mi2 = mean(datai2)
sdi2 = sd(datai2)


errorb2 <- qt(0.975,df=n-1)*sdb2/sqrt(n)
errorq2 <- qt(0.975,df=n-1)*sdq2/sqrt(n)
errorm2 <- qt(0.975,df=n-1)*sdm2/sqrt(n)
errori2 <- qt(0.975,df=n-1)*sdi2/sqrt(n)

min(datab2)
max(datab2)
min(dataq2)
max(dataq2)
min(datam2)
max(datam2)
min(datai2)
max(datai2)


#................................................

setwd("/Users/iroseiro/Desktop/max_r/maxr_com_n_2/1000")
df_b3 = read.table("bubble_n_subarray.txt")
df_q3 = read.table("quick_n_subarray.txt")
df_m3 = read.table("merge_n_subarray.txt")
df_i3 = read.table("insert_n_subarray.txt")


n = 100
datab3 = unlist(df_b3,use.names = FALSE)
OutVals3 = boxplot(datab3, plot=FALSE)$out
mb3 = mean(datab3)
sdb3 = sd(datab3)

dataq3 = unlist(df_q3,use.names = FALSE)
OutVals3 = boxplot(dataq3, plot=FALSE)$out
which(dataq3 %in% OutVals3)
dataq3[ !(dataq3 %in%OutVals3) ]
mq3 = mean(dataq3)
sdq3 = sd(dataq3)

datam3 = unlist(df_m3,use.names = FALSE)
OutVals3 = boxplot(datam3, plot=FALSE)$out
which(datam3 %in% OutVals3)
datam3[ !(datam3 %in%OutVals3) ]
mm3= mean(datam3)
sdm3 = sd(datam3)

datai3 = unlist(df_i3,use.names = FALSE)
OutVals3 = boxplot(datai3, plot=FALSE)$out
which(datai3 %in% OutVals3)
datai3[ !(datai3 %in%OutVals3) ]
mi3 = mean(datai3)
sdi3 = sd(datai3)


errorb3 <- qt(0.975,df=n-1)*sdb3/sqrt(n)
errorq3 <- qt(0.975,df=n-1)*sdq3/sqrt(n)
errorm3 <- qt(0.975,df=n-1)*sdm3/sqrt(n)
errori3 <- qt(0.975,df=n-1)*sdi3/sqrt(n)

min(datab)
max(datab)
min(dataq)
max(dataq)
min(datam)
max(datam)
min(datai)
max(datai)






# Load ggplot2
library(ggplot2)

data2_table <- data.frame(
   algorithm= c('Bubble', 'Quick', 'Merge', 'Insertion','Bubble', 'Quick', 'Merge', 'Insertion','Bubble', 'Quick', 'Merge', 'Insertion'),
   max_r = c(500, 500, 500, 500,1000,1000,1000,1000,2000,2000,2000,2000),
   means = c(mb,mq,mm,mi,mb2,mq2,mm2,mi2,mb3,mq3,mm3,mi3),
   sd = c(sdb,sdq,sdm,sdi,sdb2,sdq2,sdm2,sdi2,sdb3,sdq3,sdm3,sdi3),
   ci = c (errorb,errorq,errorm,errori,errorb2,errorq2,errorm2,errori2,errorb3,errorq3,errorm3,errori3)
)

p<- ggplot(data2_table, aes(x=max_r, y=means, group=algorithm, color=algorithm)) + 
  geom_line() +
  geom_point()+
  geom_errorbar(aes(ymin=means-ci, ymax=means+ci), width=.2,
                 position=position_dodge(0.05))

p+labs(title="Maximum ordenated sequence size per Max range ", x="max_r", y = "max_size")

write.csv(data2_table , file = "CImax_r.csv")


# ---------------- eps ---------------------------------
#graficos de erros para intervalos de confiança

rm(list=ls())
setwd("/Users/iroseiro/Desktop/eps/eps_1_n/")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")

n = 100
datab = unlist(df_b,use.names = FALSE)
mb = mean(datab)
sdb = sd(datab)


OutVals = boxplot(datab, plot=FALSE)$out

dataq = unlist(df_q,use.names = FALSE)
OutVals2 = boxplot(dataq, plot=FALSE)$out
which(dataq %in% OutVals2)
dataq[ !(dataq %in%OutVals2) ]

mq = mean(dataq)
sdq = sd(dataq)


datam = unlist(df_m,use.names = FALSE)
OutVals3 = boxplot(datam, plot=FALSE)$out
which(datam %in% OutVals3)
datam[ !(datam %in%OutVals3) ]

mm = mean(datam)
sdm = sd(datam)

datai = unlist(df_i,use.names = FALSE)
mi = mean(datai)
sdi = sd(datai)


errorb <- qt(0.975,df=n-1)*sdb/sqrt(n)
errorq <- qt(0.975,df=n-1)*sdq/sqrt(n)
errorm <- qt(0.975,df=n-1)*sdm/sqrt(n)
errori <- qt(0.975,df=n-1)*sdi/sqrt(n)

#.............................

setwd("/Users/iroseiro/Desktop/eps/eps_10_n/")
df_b2 = read.table("bubble_n_subarray.txt")
df_q2 = read.table("quick_n_subarray.txt")
df_m2 = read.table("merge_n_subarray.txt")
df_i2 = read.table("insert_n_subarray.txt")


n = 100
datab2 = unlist(df_b2,use.names = FALSE)
OutVals3 = boxplot(datab2, plot=FALSE)$out
which(datab2 %in% OutVals3)
datab2[ !(datab2 %in%OutVals3) ]

mb2 = mean(datab2)
sdb2 = sd(datab2)

dataq2 = unlist(df_q2,use.names = FALSE)
OutVals3 = boxplot(dataq2, plot=FALSE)$out
which(dataq2 %in% OutVals3)
dataq2[ !(dataq2 %in%OutVals3) ]
mq2 = mean(dataq2)
sdq2 = sd(dataq2)

datam2 = unlist(df_m2,use.names = FALSE)
OutVals3 = boxplot(datam2, plot=FALSE)$out
which(datam2 %in% OutVals3)
datam2[ !(datam2 %in%OutVals3) ]

mm2 = mean(datam2)
sdm2 = sd(datam2)

datai2 = unlist(df_i2,use.names = FALSE)
OutVals3 = boxplot(datai2, plot=FALSE)$out
which(datai2 %in% OutVals3)
datai2[ !(datai2 %in%OutVals3) ]

mi2 = mean(datai2)
sdi2 = sd(datai2)


errorb2 <- qt(0.975,df=n-1)*sdb2/sqrt(n)
errorq2 <- qt(0.975,df=n-1)*sdq2/sqrt(n)
errorm2 <- qt(0.975,df=n-1)*sdm2/sqrt(n)
errori2 <- qt(0.975,df=n-1)*sdi2/sqrt(n)

#................................................

setwd("/Users/iroseiro/Desktop/eps/eps_20_n/")
df_b3 = read.table("bubble_n_subarray.txt")
df_q3 = read.table("quick_n_subarray.txt")
df_m3 = read.table("merge_n_subarray.txt")
df_i3 = read.table("insert_n_subarray.txt")


n = 100
datab3 = unlist(df_b3,use.names = FALSE)
OutVals3 = boxplot(datab3, plot=FALSE)$out
mb3 = mean(datab3)
sdb3 = sd(datab3)

dataq3 = unlist(df_q3,use.names = FALSE)
OutVals3 = boxplot(dataq3, plot=FALSE)$out
which(dataq3 %in% OutVals3)
dataq3[ !(dataq3 %in%OutVals3) ]
mq3 = mean(dataq3)
sdq3 = sd(dataq3)

datam3 = unlist(df_m3,use.names = FALSE)
OutVals3 = boxplot(datam3, plot=FALSE)$out
which(datam3 %in% OutVals3)
datam3[ !(datam3 %in%OutVals3) ]
mm3= mean(datam3)
sdm3 = sd(datam3)

datai3 = unlist(df_i3,use.names = FALSE)
OutVals3 = boxplot(datai3, plot=FALSE)$out
which(datai3 %in% OutVals3)
datai3[ !(datai3 %in%OutVals3) ]
mi3 = mean(datai3)
sdi3 = sd(datai3)


errorb3 <- qt(0.975,df=n-1)*sdb3/sqrt(n)
errorq3 <- qt(0.975,df=n-1)*sdq3/sqrt(n)
errorm3 <- qt(0.975,df=n-1)*sdm3/sqrt(n)
errori3 <- qt(0.975,df=n-1)*sdi3/sqrt(n)

# Load ggplot2
library(ggplot2)

data2_table <- data.frame(
   algorithm= c('Bubble', 'Quick', 'Merge', 'Insertion','Bubble', 'Quick', 'Merge', 'Insertion','Bubble', 'Quick', 'Merge', 'Insertion'),
   eps = c(1, 1,1, 1,10,10,10,10,20,20,20,20),
   means = c(mb,mq,mm,mi,mb2,mq2,mm2,mi2,mb3,mq3,mm3,mi3),
   sd = c(sdb,sdq,sdm,sdi,sdb2,sdq2,sdm2,sdi2,sdb3,sdq3,sdm3,sdi3),
   ci = c (errorb,errorq,errorm,errori,errorb2,errorq2,errorm2,errori2,errorb3,errorq3,errorm3,errori3)
)

p<- ggplot(data2_table, aes(x=eps, y=means, group=algorithm, color=algorithm)) + 
  geom_line() +
  geom_point()+
  geom_errorbar(aes(ymin=means-ci, ymax=means+ci), width=.2,
                 position=position_dodge(0.05))

p+labs(title="Maximum ordenated sequence size per error probability ", x="eps (%) ", y = "max_size (elems)")

write.csv(data2_table , file = "CIeps.csv")

# ---------------- number of elements ---------------------------------
#graficos de erros para intervalos de confiança

rm(list=ls())
setwd("/Users/iroseiro/Desktop/parametros_base/100/")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")

n = 100
datab = unlist(df_b,use.names = FALSE)
mb = mean(datab)
sdb = sd(datab)
min(datab)
max(datab)


OutVals = boxplot(datab, plot=FALSE)$out

dataq = unlist(df_q,use.names = FALSE)


mq = mean(dataq)
sdq = sd(dataq)


datam = unlist(df_m,use.names = FALSE)

mm = mean(datam)
sdm = sd(datam)

datai = unlist(df_i,use.names = FALSE)
mi = mean(datai)
sdi = sd(datai)


errorb <- qt(0.975,df=n-1)*sdb/sqrt(n)
errorq <- qt(0.975,df=n-1)*sdq/sqrt(n)
errorm <- qt(0.975,df=n-1)*sdm/sqrt(n)
errori <- qt(0.975,df=n-1)*sdi/sqrt(n)

#.............................

setwd("/Users/iroseiro/Desktop/parametros_base/1000/")
df_b2 = read.table("bubble_n_subarray.txt")
df_q2 = read.table("quick_n_subarray.txt")
df_m2 = read.table("merge_n_subarray.txt")
df_i2 = read.table("insert_n_subarray.txt")


n = 100
datab2 = unlist(df_b2,use.names = FALSE)


mb2 = mean(datab2)
sdb2 = sd(datab2)

dataq2 = unlist(df_q2,use.names = FALSE)

mq2 = mean(dataq2)
sdq2 = sd(dataq2)

datam2 = unlist(df_m2,use.names = FALSE)


mm2 = mean(datam2)
sdm2 = sd(datam2)

datai2 = unlist(df_i2,use.names = FALSE)


mi2 = mean(datai2)
sdi2 = sd(datai2)


errorb2 <- qt(0.975,df=n-1)*sdb2/sqrt(n)
errorq2 <- qt(0.975,df=n-1)*sdq2/sqrt(n)
errorm2 <- qt(0.975,df=n-1)*sdm2/sqrt(n)
errori2 <- qt(0.975,df=n-1)*sdi2/sqrt(n)

min(datab)
max(datab)
min(dataq)
max(dataq)
min(datam)
max(datam)
min(datai)
max(datai)




#................................................

setwd("/Users/iroseiro/Desktop/parametros_base/10000/")
df_b3 = read.table("bubble_n_subarray.txt")
df_q3 = read.table("quick_n_subarray.txt")
df_m3 = read.table("merge_n_subarray.txt")
df_i3 = read.table("insert_n_subarray.txt")


n = 100
datab3 = unlist(df_b3,use.names = FALSE)
mb3 = mean(datab3)
sdb3 = sd(datab3)

dataq3 = unlist(df_q3,use.names = FALSE)

mq3 = mean(dataq3)
sdq3 = sd(dataq3)

datam3 = unlist(df_m3,use.names = FALSE)

mm3= mean(datam3)
sdm3 = sd(datam3)

datai3 = unlist(df_i3,use.names = FALSE)
mi3 = mean(datai3)
sdi3 = sd(datai3)


errorb3 <- qt(0.975,df=n-1)*sdb3/sqrt(n)
errorq3 <- qt(0.975,df=n-1)*sdq3/sqrt(n)
errorm3 <- qt(0.975,df=n-1)*sdm3/sqrt(n)
errori3 <- qt(0.975,df=n-1)*sdi3/sqrt(n)

# Load ggplot2
library(ggplot2)

data2_table <- data.frame(
   algorithm= c('Bubble', 'Quick', 'Merge', 'Insertion','Bubble', 'Quick', 'Merge', 'Insertion','Bubble', 'Quick', 'Merge', 'Insertion'),
   n = c(100, 100,100,100, 1000,1000,1000, 1000, 10000, 10000,10000,10000),
   means = c(mb,mq,mm,mi,mb2,mq2,mm2,mi2,mb3,mq3,mm3,mi3),
   sd = c(sdb,sdq,sdm,sdi,sdb2,sdq2,sdm2,sdi2,sdb3,sdq3,sdm3,sdi3),
   ci = c (errorb,errorq,errorm,errori,errorb2,errorq2,errorm2,errori2,errorb3,errorq3,errorm3,errori3)
)

p<- ggplot(data2_table, aes(x=n, y=means, group=algorithm, color=algorithm)) + 
  geom_line() +
  geom_point()+
  geom_errorbar(aes(ymin=means-ci, ymax=means+ci), width=.2,
                 position=position_dodge(0.05))

p+labs(title="Maximum ordenated sequence size per sequence size ", x="sequence size (elems) ", y = "max_size (elems)")


write.csv(data2_table, file = "CIn.csv")



