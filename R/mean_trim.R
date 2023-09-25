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
