rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/1000")
df = read.table("insert_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/1000/insertion_1000.pdf")
hist(data,
main="Insertion sort - Maximum sorted array \n (1000 elements)",
xlab="Number of sorted elements",
xlim= c(40, 150),
ylim= c(0,20),
col="grey",
breaks = 50,
)


grid()
dev.off()



rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/1000")
df = read.table("quick_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/1000/quick_1000.pdf")

data
plot("quick_1000.png")
hist(data,
main="Quick sort - Maximum sorted array \n (1000 elements)",
xlab="Number of sorted elements",
xlim= c(100, 800),
ylim= c(0,20),
col="grey",
breaks = 50,
)


grid()
dev.off()


rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/1000")
df = read.table("merge_n_subarray.txt")
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/1000/merge_1000.pdf")

data = unlist(df,use.names = FALSE)
#data
hist(data,
main="Merge sort - Maximum sorted array \n (1000 elements)",
xlab="Number of sorted elements",
xlim= c(100,800),
ylim= c(0,20),
col="grey",
breaks = 50,
)

grid()
dev.off()


rm(list=ls())
setwd("/Users/iroseiro/Desktop/testes/maxr_com_n_4/1000")
df = read.table("bubble_n_subarray.txt")
data = unlist(df,use.names = FALSE)
pdf("/Users/iroseiro/Desktop/testes/maxr_com_n_4/1000/bubble_1000.pdf")

data
plot("bubble_100000.png")
hist(data,
main="Bubble sort - Maximum sorted array \n (1000 elements)",
xlab="Number of sorted elements",
xlim= c(400, 1000),
ylim= c(0,40),
col="grey",
breaks = 50,
)

grid()
dev.off()

