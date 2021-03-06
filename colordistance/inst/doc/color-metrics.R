## ---- echo=F------------------------------------------------------------------
knitr::opts_chunk$set(
  fig.align="center"
)

## ---- fig.width=6, fig.height=5, results="hide"-------------------------------

images <- dir(system.file("extdata", "Heliconius/", package="colordistance"), full.names=TRUE)

# First get the cluster sets
clusters <- colordistance::getHistList(images, lower=rep(0.8, 3), upper=rep(1, 3))

# Distance metrics -- note that each one produces a different set of clusters, but some are more similar than others

# Using earth mover's distance
EMD_CDM <- colordistance::getColorDistanceMatrix(clusters, method="emd")

# Using chi-squared distance
chisq_CDM <- colordistance::getColorDistanceMatrix(clusters, method="chisq")

# Using color distance
color_CDM <- colordistance::getColorDistanceMatrix(clusters, method="color.dist")

# Using weighted pairs with uneven weights and ordering off
weighted_CDM <- colordistance::getColorDistanceMatrix(clusters, method="weighted.pairs", ordering=FALSE, size.weight=0.7, color.weight=0.3)


