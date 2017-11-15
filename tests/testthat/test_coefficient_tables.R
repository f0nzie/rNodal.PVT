library(testthat)

context("Coefficient tables: Pb, Bo, Co")


theFilename <- "pb-correlations_coefficients.csv"
theFileLocation <- system.file("extdata", theFilename, package = "rNodal.PVT")
pb_tbl <- readr::read_csv(file = theFileLocation)
print(pb_tbl)
