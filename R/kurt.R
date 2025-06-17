#' Compute Sample Kurtosis
#'
#' Calculates the kurtosis of a numeric vector.
#' A value near 0 suggests normal kurtosis (mesokurtic),
#' positive values indicate heavier tails (leptokurtic), and negative
#' values indicate lighter tails (platykurtic).
#'
#' @param x A numeric vector.
#'
#' @return A single numeric value representing the kurtosis
#'
#' @export
#'

kurt <- function(x) {
  z <- (x-mean(x,na.rm=TRUE))/sd(x,na.rm=TRUE)
  mean(z^4,na.rm=TRUE) - 3
}
