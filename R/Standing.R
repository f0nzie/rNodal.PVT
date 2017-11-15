
#' @title Bubble Point Pressure by Standing
#' @description Pb Standing Correlation
#' @export
Pob.Standing <- function(oil.Rsi, gas.sg, oil.API, fluid.tempF) {
    18.2 * ((oil.Rsi/gas.sg)^0.83 * 10^(0.00091 * fluid.tempF) / 10^(0.0125 * oil.API) - 1.4)
}


Bo.Standing <- function(oil.Rsi, gas.sg, oil.API, fluid.tempF) {
    oil.sg <- 141.5 / (oil.API + 131.5)
    0.972 + 1.47 *10^-4 * (oil.Rsi^(gas.sg/oil.sg) + 1.25 * fluid.tempF)^1.175
}
