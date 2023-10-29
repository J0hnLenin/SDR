#library("dplyr")
tb <- read.table("R1/seeds2.txt", header = TRUE)

tb_Kama <- tb[tb$class == "Kama", ]
print(summary(tb_Kama$len))

tb_Rosa <- tb[tb$class == "Rosa", ]
print(summary(tb_Rosa$len))

tb_Canadian <- tb[tb$class == "Canadian", ]
print(summary(tb_Canadian$len))

boxplot(tb_Rosa$len, tb_Kama$len, tb_Canadian$len, names=c("Rosa", "Kama", "Canadian"))
