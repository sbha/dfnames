#' @name titlecaser
#'
#' @title Convert data frame column names to Title Case
#'
#' @description Function to convert data frame names to title names for export
#'
#' @param names data frame column names
#'
#' @examples to_title_case(names(iris))
#'
#' @export
to_title_case <- function(names){
  x <- snake_caser(names)
  x <- gsub('_', ' ', x)
  x <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", x, perl=TRUE)
  x
}

title_caser = function(names) {
  .Deprecated("to_title_case")
  to_title_case(names)
}
