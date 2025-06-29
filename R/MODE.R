#' Find the Mode of a Numeric Vector
#'
#' Calculates the mode (most frequent value) of a numeric vector. If there is a tie, returns all values that share the highest frequency.
#'
#' @param x A numeric vector.
#'
#' @return A numeric value (or vector) representing the mode(s) of \code{x}.
#'
#' @examples
#' # Mode of a Numeric Vector
#' MODE(c(1,2,3,3,3,4,5,5,3,8))
#'
#' # Mode of the number of cylinders in mtcars dataset
#' data("mtcars")
#' MODE(mtcars$cyl)
#'
#' @export

MODE <- function(x){
  tbl <- table(x)
  as.numeric(names(tbl[tbl==max(tbl)]))
}
