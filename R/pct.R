#' Percent Within N Standard Deviations of the Mean
#'
#' Calculates the percentage of values in a numeric vector that fall within
#' \code{n} standard deviations of the mean.
#'
#' @param x A numeric vector.
#' @param n A positive numeric value indicating how many standard deviations from the mean
#' to use as bounds.
#'
#' @return A single numeric value representing the percentage (0–100) of values
#' within the specified range.
#'
#' @examples
#' # Percentage of values that fall within 2 sds of the mean in random normal data
#' set.seed(123)
#' x <- rnorm(1000)
#' pct(x,2)
#'
#' # Percentage of values that fall within 2 sds of the mean in iris Sepal Lengths
#' data("iris")
#' pct(iris$Sepal.Length, 2)
#'
#'
#' @export

pct <- function(x, n) {
  if (n <= 0) {
    warning("`n` should be positive. You provided: ", n)
  }
  lbnd <- mean(x, na.rm = TRUE) - n * sd(x, na.rm = TRUE)
  ubnd <- mean(x, na.rm = TRUE) + n * sd(x, na.rm = TRUE)
  round(length(x[x >= lbnd & x <= ubnd]) / length(x) * 100, 2)
}
