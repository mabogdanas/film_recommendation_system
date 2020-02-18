extract_smth = function(df, col){
  df_n = data.frame(stringsAsFactors = F)
  
  for(i in 1:nrow(df)){
    df_n = cbind(
      df[i,],
      value = 1
    ) %>% 
      plyr::rbind.fill(df_n)
  }
  
  df_n = df_n %>% 
    spread(col, value, fill = 0)
}
