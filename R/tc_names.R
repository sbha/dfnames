#' @title Convert data frame column names to Title Case
#'
#' @name to_title_case
#'
#' @description Function to convert data frame names to title names for export
#'
#' @param names data frame column names
#'
#' @examples to_title_case(names(iris))
#'
#' @export
to_title_case <- function(names){
  
  if (!is.character(names)) {
    stop("Input must be a character vector")
  }
  
  x <- to_snake_case(names)
  x <- make.unique(x, sep = "_")
  x <- gsub('_', ' ', x)
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)
  return(x)
}

