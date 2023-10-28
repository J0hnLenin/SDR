
tb <- read.table("seeds2.txt", header = TRUE)
attach(tb)

print(tb[class == "Rosa", ])
print(summary(tb))

tb <- subset(tb, select = - c(length(tb), length(tb) - 1))
write.csv(tb[class == "Rosa", ], "seeds_rosa.csv")
write.csv(summary(tb), "seeds_summary.csv")