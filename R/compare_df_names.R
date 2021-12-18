compare_df_names <- function(df1, df2, check_missing = TRUE, clean_names = TRUE){
  
  if (clean_names == TRUE){
    names(df1) <- to_snake_case(names(df1))
    names(df2) <- to_snake_case(names(df2))
  }
  
  
  if (check_missing == TRUE){
    
    #cat('the following column names from ', df1, 'are not in ', df2)
    
    names(df1)[!names(df1) %in% names(df2)]
    
    # summary print missing from df1 in df2
    
    # summary print missing from df2 in df1
    
  } else {
    
    names(df1)[names(df1) %in% names(df2)]
    
    # compare types
    
  }
  
}
