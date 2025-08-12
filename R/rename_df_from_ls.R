# https://stackoverflow.com/a/72548495/3058123

rename_df_from_ls <- function(df, l, list_names_as_values = FALSE){
  
  # input validation
  if (!is.data.frame(df)) stop("df must be a data frame")
  if (!is.list(l)) stop("l must be a list")
  if (is.null(names(l))) stop("l must be a named list")
  
  # use list names as values
  if (list_names_as_values){
    cn <- names(l)
    names(cn) <- unlist(unname(l))
    l <- cn %>% as.list()
  }
  
  # filter to existing columns
  l <- l[names(l) %in% names(df)]
  
  if (length(l)){
    
    return(rename_with(df, ~unlist(l), all_of(names(l))))
    
  } else {
    
    return(df)
    
  }
}


# sample_list <- list(
#   var1 = "new_name1",
#   var5 = 'new_name5',
#   var2 = "new_name2"
# )
# 
# sample_df <- data.frame(
#   var2 = letters[4:6],
#   var6 = letters[7:9],
#   var1 = letters[1:3],
#   var11 = letters[5:7]
# )
# 
# rename_df_from_ls(sample_df, sample_list)
