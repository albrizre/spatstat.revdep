library(checkmate)
library(testthat)
context("gs_rectangle")


test_that("output is valid geometry", {
  coords <- data.frame(x = c(40, 70, 70, 50),
                       y = c(40, 40, 60, 70),
                       fid = 1)

  output <- gs_rectangle(anchor = coords)
  expect_class(output, classes = "geom")
  expect_true(output@type == "polygon")
  expect_data_frame(output@point, any.missing = FALSE, nrows = 5, ncols = 3)
})

test_that("Error if arguments have wrong value", {
  coords <- data.frame(x = c(40, 70, 70, 50),
                       y = c(40, 40, 60, 70),
                       fid = 1)

  expect_error(gs_rectangle(window = coords), regexp = "please provide anchor values.")
  expect_error(gs_rectangle(anchor = "bla"))
  expect_error(gs_rectangle(anchor = coords, features = "bla"))
})
