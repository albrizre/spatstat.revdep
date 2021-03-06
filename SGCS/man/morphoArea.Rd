% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/morpho-Area.R
\name{morphoArea}
\alias{morphoArea}
\title{Morphologicals: Relative area fraction of diluted pattern}
\usage{
morphoArea(x, r, ...)
}
\arguments{
\item{x}{Point pattern}

\item{r}{Vector of distances to estimate the function}

\item{...}{Ignored.}
}
\value{
The default plotted curve, "rAF", is relative to lambda * pi * r^2. 
The component "AF" holds the area fraction.
}
\description{
Dilute pattern with b(o,r) and compute area.
}
