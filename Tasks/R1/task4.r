library("dplyr")
tb <- read.table("R1/seeds2.txt", header = TRUE)

tb <- filter(tb, tb$class == "Rosa")
#plot(tb, freq=FALSE)
print(cor(tb$grooveLen, tb$len))
model <- lm(tb$grooveLen~tb$len)
print(model)