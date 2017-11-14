

Pob.Standing <- function(oil.Rsi, gas.sg, oil.API, fluid.tempF) {
    18.2 * ((oil.Rsi/gas.sg)^0.83 * 10^(0.00091 * fluid.tempF) / 10^(0.0125 * oil.API) - 1.4)
}

