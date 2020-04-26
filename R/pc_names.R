#' Convert data frame column names to PaschalCase
#'
#' @name paschal_caser
#'
#' @description Function to convert data frame names to PaschalCase
#'
#' @param names data frame column names
#'
#' @examples paschal_caser(names(iris))
#'
#' @export
paschal_caser <- function(names){
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
