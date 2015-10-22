#' salary
#'
#' Salaries of professors at a US college.
#'
#' @format A data frame with 52 observations and five variables:
#' \describe{
#' \item{\code{sex}}{gender: 1 - female, 0 - male}
#' \item{\code{rank}}{professor rank: 1 - assistant, 2 - associate, 3 - full}
#' \item{\code{degree}}{degree: 0 - masters, 1 - doctorate}
#' \item{\code{yeardegree}}{years since degree}
#' \item{\code{salary}}{salary in USD for 9 months}
#' }
#'
#' Obtained from \url{http://data.princeton.edu/wws509/datasets/\#salary}
#'
"salary"

#' toyr
#'
#' A toy dataset for regression generated as sal = 1000 + 100*edu - 500*etn
#'
#' @format A data frame with 10 observations and three variables:
#' \describe{
#' \item{\code{education}}{presumaby in years}
#' \item{\code{ethnicity}}{presumably 1 means foreigner (deprived), 0 - native}
#' \item{\code{salary}}{presumed monthly salary}
#' }
#'
#'
"toyr"
