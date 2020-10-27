#' @name print_df_names
#' 
#' @title Print data frame column names
#'
#' @descritpion This function prints data frame column names in the 
#'        console in an easy to copy and paste format
#' 
#' @param df name of data frame to print column names
#' @param regex_pattern optional argument to use a regular 
#'        expression to filter column names
#' @param comma optional argument to seperate column names
#'        with a comma   
#'             
#' @keywords column names
#' 
#' @examples print_df_names('iris')
#'
#' @export
print_df_names <- function(df, regex_pattern, comma){
    if(missing(comma)){
      sepc <- '\n'
    } else {
      if(comma==TRUE) sepc <- ',\n'
      if(comma==FALSE) sepc <- '\n'
    } 
    if(exists('df') && is.data.frame(get('df'))){
      if(missing(regex_pattern)){
        cat(names(df), sep = sepc)
      } else {
        names(df) <- names(df)[grepl(regex_pattern, names(df), ignore.case = TRUE)]
        df_out <- names(df)[!is.na(names(df))]
        cat(df_out, sep = sepc)
      }
    } else {
      cat('must enter the name of a valid data frame') 
    }
  }

# Data frame names can be filtered using regular expressions
# Data frame names can be printed with a seperating comma
# if no regex match, warn
