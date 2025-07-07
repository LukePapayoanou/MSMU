#' @title 2020 election data
#'
#' @description
#' Dataset providing detailed results from the 2020 U.S. presidential election
#' at the county level.
#'
#'
#' @format A data frame with 32177 rows and 7 columns:
#' \describe{
#'   \item{state}{State (character)}
#'   \item{state_ev}{State electoral votes (integer)}
#'   \item{county}{County name (character)}
#'   \item{candidate}{Candidate name (character)}
#'   \item{party}{Candidate party (character)}
#'   \item{total_votes}{Total number of votes (integer)}
#'   \item{won}{True or false for the candidate to win the county (logical)}
#' }
#'
#' @source Data retrieved from
#' \href{https://electionlab.mit.edu/data}{MIT Election Data and Science Lab}, 2018,
#' \href{https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/VOQCHQ}{"County Presidential Election Returns 2000-2020”}
#' with alterations made for educational purposes.
"election_2020"
