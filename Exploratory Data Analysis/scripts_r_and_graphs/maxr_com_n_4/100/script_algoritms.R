rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/100")
df = read.table("insert_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/100/insertion_100.pdf")
hist(data,
main="Insertion sort - Maximum sorted array \n (100 elements)",
xlab="Number of sorted elements",
xlim= c(10, 40),
ylim= c(0,20),
col="grey",
breaks = 50,
)


grid()
dev.off()



rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/100")
df = read.table("quick_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/100/quick_100.pdf")

data
plot("quick_100.png")
hist(data,
main="Quick sort - Maximum sorted array \n (100 elements)",
xlab="Number of sorted elements",
xlim= c(0, 100),
ylim= c(0,20),
col="grey",
breaks = 50,
)


grid()
dev.off()


rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/100")
df = read.table("merge_n_subarray.txt")
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/100/merge_100.pdf")

data = unlist(df,use.names = FALSE)
#data
hist(data,
main="Merge sort - Maximum sorted array \n (100 elements)",
xlab="Number of sorted elements",
xlim= c(0,100),
ylim= c(0,20),
col="grey",
breaks = 50,
)

grid()
dev.off()


rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/100")
df = read.table("bubble_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/100/bubble_100.pdf")

data
plot("bubble_10000.png")
hist(data,
main="Bubble sort - Maximum sorted array \n (100 elements)",
xlab="Number of sorted elements",
xlim= c(30, 100),
ylim= c(0,40),
col="grey",
breaks = 50,
)

grid()
dev.off()

