#' @name titlecaser
#'
#' @title Convert data frame column names to Title Case
#'
#' @description Function to convert data frame names to title names for export
#'
#' @param names data frame column names
#'
#' @examples title_caser(names(iris))
#'
#' @export
title_caser <- function(names){
  x <- snake_caser(names)
  x <- gsub('_', ' ', x)
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)
  x
}

