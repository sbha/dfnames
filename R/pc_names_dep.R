#' Camal Case Names
#'
#' This function reformats data frame column names to snake_case
#' @param pc_names
#' @keywords column names, variable names, dataframe names, reformat, camel case
#' @export
#' @examples
#' pc_names()

### Reformat variable names ###

# package

# 2017-10-20

#

pc_names <- function(x, df=T){
  arg <- deparse(substitute(x))
  if (df == T & !grepl('^names\\(.*\\)$', trimws(arg))) stop("use the argument 'df=F' to use on non-data frame names")
  x <- trimws(x)
  #x <- gsub('([a-z])([A-Z])', '\\1_\\2', x)
  #x <- gsub('(\\.+|\\s+|/+|-|\\(|\\))', '_', x)
  x <- gsub('[[:punct:] ]', '_', x) # updatd 2017-10-20
  x <- gsub('_+', ' ', x)
  x <- gsub('^_|_$', '', x)
  x <- gsub('\\s+', ' ', x)
  x <- gsub('(^|[[:space:]])([[:alpha:]])', '\\1\\U\\2', x, perl=TRUE)
  x <- gsub('([A-Z])([A-Z]+)', "\\1\\L\\2", x, perl=TRUE)
  x <- gsub('\\s+', '', x)
  #x <- tolower(x)
}

### Sample tests ###
sample_names <- c('snake_case', 'camelCase', 'ALLCAP', 'Period..Name', ' ExtraSpaces ', 'double  space', 'Forward / Slash', 'Dash - Dash', 'Parens (test)', '_Lead and trail_')
sample_names <- pc_names(sample_names, df=F)
sample_names

### ~ Fin ~ ###

