#' @title camelcaser
#'
#' @description Function to convert data frame names to camelCase
#'
#' @param names data frame column names
#'
#' @examples camel_caser(names(iris))
#' 
#' @export camel_caser

camel_caser <- function(names){
  x <- trimws(names)
  x <- gsub("[[:punct:] ]", "_", x)
  x <- gsub("_+", " ", x)
  x <- gsub("^_|_$", "", x)
  x <- gsub("\\s+", " ", x)
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl = TRUE)
  x <- gsub("([A-Z])([A-Z]+)", "\\1\\L\\2", x, perl = TRUE)
  x <- gsub("\\s+", "", x)
  x <- gsub("^([A-Z])", "\\L\\1", x, perl = TRUE)
  x
}
