#' Summary of Central Tendency
#'
#' Computes a variety of center statistics for a numeric vector, including:
#' mean, median, trimmed means (10% and 25%), mode (via `MODE()`),
#' and estimated mode (via kernel density using `estimate_mode()`).
#'
#' @param x A numeric vector.
#'
#' @return A named numeric vector with values for:
#' \describe{
#'   \item{mean}{Arithmetic mean}
#'   \item{median}{Median}
#'   \item{trim25}{25% trimmed mean}
#'   \item{trim10}{10% trimmed mean}
#'   \item{mode}{Statistical mode from `MODE()`}
#'   \item{est_mode}{Estimated mode from `estimate_mode()`}
#' }
#'
#' @seealso \code{\link{MODE}}, \code{\link{estimate_mode}}
#'
#' @export

center_stats <- function(x){
  c(mean=round(mean(x,na.rm=TRUE),2),
    median=round(median(x,na.rm=TRUE),2),
    trim25=round(mean(x,trim=.25,na.rm=TRUE),2),
    trim10=round(mean(x,trim=.10,na.rm=TRUE),2),
    mode=round(MODE(x),2),
    est_mode=round(estimate_mode(x),2)
  )
}
