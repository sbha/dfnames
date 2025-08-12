#' @name to_camel_case
#'
#' @title Convert data frame column names to camelCase
#'
#' @description Function to convert data frame names to camelCase
#'
#' @param names data frame column names
#' @return Character vector in camelCase format
#' @examples to_camel_case(names(iris))
#' 
#' @export 
to_camel_case <- function(names){
  
  if (!is.character(names)) {
    stop("Input must be a character vector")
  }
  
  x <- to_pascal_case(names)
  x <- gsub("^([A-Z])", "\\L\\1", x, perl = TRUE)
  return(x)
}
