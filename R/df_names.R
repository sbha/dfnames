#' Data Frame variable names
#'
#' This function prints data frame variable/column names in the console in an easy to copy and paste format
#' @param df_name
#' @keywords variable names
#' @export
#' @examples
#' df_names()




### Data frame variable names ###

# Prints data frame variable/column names in the console in an easy to copy and paste format
# Data frame names can be filtered using regular expressions
# Data frame names can be printed with a seperating comma

# Created:      2016-05-21     
# Last update:  2016-05-25

df_names <- function(df_name, regex_pattern, comma){
  if(missing(comma)){
    sepc <- '\n'
  } else {
    if(comma==TRUE) sepc <- ',\n'
    if(comma==FALSE) sepc <- '\n'
  } 
  if(exists('df_name') && is.data.frame(get('df_name'))){
    if(missing(regex_pattern)){
      cat(names(df_name), sep = sepc)
    } else {
      names(df_name) <- names(df_name)[grepl(regex_pattern, names(df_name), ignore.case = TRUE)]
      df_names_out <- names(df_name)[!is.na(names(df_name))]
      cat(df_names_out, sep = sepc)
    }
  } else {
    print('must enter the name of a valid data frame') 
  }
}

# df_names(df1, comma=FALSE)
# df_names(df1, comma=TRUE)
# df_names(df1, 'job', comma=TRUE)
# df_names(df1, 'job', F)
# df_names(df1)


### ~ Fin ~ ###
