% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_plots.R
\name{spatial_plots}
\alias{spatial_plots}
\title{Plots for statistical power estimates of the SRR function}
\usage{
spatial_plots(
  input,
  p_thresh = 0.8,
  n_sim = 1,
  cols = c("#000000", "#cccccc", "#ffffff", "#ff0000", "#0000ff"),
  chars = c(1, 1),
  sizes = c(1, 1),
  plot_pts = TRUE,
  plot_text = FALSE,
  ...
)
}
\arguments{
\item{input}{An object of class "ppplist" from the \code{\link{spatial_data}} function or an object of class "list" from the \code{\link{spatial_power}} or \code{\link{jitter_power}} functions.}

\item{p_thresh}{A numeric value between 0 and 1 (default = 0.8) for the power threshold.}

\item{n_sim}{Integer. The number of simulated iterations to plot. The default is one (1).}

\item{cols}{Character string of length five (5) specifying the colors for plotting: 1) sufficiently powered, midpoint, insufficiently powered, case locations, control locations. The default colors in hex are \code{c("#0000ff", "#00ff00", "#ff0000", "#a020f0", "#ffa500")} or \code{c("grey0", "grey80", "grey100", "red", "blue")}.}

\item{chars}{Vector of integers or character string of length two (2) for symbols of case and control locations. Default is \code{c(1,1)}.}

\item{sizes}{Vector of integers of length two (2) for the size of the symbols for case and control locations. Default is \code{c(1,1)}.}

\item{plot_pts}{Logical. If TRUE (the default), the points from the first simulation iteration will be added to second plot. Not if FALSE.}

\item{plot_text}{Logical. If TRUE, the local statistical power will be printed at each grid cell. Not if FALSE (the default).}

\item{...}{Arguments passed to \code{\link[spatstat.geom]{plot.ppp}} and \code{\link[fields]{image.plot}} for additional graphical features.}
}
\value{
This function produces up to three plots: 1) example input, 2) local power, and 3) local power above a threshold. If the input is from the \code{\link{spatial_data}} function, this function will only display the first plot.
}
\description{
Create multiple plots of output from \code{\link{spatial_data}}, \code{\link{spatial_power}} and \code{\link{jitter_power}} functions.
}
\examples{
\donttest{
spatial_plots(input = sim_power)
}

}
