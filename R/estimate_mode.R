#' Estimate Mode using Density function to find Mode of continuous data
#'
#' Estimates the mode (most frequent value) of a numeric vector by identifying
#' which value on our density function is the highest
#'
#' @param x A numeric vector. Missing values (`NA`) are removed.
#'
#' @return A single numeric value representing the estimated mode.
#' @export

estimate_mode <- function(x) {
  from=min(x, na.rm=TRUE)
  to=max(x, na.rm=TRUE)
  d <- density(x, from=from, to=to, na.rm=TRUE)
  d$x[which.max(d$y)]
}
