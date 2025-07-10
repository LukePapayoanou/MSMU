#' Compute Sample Skewness
#'
#' Calculates the skewness of a numeric vector.
#' A positive value indicates right skew (long right tail), while a negative value
#' indicates left skew (long left tail). A zero value represents symmetry
#'
#' @param x A numeric vector.
#'
#' @return A single numeric value representing the skewness of the distribution.
#'
#' @importFrom stats sd
#'
#' @examples
#' # Skew of Sepal Lengths in iris
#' data("iris")
#' skew(iris$Sepal.Length)
#'
#'
#' @export
#'

skew <- function(x) {
  z <- (x-mean(x,na.rm=TRUE))/sd(x,na.rm=TRUE)
  mean(z^3,na.rm=TRUE)
}
