#Minkowski Distance
#' @title Minkowski
#' @description computes the computed minkowski distance
#' @param x a numeric vector for one point
#' @param y a numeric vector for the other point
#' @param p either a numeric vector >1 or a character string max
#' @return numeric distance
minkowski <- function(x, y, p = 1) {
 if (length(x) != length(y)){
   stop("x and y have different lengths")
 }
else if (is.numeric(p)==TRUE){
    if (p < 1){
      stop("p cannot be less than 1")
    }
    else{
      mink <- rep(0, length(2))
      for (i in 1:2){
        mink[i] <- (abs((x[i]- y[i])))^p
      }
      mink_sum <- sum(mink)
      return((mink_sum)^(1/p))
  }}
  else if (is.character(p)==TRUE){
    if (p != 'max'){
      stop("invalid character for p")
    }
    else{
      mink <- rep(0, length(2))
      for (i in 1:2){
        mink[i] <- abs((x[i]- y[i]))
      }
      max_mink <- max(mink)
      return(max_mink)
    }
  }
  }

    
