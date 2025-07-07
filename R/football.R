#' @title Football/Quarterback data
#'
#' @description
#' Dataset containing performance statistics for 106 football players who
#' attempted a pass in the NFL for the 2022 season.
#'
#'
#' @format A data frame with 106 rows and 17 columns:
#' \describe{
#'   \item{Player}{Players name (character)}
#'   \item{Tm}{Players team (character)}
#'   \item{Age}{Players Age (integer)}
#'   \item{Pos}{Players position (character)}
#'   \item{G}{Number of games (integer)}
#'   \item{GS}{Number of games starting (integer)}
#'   \item{Wins}{Number of wins (integer)}
#'   \item{Cmp}{Number of completions (integer)}
#'   \item{Att}{Number of throwing attempts (integer)}
#'   \item{Cmp.}{Completion percentage (numeric)}
#'   \item{Yds}{Number of yards thrown (integer)}
#'   \item{TD}{Number of touchdowns (integer)}
#'   \item{Int}{Number of interceptions thrown (integer)}
#'   \item{Y.A}{Yards per Attempt (numeric)}
#'   \item{Y.G}{Yards per Game (numeric)}
#'   \item{Rate}{Passer rating (numeric)}
#'   \item{QBR}{Total Quarterback Rating (numeric)}
#' }
#'
#' @source Data retrieved from
#' \href{https://www.pro-football-reference.com/years/2022/passing.htm}{Pro Football Reference}
#' with alterations made for educational purposes.
"football"
