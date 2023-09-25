pythag <- function(side1, side2, hypotenuse = TRUE){
  if(length(side1) != 1 || length(side2) != 1){
    stop("Please provide precisely two arguments.")
  }
  if(!(is.numeric(side1) || is.numeric(side2))){
    stop("Arguments must be in numeric form, not string form.")
  }
  side3 <- 0
  if(hypotenuse == TRUE){
    side3 <- sqrt(side1**2 + side2**2)
  }else{
    side3 <- sqrt(max(c(side1, side2))**2 - min(c(side1, side2))**2)
  }
  return(side3)
}

