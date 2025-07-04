% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pct.R
\name{pct}
\alias{pct}
\title{Percent Within N Standard Deviations of the Mean}
\usage{
pct(x, n)
}
\arguments{
\item{x}{A numeric vector.}

\item{n}{A positive numeric value indicating how many standard deviations from the mean
to use as bounds.}
}
\value{
A single numeric value representing the percentage (0–100) of values
within the specified range.
}
\description{
Calculates the percentage of values in a numeric vector that fall within
\code{n} standard deviations of the mean.
}
\examples{
# Percentage of values that fall within 2 sds of the mean in random normal data
set.seed(123)
x <- rnorm(1000)
pct(x,2)

# Percentage of values that fall within 2 sds of the mean in iris Sepal Lengths
data("iris")
pct(iris$Sepal.Length, 2)


}
