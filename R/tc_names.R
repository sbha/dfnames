#' @title titlecaser
#'
#' @description Function to convert data frame names to title names for export
#'
#' @param names data frame column names
#'
#' @return NULL
#'
#' @examples title_caser(iris)
#'
#' @export title_caser

title_caser <- function(x){
  x <- snake_caser(x)
  x <- gsub('_', ' ', x)
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)
  x
}

