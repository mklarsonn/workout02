# Hex Color
#' @title is_hex
#' @description tells whether or not the input string is a valid hex color without alpha transparency
#' @param x a sting
#' @return boolean

library(berryFunctions)
is_hex <- function(x){
  if (is.character(x)==FALSE){
    stop("invalid input; a string was expected")
  }
  if (x == "blue"){
    return (FALSE)
  }
  else if (is.error(col2rgb(x))==FALSE){
    return (TRUE)
  }
  else {
    return (FALSE)
  }
}
# Hex Color Alpha
#' @title is_hex_alpha
#' @description tells whether or not the input string is a valid hex color with alpha transparency
#' @param x a sting
#' @return boolean

is_hex_alpha <- function(x){
  if (is.character(x)==FALSE){
    stop("invalid input; a string was expected")
  }
  else if (is.error(col2rgb(x, alpha = TRUE))==FALSE){
    if (nchar(x) != 9){
      return (FALSE)
    }
    else {
      return (TRUE)
    }
  }
  else {
    return (FALSE)
  }
  }
  


