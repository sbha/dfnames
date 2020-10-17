#' @name reformat_names
#' 
#' @title Reformat data frame column names
#'
#' @description Function to convert data frame names to a standardized format
#'
#' @param names data frame column names
#' @param format name format 
#'
#' @examples reformat_names(names(iris), 'snake')
#'
#' @export reformat_names

reformat_names <- function(names, format = 'snake'){
  if (format == 'snake') {
    to_snake_case(names)
  } else if (format == 'camel'){
    to_camel_case(names)
  } else if (format == 'pascal'){
    to_pascal_case(names)
  } else if (format == 'title'){
    to_title_case(names)
  } else{
    cat("the format argument must be set as 'camel', 'pascal', 'snake', or 'title'")
  }
}
