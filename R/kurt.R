#' Compute Sample Kurtosis
#'
#' Calculates the kurtosis of a numeric vector.
#' A value near 0 suggests normal kurtosis (mesokurtic),
#' positive values indicate heavier tails (leptokurtic), and negative
#' values indicate lighter tails (platykurtic).
#'
#' @details
#' The z-scores are computed as:
#' \deqn{z_i = \frac{x_i - \bar{x}}{sd}}
#'
#' The kurtosis is then calculated as:
#' \deqn{\text{Kurtosis} = \frac{1}{n} \sum_{i=1}^{n} z_i^4 - 3}
#'
#' Where:
#' - \eqn{\bar{x}} is the mean of \eqn{x},
#' - \eqn{sd} is the standard deviation of \eqn{x},
#' - and \eqn{n} is the number of observations.
#'
#'
#' @param x A numeric vector.
#'
#' @return A single numeric value representing the kurtosis
#'
#' @importFrom stats sd
#'
#' @examples
#' # Kurtosis of mpg in mtcars
#' data("mtcars")
#' kurt(mtcars$mpg)
#'
#'
#' @export
#'

kurt <- function(x) {
  z <- (x-mean(x,na.rm=TRUE))/sd(x,na.rm=TRUE)
  mean(z^4,na.rm=TRUE) - 3
}
