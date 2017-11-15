library(testthat)

context("Standing correlations")

expect_equal(Pob.Standing(768, 0.855, 40.7, 220), 2502.882, tolerance = 1e-6)

expect_equal(Bo.Standing(768, 0.855, 40.7, 220), 1.630176, tolerance = 1e-6)


test_that("Ahmed example 4.8 works", {
    theFilename <- "tarekahmed_ex48.csv"
    theFileLocation <- system.file("extdata", theFilename, package = "rNodal.PVT")
    ex <- read.csv(file = theFileLocation, header = TRUE)
    # print(ex)
    # extract one row to test if variables are properly extracted
    ex1 <- (ex[1,])
    # print(ex1)
    # calculate
    tempF <-  ex1$TempF
    pob <- ex1$Pb
    oil.api <- ex1$API
    gas.sg <- ex1$gas.sg
    # cat(tempF, oil.api, gas.sg, pob, "\n")
    rs.st <- Rs.Standing(pres.bubble = pob, gas.sg = gas.sg, oil.api = oil.api, fluid.tempF = tempF)
    # cat(ex1$Rs, rs.st, "\n")
    ex$Rs.calc <- Rs.Standing(pres.bubble = ex$Pb, gas.sg = ex$gas.sg, oil.api = ex$API, fluid.tempF = ex$TempF)
    ex$are <- abs((ex$Rs - ex$Rs.calc)) / ex$Rs * 100   # are: absolute relative error
    AAE <-  sum(ex$are) / nrow(ex)
    # print(ex)
    # print(AAE)  # absolute average error (AAE)
    expect_equal(AAE, 10.50423, tolerance = 1e-6)

})
