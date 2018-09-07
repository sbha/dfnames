#' @title reformat_names
#'
#' @description Function to convert data frame names to a standardized format
#'
#' @param names
#'
#' @return NULL
#'
#' @examples reformat_names
#'
#' @export reformat_names

reformat_names <- function(names, case = 'snake'){
  #if (!case %in% c('camel', 'paschal', 'snake'))
  if (case == 'snake') {
    snake_caser(names)
  } else if (case == 'camel'){
    camel_caser(names)
  } else if (case == 'paschal'){
    paschal_caser(names)
  } else if (case == 'export'){
    export_caser(names)
  } else{
    print("the case argument must be set as either 'camel', 'paschal', 'snake', or 'export'")
  }
}
