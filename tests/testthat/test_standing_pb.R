library(testthat)

context("Standing correlations")

expect_equal(Pob.Standing(768, 0.855, 40.7, 220), 2502.882, tolerance = 1e-6)

expect_equal(Bo.Standing(768, 0.855, 40.7, 220), 1.630176, tolerance = 1e-6)
