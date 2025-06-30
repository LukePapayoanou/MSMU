#' Computes Sample Skew and Kurtosis
#'
#' Calculates the skewness of a numeric vector (via `skew()`).
#' A positive value indicates right skew (long right tail), while a negative value
#' indicates left skew (long left tail). A zero value represents symmetry.
#' Calculates the kurtosis of a numeric vector (via `kurt()`).
#' A value near 0 suggests normal kurtosis (mesokurtic),
#' positive values indicate heavier tails (leptokurtic), and negative
#' values indicate lighter tails (platykurtic).
#'
#' @param x A numeric vector.
#'
#' @return A list with two elements:
#' \describe{
#'    \item{skew}{Skew of Data from `skew()`}
#'    \item{kurt}{Kurtosis of Data from `kurt()`}
#' }
#'
#' @examples
#' # Shape stats of mpg in mtcars
#' data("mtcars")
#' shape_stats(mtcars$mpg)
#'
#'
#' @export

shape_stats <- function(x) {
  c(skew=round(skew(x),2),
    kurt=round(kurt(x),2))
}
