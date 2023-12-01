
input_data <- read.table("Ozone/ozone.data.txt", header = TRUE)

input_data['ww'] <- input_data$wind^2
input_data['tt'] <- input_data$temp^2
attach(input_data)
summ=0
sep <- rbinom(nrow(input_data), 1, 0.70)

learning_data  <- input_data[sep == 1,]
valid_data <- input_data[sep == 0,]

model <- lm(ozone~temp+wind+rad+ww+tt, data=learning_data)

predict_result <- predict(model, newdata = valid_data , type="response")
ans <- data.frame(predict_result, valid_data$ozone)
colnames(ans) <- c('прогноз', 'выборка')
ans['отклонение'] <- (ans$прогноз - ans$выборка)^2
print(ans)
#print(mean(ans$отклонение))
