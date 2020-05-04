rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/10000")
df = read.table("insert_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/10000/insertion_10000.pdf")
hist(data,
main="Insertion sort - Maximum sorted array \n (10000 elements)",
xlab="Number of sorted elements",
xlim= c(100, 400),
ylim= c(0,20),
col="grey",
breaks = 50,
)


grid()
dev.off()



rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/10000")
df = read.table("quick_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/10000/quick_10000.pdf")

data
plot("quick_10000.png")
hist(data,
main="Quick sort - Maximum sorted array \n (10000 elements)",
xlab="Number of sorted elements",
xlim= c(1000, 7000),
ylim= c(0,20),
col="grey",
breaks = 50,
)


grid()
dev.off()


rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/10000")
df = read.table("merge_n_subarray.txt")
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/10000/merge_10000.pdf")

data = unlist(df,use.names = FALSE)
#data
hist(data,
main="Merge sort - Maximum sorted array \n (10000 elements)",
xlab="Number of sorted elements",
xlim= c(0, 8000),
ylim= c(0,20),
col="grey",
breaks = 50,
)

grid()
dev.off()


rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/10000")
df = read.table("bubble_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/10000/bubble_10000.pdf")

data
plot("bubble_1000000.png")
hist(data,
main="Bubble sort - Maximum sorted array \n (10000 elements)",
xlab="Number of sorted elements",
xlim= c(3000, 10000),
ylim= c(0,40),
col="grey",
breaks = 50,
)

grid()
dev.off()

