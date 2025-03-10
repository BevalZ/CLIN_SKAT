% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logisticweightMAF.R
\name{Get_Logistic_Weights_MAF_POP}
\alias{Get_Logistic_Weights_MAF_POP}
\title{weighting based on minor allele frequency}
\usage{
Get_Logistic_Weights_MAF_POP(
  dat,
  pop = "db_gnomAD_exome_freq",
  par1 = 0.07,
  par2 = 150
)
}
\arguments{
\item{dat}{input data with column chr, start, end, ref, alt to retrieve MAF in specified population}

\item{pop}{population frequency in TransAT package. Default is "db_gnomAD_exome_freq"}

\item{par1}{default is 0.07}

\item{par2}{default is 150}
}
\value{
a table of weighted value of MAF
}
\description{
read vcf.gz and transform into Plink to do SAKT analysis
}
\examples{
\dontrun{
dat<-read.csv(system.file("extdata", "anno_freq_data.csv", package = "CLINSKAT"),
             stringsAsFactors = FALSE, encoding = "UTF-8", row.names = NULL, sep = ",")
weights_MAF<-Get_Logistic_Weights_MAF(dat, pop="db_gnomAD_exome_freq", par1= 0.07, par2=150)
}

}
