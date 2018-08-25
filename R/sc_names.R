#' @title snakecaser
#'
#' @description Function to convert data frame names to snake_case
#'
#' @param names
#'
#' @return NULL
#'
#' @examples snake_caser
#'
#' @export snake_caser

snake_caser <- function(x){
  x <- trimws(x)
  x <- gsub("([a-z])([A-Z])", "\\1_\\2", x)
  x <- gsub("[[:punct:] ]", "_", x)
  x <- gsub("_+", "_", x)
  x <- gsub("^_|_$", "", x)
  x <- tolower(x)
  #x <- ifelse(x == '', 'missing_name', x)
  x
}


