library(kernlab)
data(spam)
head(spam)

plot(density(spam$your[spam$type=="nonspam"]),
     col = "blue", main = "", xlab= "Freq of 'your'"
     )
lines(density(spam$your[spam$type=="spam"]),col="green")
abline(v=0.5,col="red")

prediction <- ifelse(spam$your > 0.5
                     ,"spam","nonspam")
table(prediction,spam$type)/length(spam$type)