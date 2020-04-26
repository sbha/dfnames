#' @title reformat_names
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
  #if (!format %in% c('camel', 'paschal', 'snake'))
  if (format == 'snake') {
    snake_caser(names)
  } else if (format == 'camel'){
    camel_caser(names)
  } else if (format == 'paschal'){
    paschal_caser(names)
  } else if (format == 'title'){
    title_caser(names)
  } else{
    print("the format argument must be set as either 'camel', 'paschal', 'snake', or 'title'")
  }
}
