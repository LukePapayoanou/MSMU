#' Summary of Central Tendency
#'
#' Computes a variety of center statistics for a numeric vector, including:
#' mean, median, trimmed means (10% and 25%), and estimated mode (via probability density function
#' using `estimate_mode()`).
#'
#' @param x A numeric vector.
#'
#' @return A named numeric vector with values for:
#' \describe{
#'   \item{mean}{Arithmetic mean}
#'   \item{median}{Median}
#'   \item{trim25}{25% trimmed mean}
#'   \item{trim10}{10% trimmed mean}
#'   \item{est_mode}{Estimated mode from `estimate_mode()`}
#' }
#'
#' @importFrom stats median
#'
#' @seealso \code{\link{estimate_mode}}
#'
#' @examples
#' # Center Stats of continuous random data
#' set.seed(123)
#' x <- rnorm(1000, mean=50, sd=10)
#' center_stats(x)
#'
#' # Center Stats of Sepal Length in iris data set
#' data("iris")
#' center_stats(iris$Sepal.Length)
#'
#' @export

center_stats <- function(x){
  c(mean=round(mean(x,na.rm=TRUE),2),
    median=round(median(x,na.rm=TRUE),2),
    trim25=round(mean(x,trim=.25,na.rm=TRUE),2),
    trim10=round(mean(x,trim=.10,na.rm=TRUE),2),
    est_mode=round(estimate_mode(x),2)
  )
}
