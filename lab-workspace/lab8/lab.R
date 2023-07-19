library(ggplot2)

# use mtcars as dataset (basic chart)
data(mtcars)
plot(mtcars$qsec, mtcars$mpg, type = "p")
plot(mtcars$hp, mtcars$gear, type="h")
plot(mpg ~ wt, data= mtcars)
lines(lowess(mtcars$wt, mtcars$mpg), col = 'blue')

# use ChickWeight for data (line chart)
df1<- ChickWeight %>% filter(Chick==1)
ggplot(df1, aes(x=Time, y=weight)) + geom_line() + geom_point()

# draw 3 series Chick = 2, 4 and 6
df2<- ChickWeight %>% filter(Chick==2 | Chick==4 | Chick==6)
ggplot(df2, aes(x=Time, y=weight, colour=Chick)) + geom_line() + geom_point()

# split the chart window in several small parts 
# Chick = 2, 4 and 6
ggplot(df2, aes(x=Time, y=weight)) + geom_line() + geom_point() + facet_wrap(~Chick)


# use mpg as dataset (bar chart)
ggplot(mpg, aes(class)) + geom_bar()
ggplot(mpg, aes(manufacturer)) + geom_bar()
ggplot(mpg, aes(manufacturer)) + geom_bar() + coord_flip()
ggplot(mpg, aes(x=manufacturer, fill=trans)) + geom_bar()
ggplot(mpg, aes(x=manufacturer, fill=trans)) + geom_bar() + coord_flip()

# dodge
ggplot(mpg, aes(x=manufacturer, fill=class)) + geom_bar(position="dodge")
# proportion
ggplot(mpg, aes(x=manufacturer, fill=class)) + geom_bar(position="fill") + ylab("proportion")

# histogram
df4<-mtcars %>% select(cyl,hp) %>% arrange(hp)
ggplot(df4, aes(x=hp, fill=cyl)) + geom_histogram(binwidth=10, color="blue", fill="lightgreen") + labs(title="Number of cylinders by gross horsepower", x="Gross Horsepower", y="Number of Cylinders")

# scatter plot
ggplot(mtcars, aes(x=qsec, y=disp)) + geom_point()

# highlight some points
df3<- mtcars %>% filter(qsec<15 | qsec>20)
ggplot(mtcars, aes(x=qsec, y=disp)) + geom_point() + geom_point(data=df3, aes(x=qsec, y=disp), colour="yellow")

# box plot and matrix plot
#boxplot
boxplot(mpg~gear, data=mtcars, main="Car Milage Data", xlab="Number of forward gears", ylab="Miles per Gallon")

#matrixplot
pairs(~mpg + disp + drat + wt, data=mtcars, main="Matrix Scatterplot")