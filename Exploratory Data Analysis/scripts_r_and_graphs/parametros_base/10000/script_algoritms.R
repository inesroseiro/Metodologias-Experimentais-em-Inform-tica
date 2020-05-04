rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/10000")
df = read.table("insert_n_subarray.txt")
data = unlist(df,use.names = FALSE)


data
pdf("/Users/iroseiro/Desktop/testes/parametros_base/10000/insertion_10000.pdf")
hist(data,
main="Insertion sort - Maximum sorted array \n (10000 elements)",
xlab="Number of sorted elements",
xlim= c(100, 500),
ylim= c(0,30),
col="grey",
breaks = 30,
)

grid()
dev.off()


rm(list=ls())
setwd("Users/iroseiro/Desktop/testes/parametros_base/10000")
df = read.table("quick_n_subarray.txt")
data = unlist(df,use.names = FALSE)

pdf("/Users/iroseiro/Desktop/testes/parametros_base/10000/quick_10000.pdf")
hist(data,
main="Quick sort - Maximum sorted array \n (10000 elements)",
xlab="Number of sorted elements",
xlim= c(1000, 5000),
ylim= c(0,10),
col="grey",
breaks = 30,
)
grid()
dev.off()

rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/10000")
df = read.table("merge_n_subarray.txt")
data = unlist(df,use.names = FALSE)
data
pdf("/Users/iroseiro/Desktop/testes/parametros_base/10000/merge_10000.pdf")
hist(data,
main="Merge sort - Maximum sorted array \n (10000 elements)",
xlab="Number of sorted elements",
xlim= c(1000, 6000),
ylim= c(0,20),
col="grey",
breaks = 50,
)

grid()
dev.off()

rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/10000")
df = read.table("bubble_n_subarray.txt")
data = unlist(df,use.names = FALSE)
data
pdf("/Users/iroseiro/Desktop/testes/parametros_base/10000/bubble_10000.pdf")
hist(data,
main="Bubble sort - Maximum sorted array \n (10000 elements)",
xlab="Number of sorted elements",
xlim= c(2000, 10000),
ylim= c(0,20),
col="grey",
breaks = 50,
)
grid()
dev.off()



#bloxplot creation - 10000 elements (parametros base)
rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/10000")
df_b = read.table("bubble_n_subarray.txt")
data_used_b = unlist(df_b,use.names = FALSE)
data_used_b
m_b = mean(data_used_b)
dp_b = sd(data_used_b, na.rm=FALSE)
#m
#dp
df_q = read.table("quick_n_subarray.txt")
data_used_q = unlist(df_q,use.names = FALSE)
data_used_q
m_q = mean(data_used_q)
dp_q = sd(data_used_q, na.rm=FALSE)

df_m = read.table("merge_n_subarray.txt")
data_used_m = unlist(df_m,use.names = FALSE)
data_used_m
m_m = mean(data_used_m)
dp_m = sd(data_used_m, na.rm=FALSE)

df_i = read.table("insert_n_subarray.txt")
data_used_i = unlist(df_i,use.names = FALSE)
data_used_i
m_i = mean(data_used_i)
dp_i = sd(data_used_i, na.rm=FALSE)

mean_vector<- c(m_b, m_q, m_m, m_i)
dp_vector<-c(dp_b,dp_q, dp_m, dp_i)

mean_vector
dp_vector


a <- table(data_used_b)
a
a <- table(data_used_q)
a
a <- table(data_used_m)
a
a <- table(data_used_i)
a

pdf("boxplot_10000elems_param_base.pdf")
boxplot(data_used_b, data_used_q, data_used_m, data_used_i,
names = c("BubbleSort", "QuickSort", "MergeSort", "InsertionSort"),
col = c ("powderblue", "palegreen", "pink", "lightsalmon"),
main="Largest sorted subsequence size \n (10000 elements)"

)

points(mean_vector, pch = 20)
grid()
dev.off()