### Função 01: juntar colunas ###

juntar_cols <- function(colA, colB) {
  
  a <- str_split(string = colA, "-")[[1]]
  
  b <- str_split(string = colB, "-")[[1]]
  
  z <- c(a, b) %>% 
    unique(.) %>% 
    str_c(., collapse = "-")
  
}