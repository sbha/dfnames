#' Convert data frame column names to PascalCase
#'
#' @name paschal_caser
#'
#' @title Convert data frame column names to PaschalCase
#'
#' @description Function to convert data frame names to PaschalCase
#'
#' @param names data frame column names
#'
#' @examples to_pascal_case(names(iris))
#'
#' @export
to_pascal_case <- function(names){
  x <- trimws(names)
  x <- gsub("[[:punct:] ]", "_", x)
  x <- gsub("_+", " ", x)
  x <- gsub("^_|_$", "", x)
  x <- gsub("\\s+", " ", x)
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl = TRUE)
  x <- gsub("([A-Z])([A-Z]+)", "\\1\\L\\2", x, perl = TRUE)
  x <- gsub("\\s+", "", x)
  x
}

pascal_caser = function(names) {
  .Deprecated("to_pascal_case")
  to_pascal_case(names)
}
