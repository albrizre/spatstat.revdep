% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/plot.ijroi.R
\name{plot.ijroi}
\alias{plot.ijroi}
\title{Plot ijroi object}
\usage{
\method{plot}{ijroi}(x, add = FALSE, xlab = "", ylab = "", main = "",
  asp = 1, ...)
}
\arguments{
\item{x}{The \code{ijroi} object.}

\item{add}{Whether to add to an existing plot.}

\item{xlab}{a title for the x axis: \code{\link{title}}.}

\item{ylab}{a title for the y axis: \code{\link{title}}.}

\item{main}{an overall title for the plot: \code{\link{title}}.}

\item{asp}{numeric defining the aspect ratio y/x: see \code{\link{plot.window}}. Defaults to 1.}

\item{...}{Additional parameters.}
}
\description{
Plots ImageJ ROI objects using the \link[=graphics]{'base' graphics} package.
}
\details{
ImageJ ROI objects created with following tools are plotted using following graphics commands:
\itemize{
\item{Rectangle tool ("rect")} \code{\link{rect}}. Plotted based on coordinates.
\item{Oval selections ("oval")} \code{\link{polygon}}. Plotted based on equation.
\item{Freehand selections ("freehand")} \code{\link{lines}}. Plotted based on coordinates.
\item{Elliptical selections ("freehand", "ELLIPSE")} \code{\link{lines}}. Plotted based on equation.
\item{Point Tool and Multi-Point Tool ("point")} \code{\link{points}}. Plotted based on coordinates.
\item{Straight Line ("line")} \code{\link{lines}}. Plotted based on coordinates.
\item{Arrow tool ("line", "ARROW")} \code{\link{arrows}}. Plotted based on coordinates. Stroke width passed to \code{\link[=par]{lwd}} argument.
\item{Segmented Line ("polyline")} \code{\link{lines}}. Plotted based on coordinates.
\item{Freehand Line ("freeline")} \code{\link{lines}}. Plotted based on coordinates.
}
All graphics allow the additional parameters from appropriate functions. Aspect ratio (\code{asp}) is 1 by default leading to correct representation of ImageJ objects. If correct representation is not important, set \code{asp = NA} to use the R base-graphics default setting.
}
\examples{
# type 0 'polygon' ROIs are plotted using lines()
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "polygon.roi")
x <- read.ijroi(file)
plot(x, col = "red")

# type 1 'rect' ROIs are plotted using rect()
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "rect.roi")
x <- read.ijroi(file)
plot(x, border = "red")

# type 2 'oval' ROIs are plotted using polygon()
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "oval.roi")
x <- read.ijroi(file)
plot(x, border = "red")

# type 3 'line' ROIs (among others listed in 'details') are plotted using lines()
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "line.roi")
x <- read.ijroi(file)
plot(x, col = "red")

# type 3 arrows are a subtype of 'line'. Plotted using arrows(). The stroke width is
# carried over. To change width, use lwd argument
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "arrow.roi")
x <- read.ijroi(file)
plot(x, col = "red")

# type 4 'freeline' ROIs are plotted using lines()
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "freehand_line.roi")
x <- read.ijroi(file)
plot(x, col = "red")

# type 5 'polyline' ROIs are plotted using lines()
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "segmented_line.roi")
x <- read.ijroi(file)
plot(x, col = "red")

# type 7 'freehand' selection ROIs are plotted using lines()
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "freehand_selection.roi")
x <- read.ijroi(file)
plot(x, col = "red")

# type 7 Objects created using 'Elliptical selections' tool are also saved as
# 'freehand', but with subtype 'ELLIPSE'. The coordinates for this type are flawed
# and plotting is done using equation for an ellipse
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "elliptical.roi")
x <- read.ijroi(file)
plot(x, border = "red")
lines(x$coords[,1], x$coords[,2]) ## plotted based on coordinates.

# type 10 'point' ROIs are plotted using points()
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "multi_point.roi")
x <- read.ijroi(file)
plot(x, col = "red")

# If following is shown as a (round) circle, asp = 1
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "circle.roi")
x <- read.ijroi(file)
plot(x, border = "red")

# text is stored as type 'rect' with subtype 'TEXT'. Currently
# only the outlining rectangle is returned
file <- file.path(system.file(package = "RImageJROI"), "extdata", "ijroi", "text.roi")
x <- read.ijroi(file)
plot(x, border = "red")
}
\author{
David Sterratt, Mikko Vihtakari
}
\seealso{
\code{\link{read.ijroi}}, \code{\link{read.ijzip}}, \code{\link{plot.ijzip}}
}

