#' @title PaschalCaser
#'
#' @description Function to convert data frame names to PaschalCase
#'
#' @param names
#'
#' @return NULL
#'
#' @examples paschal_caser
#'
#' @export paschal_caser

paschal_caser <- function(x){
  x <- trimws(x)
  x <- gsub("[[:punct:] ]", "_", x)
  x <- gsub("_+", " ", x)
  x <- gsub("^_|_$", "", x)
  x <- gsub("\\s+", " ", x)
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl = TRUE)
  x <- gsub("([A-Z])([A-Z]+)", "\\1\\L\\2", x, perl = TRUE)
  x <- gsub("\\s+", "", x)
  x
}
