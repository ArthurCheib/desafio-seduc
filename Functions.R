### Função 01 - funcionalidade: juntar as colunas que formarão os vetores contendo todos os membros do corpo diretivo ###

juntar_cols <- function(colA, colB) {
  
  a <- str_split(string = colA, "-")[[1]]
  
  b <- str_split(string = colB, "-")[[1]]
  
  z <- c(a, b) %>% 
    unique(.) %>% 
    str_c(., collapse = "-")
  
}


### Função 02 - funcionalidade: calcular o turnover do corpo diretivo de cada escola ano a ano

calc_turnover <- function(equipe_ano_base, equipe_ano_calc) {
  
  a <- str_split(string = equipe_ano_base, "-")[[1]]
  
  b <- str_split(string = equipe_ano_calc, "-")[[1]]
  
  entrada <- length(b[!b %in% a])
  
  saida <- length(a[!a %in% b])
  
  turnover <- ((entrada+saida)/2)/length(a)
  
}