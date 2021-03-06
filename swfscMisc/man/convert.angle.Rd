% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert.angle.R
\name{convert.angle}
\alias{convert.angle}
\title{Angle Conversion}
\usage{
convert.angle(x, from = c("degrees", "radians"), to = c("radians", "degrees"))
}
\arguments{
\item{x}{numeric. The angle to be converted.}

\item{from, to}{character. Units to convert from and to. Can be 
"radians" or "degrees" or any partial match (case-sensitive).}
}
\description{
Converts angles between radians and degrees.
}
\examples{
convert.angle(45, "deg", "rad")
convert.angle(4.5, "r", "d")

}
\author{
Eric Archer \email{eric.archer@noaa.gov}
}
