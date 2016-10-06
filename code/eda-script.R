
# Import Data
advertising <- read.csv("../data/Advertising.csv", header = TRUE)

# Compute Summary Statistics and histograms of TV and Sales

sink("../data/eda-output.txt")
# Summary Statistics of TV
print(Summary Statistics of TV)
summary(advertising$TV)
sink()

# Histogram of TV
hist(advertising$TV)
png(../images/histogram-tv.png)
dev.off()
pdf(../images/histogram-tv.pdf)
dev.off()

sink("../data/eda-output.txt", append=TRUE)
# Summary Statistics of Sales
print(Summary Statistics of Sales)
summary(advertising$Sales)
sink()

# Histogram of Sales
hist(advertising$Sales)
png(../images/histogram-sales.png)
dev.off()
pdf(../images/histogram-sales.pdf)
dev.off()


