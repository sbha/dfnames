#' @title exportcaser
#'
#' @description Function to convert data frame names to names for export
#'
#' @param names
#'
#' @return NULL
#'
#' @examples export_caser
#'
#' @export export_caser

export_caser <- function(x){
  x <- snake_caser(x)
  x <- gsub('_', ' ', x)
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)
  x
}

