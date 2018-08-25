#' Try Catch Email Alert
#'
#' This function reformats data frame column names to snake_case
#' @param rf_names
#' @keywords column names, variable names, dataframe names, reformat, snake case
#' @export
#' @examples
#' rf_names()

### Reformat variable names ###

# package

# 2017-01-08

#

rf_names <- function(x, df=T){
  arg <- deparse(substitute(x))
  if (df == T & !grepl('^names\\(.*\\)$', trimws(arg))) stop("use the argument 'df=F' to use on non-data frame names")
  x <- trimws(x)
  x <- gsub('([a-z])([A-Z])', '\\1_\\2', x)
  #x <- gsub('(\\.+|\\s+|/+|-|\\(|\\))', '_', x)
  x <- gsub('[[:punct:] ]', '_', x) # updatd 2017-10-20
  x <- gsub('_+', '_', x)
  x <- gsub('^_|_$', '', x)
  x <- tolower(x)
}

### Sample tests ###
sample_names <- c('camelCase', 'ALLCAP', 'Period..Name', ' ExtraSpaces ', 'double  space', 'Forward / Slash', 'Dash - Dash', 'Parens (test)', '_Lead and trail_')
sample_names <- rf_names(sample_names, df=F)
sample_names

### ~ Fin ~ ###

