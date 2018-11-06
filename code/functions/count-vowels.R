#Reverse Chars
#' @title count-vowels
#' @description reverses the characters in a string in R
#' @param x a string
#' @return the reverse of a string
count_vowels <- function(x){
  
  ltrs <- tolower(strsplit(x, "")[[1]])
  vowels1 <- c("a", "e", "i", "o", "u")
  ltrs <- ltrs[ltrs %in% vowels1]
  return(table(ltrs))
}
