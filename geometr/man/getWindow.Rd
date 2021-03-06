% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getWindow.R
\name{getWindow}
\alias{getWindow}
\alias{getWindow,ANY-method}
\alias{getWindow,geom-method}
\alias{getWindow,Spatial-method}
\alias{getWindow,sf-method}
\alias{getWindow,ppp-method}
\alias{getWindow,Raster-method}
\alias{getWindow,matrix-method}
\title{Get the reference window of a spatial object.}
\usage{
\S4method{getWindow}{ANY}(x)

\S4method{getWindow}{geom}(x)

\S4method{getWindow}{Spatial}(x)

\S4method{getWindow}{sf}(x)

\S4method{getWindow}{ppp}(x)

\S4method{getWindow}{Raster}(x)

\S4method{getWindow}{matrix}(x)
}
\arguments{
\item{x}{the object from which to derive the reference window.}
}
\value{
A table of the corners of the reference window of \code{x}.
}
\description{
Get the reference window of a spatial object.
}
\examples{

getWindow(x = gtGeoms$line)

getWindow(x = gtSP$SpatialLines)

getWindow(x = gtSF$multilinestring)

getWindow(x = gtPPP)

getWindow(x = gtRasters$categorical)

getWindow(x = matrix(0, 3, 5))
}
\seealso{
Other getters: 
\code{\link{getCRS}()},
\code{\link{getExtent}()},
\code{\link{getFeatures}()},
\code{\link{getGroups}()},
\code{\link{getHistory}()},
\code{\link{getLayer}()},
\code{\link{getName}()},
\code{\link{getPoints}()},
\code{\link{getRes}()},
\code{\link{getType}()}
}
\concept{getters}
