\name{stintegral}
\alias{stintegral}

\title{
Evaluate integral of a spatiotemporal object
}
\description{
Integrates an object of class \code{\link{stim}} or \code{\link[sparr:spattemp.density]{stden}}.
}
\usage{
stintegral(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
The object of class \code{\link{stim}} or \code{\link[sparr:spattemp.density]{stden}} to be integrated.
}
}
\details{
The integral is evaluated arithmetically as the sum of the product of the value of each voxel and the voxel area, for those voxels inside the relevant space-time window (i.e. ignoring \code{NA}s).
}
\value{
A single numeric value giving the integral sought.
}

\author{
T.M. Davies
}

\examples{
\donttest{

# 'stim' objects
require("abind")
m1 <- c(0.3,0.3,2)
m2 <- c(0.5,0.8,8)
m3 <- c(0.7,0.6,7)
v1 <- diag(c(0.01^2,0.01^2,1))
v2 <- diag(c(0.005,0.005,0.5))
v3 <- diag(c(0.005,0.005,0.5))
stg1 <- stgmix(mean=cbind(m1,m2,m3),vcv=abind(v1,v2,v3,along=3),
               window=toywin,tlim=c(0,10),p0=0.1,tres=64)
stg2 <- stgmix(mean=cbind(m1,m2,m3),vcv=abind(v1,v2,v3,along=3),
               window=toywin,tlim=c(0,10),p0=0.1,tres=64,int=200)
stintegral(stg1)
stintegral(stg2)

# 'sten' objects
require("sparr")
data(burk)
hlam <- OS.spattemp(burk$cases)
bden <- spattemp.density(burk$cases,h=hlam[1],lambda=hlam[2],sres=64,verbose=FALSE)
stintegral(bden)
}
}
