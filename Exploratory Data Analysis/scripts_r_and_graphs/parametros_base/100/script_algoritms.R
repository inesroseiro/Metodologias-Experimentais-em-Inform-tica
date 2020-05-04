rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/100")
df = read.table("insert_n_subarray.txt")
data = unlist(df,use.names = FALSE)
data
a <- table(data)
a

hist(data,
main="Insertion sort - Maximum sorted array \n (100 elements)",
xlab="Number of sorted elements",
xlim= c(10, 40),
ylim= c(0,20),
col="grey",
breaks = 50,
)


rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/100")
df = read.table("quick_n_subarray.txt")
data = unlist(df,use.names = FALSE)

plot("quick_100.png")
hist(data,
main="Quick sort - Maximum sorted array \n (100 elements)",
xlab="Number of sorted elements",
xlim= c(20, 80),
ylim= c(0,20),
col="grey",
breaks = 50,
)


rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/100")
df = read.table("merge_n_subarray.txt")
data = unlist(df,use.names = FALSE)
#data
hist(data,
main="Merge sort - Maximum sorted array \n (100 elements)",
xlab="Number of sorted elements",
xlim= c(10,80),
ylim= c(0,20),
col="grey",
breaks = 50,
)

rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/100")
df = read.table("bubble_n_subarray.txt")
data = unlist(df,use.names = FALSE)
data
plot("bubble_10000.png")
hist(data,
main="Bubble sort - Maximum sorted array \n (100 elements)",
xlab="Number of sorted elements",
xlim= c(40, 100),
ylim= c(0,40),
col="grey",
breaks = 50,
)


#bloxplot creation - 100 elements (parametros base)
rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/parametros_base/100")
df_b = read.table("bubble_n_subarray.txt")
data_used_b = unlist(df_b,use.names = FALSE)
data_used_b
m_b = mean(data_used_b)
dp_b = sd(data_used_b, na.rm=FALSE)
m_b
dp_b
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
m_m
dp_m
df_i = read.table("insert_n_subarray.txt")
data_used_i = unlist(df_i,use.names = FALSE)
data_used_i
m_i = mean(data_used_i)
dp_i = sd(data_used_i, na.rm=FALSE)
m_i
dp_i

mean_vector<- c(m_b, m_q, m_m, m_i)

pdf("boxplot_100elems_param_base.pdf")
boxplot(data_used_b, data_used_q, data_used_m, data_used_i,
names = c("BubbleSort", "QuickSort", "MergeSort", "InsertionSort"),
col = c ("powderblue", "palegreen", "pink", "lightsalmon"),
main="Largest sorted subsequence size \n (100 elements)"

)
points(mean_vector, pch = 20)

grid()
dev.off()
