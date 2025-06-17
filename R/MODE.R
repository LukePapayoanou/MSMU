#' Find the Mode of a Numeric Vector
#'
#' Calculates the mode (most frequent value) of a numeric vector. If there is a tie, returns all values that share the highest frequency.
#'
#' @param x A numeric vector.
#'
#' @return A numeric value (or vector) representing the mode(s) of \code{x}.
#' @export

MODE <- function(x){
  tbl <- table(x)
  as.numeric(names(tbl[tbl==max(tbl)]))
}
