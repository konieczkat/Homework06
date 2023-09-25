mean_trim <- function(x){
    sorted_list<- sort(x)
    small <- min(sorted_list)
    large <- max(sorted_list)
    new_list <- sorted_list[-c(small, large)]
    return(mean(new_list))
  }
