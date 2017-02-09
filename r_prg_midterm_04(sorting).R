#1 Generate function my.sort() with parameter decreasing= FALSE as default

my.sort <- function(input_vec, decreasing=FALSE){
  vec_length<- length(input_vec)
  if(decreasing == FALSE){
  for( i in 1:(vec_length - 1)){
    for (j in (i + 1):vec_length){
        if (input_vec[i] > input_vec[j]){
        temp <- input_vec[i]
        input_vec[i] <- input_vec[j]
        input_vec[j] <- temp
     }
    }
   }
  } else{ for( i in 1:(vec_length - 1)){
    for (j in (i + 1):vec_length){
      if (input_vec[i] < input_vec[j]){
        temp <- input_vec[i]
        input_vec[i] <- input_vec[j]
        input_vec[j] <- temp
      }
    }
  }
    
 }
  
  return(input_vec)
}

#2 Geneate an input vector
my_vec <- round(runif(10)*100)

#3 Call function
 #3.1 Sort the input vector in a descending order by entering decreasing = TRUE
my.sort(my_vec, decreasing=TRUE)
 #3.2 Sort the input vector in an ascending order by using default decreasing = FALSE
my.sort(my_vec)