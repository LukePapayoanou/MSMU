#' Computes Position Statics, Quintiles and Quartiles
#'
#' Calculates the quintiles, including quartiles(data is split in 4 equal parts)
#' and quintiles(data is split in 5 equal parts) of a numeric vector using the
#' 'quantile()' function. NA's are removed.
#'
#' @details
#' **Percentiles** are values that divide a dataset into 100 equal parts, each representing 1% of the distribution.
#'   For example, the 25th percentile is the value below which 25% of the data fall.
#'
#' **Quartiles** are special percentiles that divide the data into four equal groups:
#'   Q1 (25th percentile), Q2 (50th percentile or median), Q3 (75th percentile).
#'
#' **Quintiles** divide data into five equal groups, each representing 20% of the distribution:
#'   20th percentile, 40th, 60th, 80th percentiles split the data into quintiles.
#'
#' @param x A numeric vector.
#'
#' @return A list with two elements:
#' \describe{
#'   \item{quint}{Numeric vector of quintiles (0%, 20%, 40%, ..., 100%)}
#'   \item{quart}{Numeric vector of quartiles (0%, 25%, 50%, 75%, 100%)}
#' }
#'
#' @examples
#' # Position stats of random data
#' set.seed(123)
#' x <- rnorm(1000)
#' position_stats(x)
#'
#' # Position stats of MPG in mtcars data set
#' position_stats(mtcars$mpg)
#'
#'
#' @export



position_stats <- function(x) {
  list(quint=quantile(x,seq(0,1,.2), na.rm=TRUE),
       quart=quantile(x,seq(0,1,.25), na.rm=TRUE))
}
