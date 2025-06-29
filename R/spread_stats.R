#' Summary of Spread Statistics
#'
#' Computes a variety of spread statistics for a numeric vector, including:
#' standard deviation, iqr, the normalized minimum, maximum,
#' and range as well as the percentage of data within 1, 2,
#' and 3 standard deviations (via `pct()`)
#'
#' @param x A numeric vector
#'
#' @return
#' \describe{
#'   \item{sd}{Standard Deviation}
#'   \item{iqr}{Inter Quartile Range}
#'   \item{minz}{Normalized Minimum}
#'   \item{maxz}{Normalized Maximum}
#'   \item{diffz}{Normalized Range}
#'   \item{pct1}{Percent of data within 1 standard deviation from `pct()`}
#'   \item{pct2}{Percent of data within 2 standard deviation from `pct()`}
#'   \item{pct3}{Percent of data within 3 standard deviation from `pct()`}
#' }
#'
#' @seealso \code{\link{pct}}
#'
#' @export
#'


spread_stats <- function(x){
  c(sd=round(sd(x,na.rm=TRUE),2),
    iqr=round(IQR(x,na.rm=TRUE),2),
    minz=round(range(scale(x),na.rm=TRUE)[1],2),
    maxz=round(range(scale(x),na.rm=TRUE)[2],2),
    diffz=round(diff(range(scale(x),na.rm=TRUE)),2),
    pct1=round(pct(x,1),2),
    pct2=round(pct(x,2),2),
    pct3=round(pct(x,3),2))
}
