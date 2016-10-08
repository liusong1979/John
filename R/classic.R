#' Classic approach for R data analysis
#'
#' This function returns a data.frame in a classic way
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
#' @export
#'

input_classic <- function(pdata_file, exprs_file){
  pdata=read.csv(pdata_file, row.names = 1, check.names = FALSE)
  exprs=read.csv(exprs_file, row.names = 1, check.names = FALSE)
  ALL = merge(pdata, t(exprs), by=0)
  return(ALL)
}

# res1=colMeans(all[, -(1:22)])
# res2=apply(all[, -(1:22)], 2, mean)
#
# system.time(all(res1==res2))
# system.time(all.equal(res1, res2))
# system.time(identical(res1, res2))
#
# res1[length(res1)]
# dim(exprs)
#
# plot(res1)
# plot(sort(res1))
# hist(res1, breaks = 100)
# plot(density(res1))

# library(magrittr)
# all[, -(1:22)] %>% colMeans() %>% density() %>% plot()

# dir()
#
# pdata_file=file.choose()
# pdata=read.csv(pdata_file, row.names = 1, check.names = FALSE)
#
# exprs_file = file.choose()
# exprs=read.csv(exprs_file, row.names = 1, check.names = FALSE)
#
# all=merge(pdata, t(exprs), by=0)

