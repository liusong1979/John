% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classic.R
\name{input_classic}
\alias{input_classic}
\title{Classic approach for R data analysis}
\usage{
input_classic(pdata_file, exprs_file)
}
\arguments{
\item{pdata_file}{character(1) phenotype info file}

\item{exprs_file}{character(1) expression data file}
}
\value{
a data frame which merges the two input files
}
\description{
This function returns a data.frame in a classic way
}
\details{
two files are input, one phnotype file and the other expression
data file. The output is the merged data file.
}

