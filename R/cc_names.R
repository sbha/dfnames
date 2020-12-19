#' @name to_camel_case
#'
#' @title Convert data frame column names to camelCase
#'
#' @description Function to convert data frame names to camelCase
#'
#' @param names data frame column names
#'
#' @examples to_camel_case(names(iris))
#' 
#' @export 
to_camel_case <- function(names){
  x <- to_pascal_case(names)
  x <- gsub("^([A-Z])", "\\L\\1", x, perl = TRUE)
  x
}
