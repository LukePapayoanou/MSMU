#' @title Heart data
#'
#' @description
#' Dataset containing medical and diagnostic information for 303 patients,
#' used to study the presence of Atherosclerotic Heart Disease (AHD).
#'
#'
#' @format A data frame with 303 rows and 14 columns:
#' \describe{
#'   \item{Age}{Patients age (integer)}
#'   \item{Sex}{Patients Sex (1 = Male, 0 = Female) (integer)}
#'   \item{ChestPain}{Chest pain type (character)}
#'   \item{RestBP}{Resting blood pressure (in mm Hg on admission to the hospital) (integer)}
#'   \item{Chol}{Serum cholesterol in mg/dl (integer)}
#'   \item{Fbs}{fasting blood sugar &gt; 120 mg/dl (1 = true; 0 = false) (integer)}
#'   \item{RestECG}{Resting electrocardiographic results (integer)}
#'   \item{MaxHR}{Maximum heart rate achieved (integer)}
#'   \item{ExAng}{Exercise induced angina (1 = yes; 0 = no) (integer)}
#'   \item{Oldpeak}{ST depression induced by exercise relative to rest (numeric)}
#'   \item{Slope}{The slope of the peak exercise ST segment (integer)}
#'   \item{Ca}{Number of major vessels (0-3) colored by fluoroscopy (integer)}
#'   \item{Thal}{Thal condition (character)}
#'   \item{AHD}{Atherosclerosis Heart Disease condition (character)}
#' }
#'
#' @source Data retrieved from
#' \href{https://archive.ics.uci.edu/dataset/45/heart+disease}{UC Irvine Machine Learning Repository}
"heart"
