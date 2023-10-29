
tb <- read.table("R1/seeds2.txt", header = TRUE)

tb <- tb[tb$class == "Kama", ]
hist(tb$area, freq=FALSE)