tmrev <- read.csv("hw_dataset.csv")
model1 <- lm(Value~Revenue, data = tmrev)
summary(model1)
