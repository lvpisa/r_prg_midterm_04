#1 Generate function my.sample.sd to calcualte the sample standard deviation of a vector

my.sample.sd <- function(input_vec){
  result <- sqrt(sum((input_vec-mean(input_vec))^2)/(length(input_vec)-1))
  return(result)
}

#2 Generate an input vector
my_vec <- runif(100)*100

#3 Function Call and comparison with bult-in function sd()

my.sample.sd(my_vec)

sd(my_vec)