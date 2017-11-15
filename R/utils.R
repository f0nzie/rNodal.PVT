

get_pb_coefficients <- function(correlation) {
    coef_table <- read_coefficients("pb")
    one_corr <- coef_table[coef_table$id == correlation,]
    one_corr[which(!is.na(one_corr))]
}


read_coefficients <- function(table) {
    if (table == "pb") theFilename <- "pb-correlations_coefficients.csv"
    if (table == "co") theFilename <- "co-correlations_coefficients.csv"
    if (table == "bo") theFilename <- "bo-correlations_coefficients.csv"
    theFileLocation <- system.file("extdata", theFilename, package = "rNodal.PVT")
    coef_tbl <- readr::read_csv(file = theFileLocation, col_types = bo_col_types)
    coef_tbl
}


show_correlations <- function(table) {
    read_coefficients(table)[, c("id", "description")]
}

bo_col_types <- list(
    col_character(),
    col_character(),
    col_double(),
    col_double(),
    col_double(),
    col_double(),
    col_double(),
    col_double(),
    col_double(),
    col_double(),
    col_double(),
    col_double(),
    col_double()
)


