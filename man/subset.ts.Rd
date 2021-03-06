% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subset.R
\name{subset.ts}
\alias{subset.ts}
\alias{subset.msts}
\title{Subsetting a time series}
\usage{
\method{subset}{ts}(
  x,
  subset = NULL,
  month = NULL,
  quarter = NULL,
  season = NULL,
  start = NULL,
  end = NULL,
  ...
)

\method{subset}{msts}(x, subset = NULL, start = NULL, end = NULL, ...)
}
\arguments{
\item{x}{a univariate time series to be subsetted}

\item{subset}{optional logical expression indicating elements to keep;
missing values are taken as false. \code{subset} must be the same length as
\code{x}.}

\item{month}{Numeric or character vector of months to retain. Partial
matching on month names used.}

\item{quarter}{Numeric or character vector of quarters to retain.}

\item{season}{Numeric vector of seasons to retain.}

\item{start}{Index of start of contiguous subset.}

\item{end}{Index of end of contiguous subset.}

\item{...}{Other arguments, unused.}
}
\value{
If \code{subset} is used, a numeric vector is returned with no ts
attributes. If \code{start} and/or \code{end} are used, a ts object is
returned consisting of x[start:end], with the appropriate time series
attributes retained. Otherwise, a ts object is returned with frequency equal
to the length of \code{month}, \code{quarter} or \code{season}.
}
\description{
Various types of subsetting of a time series. Allows subsetting by index
values (unlike \code{\link[stats]{window}}). Also allows extraction of the
values of a specific season or subset of seasons in each year. For example,
to extract all values for the month of May from a time series.
}
\details{
If character values for months are used, either upper or lower case may be
used, and partial unambiguous names are acceptable. Possible character
values for quarters are \code{"Q1"}, \code{"Q2"}, \code{"Q3"}, and
\code{"Q4"}.
}
\examples{
plot(subset(gas,month="November"))
subset(woolyrnq,quarter=3)
subset(USAccDeaths, start=49)

}
\seealso{
\code{\link[base]{subset}}, \code{\link[stats]{window}}
}
\author{
Rob J Hyndman
}
\keyword{ts}
