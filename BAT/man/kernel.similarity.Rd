% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BAT.R
\name{kernel.similarity}
\alias{kernel.similarity}
\title{Pairwise similarity among n-dimensional hypervolumes.}
\usage{
kernel.similarity(
  comm,
  trait,
  method = "gaussian",
  abund = TRUE,
  return.hv = FALSE,
  ...
)
}
\arguments{
\item{comm}{A 'HypervolumeList' object (one hypervolume for each species or community) constructed with the hypervolume R package. Alternatively, a sites x species matrix, with incidence or abundance data about the species in the community.}

\item{trait}{A matrix of traits for each species in comm (a species for each row and traits as columns). Must be provided only if 'comm' is a sites x species matrix.}

\item{method}{Method for constructing the 'HypervolumeList' object. One of "box" (box kernel density estimation), "gaussian" (Gaussian kernel density estimation), or "svm" (one-class support vector machine). See respective functions of the hypervolume package for details. Must be provided only if 'comm' is a sites x species matrix. Default is 'gaussian'.}

\item{abund}{A boolean (T/F) indicating whether abundance data should be used (TRUE) or converted to incidence (FALSE) before analysis. If not specified, default is TRUE. Ignored if a 'HypervolumeList' is provided as input data.}

\item{return.hv}{Boolean indicating whether the hypervolume objects used to calculate pairwise similarity should be returned (default is FALSE).}

\item{...}{further arguments to be passed for other methods in hypervolume package.}
}
\value{
Five pairwise distance matrices, one per each of the distance and similarity indices (in order: distance between centroids, minimum distance, Jaccard overlap, Soerensen-Dice overlap, and Intersection among hypervolumes).
}
\description{
Calculate pairwise distance metrics (centroid and minimum distance) and similarity indices (Intersection, Jaccard, Soerensen-Dice) among n-dimensional hypervolumes.
}
\details{
Computes a pairwise comparison between kernel density hypervolumes of multiple species or communities, based on the distance and similarity metrics implemented in hypervolume R package (Blonder et al., 2014, 2018). 
See Mammola (2019) for a description of the different indices, and a comparison between their performance. Note that computation time largely depends on the number of 'Hypervolume' objects in the list, and scales almost exponentially with the number of hypervolume axes.
If abundance data of species in the community are provided as input data (abund = TRUE), each species trait is weighted by replicating it by the abundance in the estimation of the hypervolume.
}
\examples{
comm <- rbind(c(0,3,2,1), c(1,5,6,2), c(0,0,2,1))
trait <- cbind(c(2.2,4.4,6.1,8.3),c(0.5,1,0.5,0.4),c(0.7,1.2,0.5,0.4))

#example with community and trait matrices as input data:
#kernel.similarity(comm = comm, trait = trait)

#'#example with a list of hypervolume as input data:
#A = hypervolume_box(trait[,1:2], name = "Community_1")
#B = hypervolume_box(trait[,2:3], name = "Community_2")
#kernel.similarity(hypervolume_join(A,B))
}
\references{
Blonder, B., Lamanna, C., Violle, C. & Enquist, B.J. (2014) The n-dimensional hypervolume. Global Ecology and Biogeography, 23: 595-609.

Blonder, B., Morrow, C.B., Maitner, B., Harris, D.J., Lamanna, C., Violle, C., ... & Kerkhoff, A.J. (2018) New approaches for delineating n-dimensional hypervolumes. Methods in Ecology and Evolution, 9: 305-319.

Mammola, S. (2019) Assessing similarity of n-dimensional hypervolumes: Which metric to use?. Journal of Biogeography, 46: 2012-2023.

Mammola, S. & Cardoso, P. (2020) Functional diversity metrics using kernel density n-dimensional hypervolumes. Methods in Ecology and Evolution, 11: 986-995.
}
