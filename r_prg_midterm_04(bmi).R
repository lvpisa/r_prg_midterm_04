heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

# Create function bmi_cal()
bmi_cal <- function(height, weight){
  bmi <-  weight/(height/100)^2
  return(bmi)
}

# Create inputs
my_weight <- 85
my_height <- 170.2

# Function call
my_bmi <-  bmi_cal(height= my_height, weight=my_weight)
my_bmi

# Using the data.frame
calculated_bmi <- mapply(bmi_cal,height = heights_and_weights$heights, weight= heights_and_weights$weights)
heights_and_weights <- cbind(heights_and_weights, bmi=calculated_bmi )
heights_and_weights