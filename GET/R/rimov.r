#' Year temperature curves
#'
#' Year temperature curves
#'
#'
#' The water temperature data sampled at the water level of Rimov
#' reservoir in Czech republic every day for the 36 years between 1979 and 2014.
#'
#'
#' @format A \code{curve_set} object with water temperatures in 365 days of the 36 years.
#' The component \code{curve_set[['r']]} is a vector of days (from 1 to 365),
#' whereas \code{curve_set[['obs']]} contains the water temperatures such that
#' each column gives year temperatures in a year.
#'
#' @usage data("rimov")
#' @references
#' Mrkvička, T., Myllymäki, M., Jilek, M. and Hahn, U. (2020) A one-way ANOVA test for functional data with graphical interpretation. Kybernetika 56 (3), 432-458. doi: 10.14736/kyb-2020-3-0432
#' @keywords datasets
#' @name rimov
#' @docType data
#' @seealso graph.fanova
#' @examples
#' data("rimov")
#' groups <- factor(c(rep(1, times=12), rep(2, times=12), rep(3, times=12)))
#' for(i in 1:3)
#'   assign(paste0("p", i), plot(subset(rimov, groups==i)) +
#'     ggplot2::labs(title=paste("Group ", i, sep=""), y="Temperature"))
#' p3
#' if(require("patchwork", quietly=TRUE))
#'   p1 + p2 + p3
#' # See example analysis in ?graph.fanova
NULL
