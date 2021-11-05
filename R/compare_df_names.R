# option to reformat names before comparing using dfnames reformatting functions

compare_df_names <- function(df1, df2, check_missing = TRUE){
  
  if (check_missing == TRUE){
    
    names(df1)[!names(df1) %in% names(df2)]
    
    # summary print missing from df1 in df2
    
    # summary print missing from df2 in df1
    
  } else {
    
    names(df1)[names(df1) %in% names(df2)]
    
    # compare types
    
  }
  
}
