#Reverse Chars
#' @title count-vowels
#' @description creates a table with the numeric counts for each value in a string
#' @param x a string
#' @return values with names
count_vowels <- function(x){
  
  ltrs <- tolower(strsplit(x, "")[[1]])
  vowels1 <- c("a", "e", "i", "o", "u")
  ltrs <- ltrs[ltrs %in% vowels1]
  return(table(ltrs))
}
