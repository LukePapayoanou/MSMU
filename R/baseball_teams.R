#' @title Professional baseball teams data
#'
#' @description
#' This dataset contains historical performance and statistics for professional
#' baseball teams across multiple seasons from 2000-2020.
#'
#'
#' @format A data frame with 630 rows and 12 columns:
#' \describe{
#'   \item{year}{Year (integer)}
#'   \item{team_name}{Team (character)}
#'   \item{games_played}{Number of games played (integer)}
#'   \item{wins}{Number of wins (integer)}
#'   \item{losses}{Number of losses (integer)}
#'   \item{world_series}{World series winner that specific year (character)}
#'   \item{runs_scored}{Number of total runs scored during season (integer)}
#'   \item{hits}{Number of total hits during season (integer)}
#'   \item{homeruns}{Number of total homeruns during season (integer)}
#'   \item{earned_run_average}{Team earned run average per 9 innings (numeric)}
#'   \item{fielding_percentage}{Team fielding percentage (numeric)}
#'   \item{home_attendance}{Average home game attendance (integer)}
#' }
#'
#' @source Data retrieved from \href{https://sabr.org/lahman-database/}{Lahmans Baseball Database}
#' with alterations made for educational purposes
"baseball_teams"
