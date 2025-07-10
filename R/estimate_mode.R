#' Estimate Mode using Density function to find Mode of continuous data
#'
#' Estimates the mode of a numeric vector by identifying the value corresponding
#' to the peak of its estimated probability density function.
#'
#'
#' @param x A numeric vector. Missing values (`NA`) are removed.
#'
#' @return A single numeric value representing the estimated mode.
#'
#' @importFrom stats density
#'
#' @examples
#' # Estimate the mode of continuous random data
#' set.seed(123)
#' x <- rnorm(1000, mean=5, sd=2)
#' estimate_mode(x)
#'
#' # Estimate the mode of miles-per-gallon (mpg) in the mtcars dataset
#' data("mtcars")
#' estimate_mode(mtcars$mpg)
#'
#' @export

estimate_mode <- function(x) {
  from=min(x, na.rm=TRUE)
  to=max(x, na.rm=TRUE)
  d <- density(x, from=from, to=to, na.rm=TRUE)
  d$x[which.max(d$y)]
}
