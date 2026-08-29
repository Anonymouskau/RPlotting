
library(ggplot2)
data(mtcars)
mtcars$cyl <- factor(mtcars$cyl)
mtcars$am <- factor(mtcars$am,
                    levels = c(0, 1),
                    labels = c("Automatic", "Manual"))



View(mtcars)


#Scatter plot
plot1=ggplot(mtcars, aes(x=wt, y=mpg)) +xlab(" wt (car
weight)")+ylab("mpg (miles per gallon)")+
  geom_point(shape=1) + ggtitle("Scatter plot wt vs mpg")

plot1
#Scatter plot2
plot2=ggplot(mtcars, aes(x=wt, y=mpg,colour = am)) +xlab(" wt (car
weight)")+ylab("mpg (miles per gallon)")+
  geom_point(shape=1) + ggtitle("Scatter plot wt vs mpg")

plot2





#histogram
plot3=ggplot(mtcars, aes(x=mpg )) + xlab("Mpg")+
  geom_histogram(bins = 10, colour="black", fill="white")+ggtitle("Distribution of mpg")

plot3

#boxplot
bp <- ggplot(mtcars, aes(x=cyl, y=mpg, fill=cyl)) + xlab("No of Cylinder")+ylab("Miles per gallon")+
  geom_boxplot()+ggtitle(" Box Plot Cylinders Vs Mpg")
bp



