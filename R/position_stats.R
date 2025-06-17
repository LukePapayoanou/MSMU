#' Computes Position Statics, Quintiles and Quartiles
#'
#' Calculates the quintiles and quartiles of a numeric vector using the
#' 'quintile()' function. NA's are removed
#'
#' @param x A numeric vector.
#'
#' @return A list with two elements:
#' \describe{
#'   \item{quint}{Numeric vector of quintiles (0%, 20%, 40%, ..., 100%)}
#'   \item{quart}{Numeric vector of quartiles (0%, 25%, 50%, 75%, 100%)}
#' }
#'
#' @export



position_stats <- function(x) {
  list(quint=quantile(x,seq(0,1,.2), na.rm=TRUE),
       quart=quantile(x,seq(0,1,.25), na.rm=TRUE))
}
