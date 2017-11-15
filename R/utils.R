


#' @export
get_pb_coefficients <- function(correlation) {
    coef_table <- read_coefficients()
    coef_table <- coef_table[coef_table$type == "pb", ]
    one_corr <- coef_table[coef_table$id == correlation,]
    one_corr[which(!is.na(one_corr))]
}

#' @importFrom readr col_character col_double
#' @export
read_coefficients <- function() {
    # define in advance the column types for the table
    tbl_col_types <- list(
        col_character(),
        col_character(),
        col_character(),
        col_double(), # a1
        col_double(),
        col_double(),
        col_double(),
        col_double(),
        col_double(),
        col_double(),
        col_double(), # a8
        col_double(), # b1
        col_double(),
        col_double(),
        col_double(),
        col_double(),
        col_double()  # b6
    )
    # read table holding coefficients for all correlations
    theFilename <- "all_correlations_coefficients.csv"
    theFileLocation <- system.file("extdata", theFilename, package = "rNodal.PVT")
    coef_tbl <- readr::read_csv(file = theFileLocation, col_types = tbl_col_types)
    coef_tbl
}

#
# read_coefficients <- function(table) {
#     if (table == "pb") theFilename <- "pb-correlations_coefficients.csv"
#     if (table == "co") theFilename <- "co-correlations_coefficients.csv"
#     if (table == "bo") theFilename <- "bo-correlations_coefficients.csv"
#     theFileLocation <- system.file("extdata", theFilename, package = "rNodal.PVT")
#     coef_tbl <- readr::read_csv(file = theFileLocation, col_types = bo_col_types)
#     coef_tbl
# }


#' @export
show_correlations <- function(table_type) {

    coef_table <- read_coefficients()
    if (!missing(table_type)) coef_table <- coef_table[coef_table$type == table_type, ]
    coef_table[, c("id", "type", "description")]
}








