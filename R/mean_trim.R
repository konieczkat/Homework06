#'Return the mean of a vector after trimming the smallest and largest values from the vector.
#'
#'@param x  Vector of numerics
#'@examples
#'mean_trim(c(1,2,3,4,5,6,7,8,9,10))
mean_trim <- function(x){
  if(!(is.numeric(x))){
    stop("Vector must be numeric")
  }
  sorted_list<- sort(x)
  small <- min(sorted_list)
  large <- max(sorted_list)
  new_list <- sorted_list[-c(small, large)]
  return(mean(new_list))
}
