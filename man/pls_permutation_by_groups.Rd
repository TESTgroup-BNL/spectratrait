% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pls_permutation.R
\name{pls_permutation_by_groups}
\alias{pls_permutation_by_groups}
\title{Run a PLSR model permutation analysis stratified by selected "groups". Can be used to
determine the optimal number of components or conduct a boostrap uncertainty analysis}
\usage{
pls_permutation_by_groups(
  dataset = NULL,
  targetVariable = NULL,
  maxComps = 20,
  iterations = 20,
  prop = 0.7,
  group_variables = NULL,
  verbose = FALSE
)
}
\arguments{
\item{dataset}{input full PLSR dataset. Usually just the calibration dataset}

\item{targetVariable}{What object or variable to use as the Y (predictand) in the PLSR model?
Usually the "inVar" variable set at the beginning of a PLS script}

\item{maxComps}{maximum number of components to use for each PLSR fit}

\item{iterations}{how many different permutations to run}

\item{prop}{proportion of data to preserve for each permutation}

\item{group_variables}{Character vector of the form c("var1", "var2"..."varn")
providing the factors used for stratified sampling in the PLSR permutation analysis}

\item{verbose}{Should the function report the current iteration status/progress to the terminal
or run silently? TRUE/FALSE. Default FALSE}
}
\value{
output a list containing the PRESS and coef_array.
output <- list(PRESS=press.out, coef_array=coefs)
}
\description{
Run a PLSR model permutation analysis stratified by selected "groups". Can be used to
determine the optimal number of components or conduct a boostrap uncertainty analysis
}
\author{
asierrl, Shawn P. Serbin, Julien Lamour
}
