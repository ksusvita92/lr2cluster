% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zCovariate.R
\name{zCovariate}
\alias{zCovariate}
\title{Transform Individual-level Data to Pairwise-level Data}
\usage{
zCovariate(
  cluster,
  X = NULL,
  location = NULL,
  .removeRepetition = F,
  id = NULL
)
}
\arguments{
\item{cluster}{cluster's name or index.}

\item{X}{a data frame of individual-level data.}

\item{location}{a matrix or data frame containing latitude and longitude coordinates.}

\item{.removeRepetition}{a logical value to exclude repetitive rows after transformation. Default is FALSE.}

\item{id}{a case's name or index, optional.}
}
\value{
A data frame containing the pairwise-level data.
\itemize{
   \item{\code{y}:}{ a binary vector indicating if a pair of cases are in the same cluster.
   \code{y=1} means a pair are in the same cluster, and \code{y = 0} means otherwise.}
   \item{\code{Spatial}:}{ the geodesic distance (in km) between two cases and only appear if \code{location} is not \code{NULL}.}
}
}
\description{
Transform individual-level data into pairwise-level data.
}
