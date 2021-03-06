
# Import Data
advertising <- read.csv("data/Advertising.csv", header = TRUE)

# Compute "regression" object
lm_ad <- lm(Sales ~ TV, data = advertising)
save(lm_ad, file = "data/regression.RData")
summary(lm_ad)

# Create Scatterplot
png('images/scatterplot-tv-sales.png')
plot(advertising$TV, advertising$Sales, col = "red", main = "Figure 1: Scatterplot with fitted regression line", xlab = "TV", ylab = "Sales") +
	abline(lm_ad, col = "blue")
dev.off()
pdf('images/scatterplot-tv-sales.pdf')
plot(advertising$TV, advertising$Sales, col = "red", main = "Figure 1: Scatterplot with fitted regression line", xlab = "TV", ylab = "Sales") +
	abline(lm_ad, col = "blue")
dev.off()