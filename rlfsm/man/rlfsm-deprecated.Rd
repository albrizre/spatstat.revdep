% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CLT.R
\name{CLT}
\alias{CLT}
\title{The function explores numerical properties of statistical estimators operating on random processes. Deprecated.}
\usage{
CLT(Nmc, s, m, M, alpha, H, sigma, fr, Inference, ...)
}
\arguments{
\item{Nmc}{Number of Monte Carlo repetitions}

\item{s}{sequence of path lengths}

\item{m}{discretization. A number of points between two nearby motion points}

\item{M}{truncation parameter. A number of points at which the integral representing the definition of lfsm is calculated. So, after M points back we consider the rest of the integral to be 0.}

\item{alpha}{self-similarity parameter of alpha stable random motion.}

\item{H}{Hurst parameter}

\item{sigma}{Scale parameter of lfsm}

\item{fr}{frequency. Either "H" or "L"}

\item{Inference}{statistical function to apply to sample paths}

\item{...}{parameters to pass to Inference}
}
\value{
It returns a list containing the following components:
    \item{CLT_dataset}{a data frame, standardized values of the estimates depending on path length s}
    \item{BSdM}{a data frame, means, biases and standard deviations depending on s}
    \item{Inference}{a closure used to obtain estimates}
    \item{alpha, H, sigma}{the parameters for which CLT performs path generation}
    \item{freq}{frequency, either 'L'  for low- or 'H' for high frequency}
}
\description{
The function is left for backward compatibility. The newer version of it is \code{\link{MCestimLFSM}}. The function is useful, for instance, when one needs to compute standard deviation of \eqn{\widehat \alpha_{high}}
estimator given a fixed set of parameters.
}
\details{
CLT  performs Monte-Carlo experiments to compute parameters according to procedure Inference.
More specifically, for each element of s it generates Nmc lfsm sample paths with length equal to s[i], performs the statistical
inference on each, obtaining the estimates, and then returns their different statistics. It is vital that the estimator
returns a list of named parameters (one or several of 'sigma', 'alpha' and 'H'). CLT uses the names to lookup the true
parameter value and compute its bias.

For sample path generation CLT uses a light-weight version of path, path_fast. In order to be applied,
function Inference must accept argument 'path' as a sample path.
}
