# create dummy data
data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

# Uniform color
barplot(height=data$value, names=data$name, 
        col=rgb(0.8,0.1,0.1,0.6),
        xlab="Toppings", 
        ylab="% Popularity", 
        main="Most Popular Pizza Toppings", 
        ylim=c(0,40)
)
