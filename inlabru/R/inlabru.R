#' inlabru
#' 
#' Convenient model fitting using (iterated) INLA.
#' 
#' @details 
#'
#' \code{inlabru} facilitates Bayesian spatial modeling using integrated nested Laplace approximations. It
#' is heavily based on R-inla (\url{http://www.r-inla.org}) but adds additional modeling abilities.
#' Tutorials and more information can be found at \url{http://www.inlabru.org/}. 
#' 
#' The main function for inference using inlabru is \link{bru}. For point process inference \link{lgcp} is
#' a good starting point. The package comes with multiple real world data sets, namely \link{gorillas}, 
#' \link{mexdolphin}, \link{seals}. Plotting these data sets is straight forward using inlabru's extensions
#' to \code{ggplot2}, e.g. the \link{gg} function. For educational purposes some simulated data sets are available
#' as well, e.g. \link{Poisson1_1D}, \link{Poisson2_1D}, \link{Poisson2_1D} and \link{toygroups}. 
#' 
#' @aliases inlabru
#' @import sp
#' @import stats
#' @import methods
#' @importFrom Matrix diag
#' @author Fabian E. Bachl <\email{bachlfab@@gmail.com}>
#' @name inlabru
NULL
