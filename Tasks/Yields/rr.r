
input_data <- read.table("Yields/yields.txt", header = TRUE)

data <- stack(input_data)
colnames(data) <- c('yields', 'soil')

disp_sand <- sum((input_data$sand - mean(input_data$sand))^2)
disp_loam <- sum((input_data$loam - mean(input_data$loam))^2)
disp_clay <- sum((input_data$clay - mean(input_data$clay))^2)
disp_all <- sum((data$yields - mean(data$yields))^2)

Q_in <- sum(disp_clay, disp_loam, disp_sand)
fb <- ((disp_all - Q_in)/2)/(Q_in/27)

#print(disp_all)
#print(fb)
#print(qf(0.95,2,27))

amodel <- aov(data$yields~data$soil)
print(summary(amodel))
#plot(amodel)
plot(TukeyHSD(amodel))