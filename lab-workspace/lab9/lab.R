summary(iris)
library(dplyr)
df<-iris %>% filter(Species=="setosa") %>% select(Sepal.Length, Sepal.Width)
mLength<-mean(df$Sepal.Length)
sdLength<-sd(df$Sepal.Length)
quantile(df$Sepal.Length, 0.25)

# install.packages("BSDA")
library(BSDA)
z.test(df$Sepal.Length, mu=4, sigma.x=sdLength)
z.test(df$Sepal.Length, mu=4, sigma.x=sdLength, conf.level=.99)
z.test(df$Sepal.Length, mu=5, sigma.x=sdLength)

df1<-iris %>% filter(Species=="setosa" | Species=="virginica")
t.test(df1$Sepal.Length~df1$Species)
t.test(df1$Sepal.Length, df1$Sepal.Width)

# Regression model-1
cor(mtcars, method="pearson")
# cor(mtcars, method="kendall")

cor.test(mtcars$hp, mtcars$mpg, method="pearson")
ggplot(mtcars, aes(hp,mpg)) + geom_point() + geom_smooth(method="lm")
flma<-lm(mpg~hp, data=mtcars)

predict(flma, newdata=data.frame(hp=100), interval="prediction")
predict(flma, newdata=data.frame(hp=200), interval="prediction")
predict(flma, newdata=data.frame(hp=400), interval="prediction")

# Regression model-2 (2inputs)
ggplot(mtcars, aes(x=hp,y=mpg, color=am)) + geom_point() + geom_smooth(method="lm")
ggplot(mtcars, aes(x=hp,y=mpg, color=factor(am))) +geom_point() + geom_smooth(method="lm")
ggplot(mtcars, aes(x=hp,y=mpg, color=factor(am))) +geom_point() + geom_smooth(method="lm", se=F)
flmb<-lm(mpg~hp+am, mtcars)
predict(flmb, newdata=data.frame(hp=100,am=0), interval="prediction") 
predict(flmb, newdata=data.frame(hp=200,am=0), interval="prediction") 
predict(flmb, newdata=data.frame(hp=200,am=1), interval="prediction")

# Regression model-3 (ChickWeight)
df<-ChickWeight %>% filter(Chick==1) %>% select(weight, Time)
cor.test(df$Time, df$weight, method="pearson")

ggplot(df, aes(Time,weight)) + geom_point() + geom_smooth(method="lm", se=F)
flmchick<-lm(weight~Time, data=df)
predict(flmchick, newdata=data.frame(Time=11), interval="prediction")
predict(flmchick, newdata=data.frame(Time=25), interval="prediction")

df1<-ChickWeight %>% filter(Chick==1 | Chick==3 | Chick==5) %>% select(weight, Time, Chick)
ggplot(df1, aes(x=Time,y=weight, color=Chick)) + geom_point() + geom_smooth(method="lm", se=F)
flmchickgroup<-lm(weight~Time+Chick, data=df1)
predict(flmchickgroup, newdata=data.frame(Time=18,Chick="3"), interval="prediction")
predict(flmchickgroup, newdata=data.frame(Time=15,Chick="5"), interval="prediction")
