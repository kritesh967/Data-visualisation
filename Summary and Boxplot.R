

data1 <- read.csv("C:\\Users\\Jayendra Vadrevu\\Google Drive\\Darius\\1. DSA\\Course Material\\3. Data Preparation\\Classroom Upload\\Factor Analysis\\FA_data.csv")

#Summarize the data
summary(data1)


#Check box plot
boxplot(data1, horizontal= TRUE)


#Check hitogram
histinf <-hist(x=data1$BIO, breaks=4 , plot =TRUE, col= "lightblue", freq= TRUE,  main = paste("Histogram of Subjects", lables= TRUE))

#Check log transformation
Logval <- log10(data1)


#Check hitogram after log transformation

histinf2 <-hist(x=Logval$BIO, breaks=4 , plot =TRUE, col= "lightblue", freq= TRUE,  main = paste("Histogram of Subjects", lables= TRUE))

histinf2


par(mfrow=c(1,2))

histinf <-hist(x=data1$BIO,breaks = c(0,1,2,3,4,5,6,7), plot =TRUE, col= "lightblue", freq= TRUE,  main = paste("Histogram of Subjects", lables= TRUE))
text(histinf$mids,histinf$counts,labels=histinf$counts, adj=c(.5, -.5))
histinf <-hist(x=data1$BIO, plot =TRUE, col= "yellow", freq= FALSE,  main = paste("Histogram of Subjects", lables= TRUE))
text(histinf$mids,histinf$density,labels=histinf$density, adj=c(0.5, -0.5))
variable = data1$BIO
