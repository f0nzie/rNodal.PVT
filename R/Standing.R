
#' @title Bubble Point Pressure by Standing
#' @description Pb Standing Correlation
#' @param oil.Rsi solution oil gas ratio
#' @param gas.sg gas specific gravity
#' @param oil.API oil specific gravity in API degrees
#' @param fluid.tempF fluid temperature in Farenheit
#' @rdname Standing
#' @export
Pob.Standing <- function(oil.Rsi, gas.sg, oil.API, fluid.tempF) {
    18.2 * ((oil.Rsi/gas.sg)^0.83 * 10^(0.00091 * fluid.tempF) / 10^(0.0125 * oil.API) - 1.4)
}


#' @title Formation Volume Factor by Standing
#' @description Bo Standing Correlation
#' @inheritParams Pob.Standing
#' @export
Bo.Standing <- function(oil.Rsi, gas.sg, oil.API, fluid.tempF) {
    oil.sg <- 141.5 / (oil.API + 131.5)
    0.972 + 1.47 *10^-4 * (oil.Rsi^(gas.sg/oil.sg) + 1.25 * fluid.tempF)^1.175
}
