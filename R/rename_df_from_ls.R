# https://stackoverflow.com/a/72548495/3058123

rename_df_from_ls <- function(df, l){
  
  l <- l[names(l) %in% names(df)]
  
  rename_with(df, ~unlist(l), all_of(names(l)))
  
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
