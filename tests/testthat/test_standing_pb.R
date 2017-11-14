library(testthat)

expect_equal(Pob.Standing(768, 0.855, 40.7, 220), 2502.882, tolerance = 1e-6)
