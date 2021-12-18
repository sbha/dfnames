#' @title Convert data frame column names to snake_case
#'
#' @name to_snake_case
#'
#' @description Function to convert data frame names to snake_case
#'
#' @param names data frame column names
#'
#' @examples to_snake_case(names(iris))
#'
#' @export 
to_snake_case <- function(names){
  x <- trimws(names)
  x <- gsub("([a-z])([A-Z])", "\\1_\\2", x)
  x <- gsub("[[:punct:] ]", "_", x)
  x <- gsub("_+", "_", x)
  x <- gsub("^_|_$", "", x)
  x <- make.unique(x, sep = "_")
  x <- tolower(x)
  x
}

