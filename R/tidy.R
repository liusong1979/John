#' Tidy approach for R data analysis
#'
#' This function returns a data.frame in a tidy way
#'
#' @details two files are input, one phnotype file and the other expression
#' data file. The output is the merged data file.
#'
#' @param pdata_file character(1) phenotype info file
#'
#' @param exprs_file character(1) expression data file
#'
#' @return a data frame which merges the two input files
#'
#' @importFrom reshape2 melt
#' @importFrom dplyr tbl_df
#' @importFrom magrittr %>%
#'
#' @export
#'

input_tidy <- function(pdata_file, exprs_file){
  #pdata=read.csv(pdata_file, row.names = 1, check.names = FALSE)
  #exprs=read.csv(exprs_file, row.names = 1, check.names = FALSE)
  #ALL = merge(pdata, t(exprs), by=0)
  classic = input_classic(pdata_file, exprs_file)
  melt(classic, id.vars = 1:22, variable.name = "probeset", value.name = "exprs") %>% tbl_df
  #return(classic)
}



# tidy<-melt(all, id.vars = 1:22, variable.name = "probeset", value.name = "exprs")
# tidy %>% tbl_df
# probeset_mean <- tidy %>% group_by(probeset) %>% summarize(mean=mean(exprs))
# probeset_mean %>% .[["mean"]] %>% density()
