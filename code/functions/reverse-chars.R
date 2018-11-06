#Reverse Chars
#' @title reverse-chars
#' @description reverses the characters in a string in R
#' @param x a string
#' @return the reverse of a string

reverse_chars <- function(x){
  characters <- nchar(x)
  reverse <- paste(substring(x, characters:1, characters:1), collapse = "")
  return(reverse)
  }
reverse_chars("Hello my name is MK Larson")
reverse_chars("car_cat")
