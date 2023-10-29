
tb <- read.table("R1/seeds2.txt", header = TRUE)

print(tb[tb$class == "Rosa", ])
print(summary(tb))

tb <- subset(tb, select = - c(length(tb), length(tb) - 1))

write.table(tb[tb$class == "Rosa", ], "R1/seeds_rosa.csv", col.names=FALSE, row.names=FALSE)
write.csv(summary(tb), "R1/seeds_summary.csv")
