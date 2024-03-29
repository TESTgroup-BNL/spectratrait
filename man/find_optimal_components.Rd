% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_optimal_components.R
\name{find_optimal_components}
\alias{find_optimal_components}
\title{Applies different methods for the determination of the optimal number of PLSR model components}
\usage{
find_optimal_components(
  dataset = NULL,
  targetVariable = NULL,
  method = "pls",
  maxComps = 20,
  iterations = 20,
  seg = 100,
  prop = 0.7,
  random_seed = 123456789
)
}
\arguments{
\item{dataset}{input full PLSR dataset. Usually just the calibration dataset}

\item{targetVariable}{What object or variable to use as the Y (predictand) in the PLSR model?
Usually the "inVar" variable set at the beginning of a PLS script}

\item{method}{Which approach to use to find optimal components. Options: pls, firstPlateau, firstMin}

\item{maxComps}{maximum number of components to consider}

\item{iterations}{how many different permutations to run}

\item{seg}{For the built-in pls method, how many different data segments to select from the input dataset}

\item{prop}{proportion of data to preserve for each permutation}

\item{random_seed}{random seed to use for splitting data}
}
\value{
nComps the optimal number of PLSR components
}
\description{
Applies different methods for the determination of the optimal number of PLSR model components
}
\author{
Julien Lamour, Jeremiah Anderson, Shawn P. Serbin
}
