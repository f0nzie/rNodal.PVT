


#' @export
get_pb_coefficients <- function(correlation) {
    # read coefficients table but select one type only = "pb"
    coef_table <- read_coefficients()
    coef_table <- coef_table[coef_table$type == "pb", ]
    one_corr <- coef_table[coef_table$id == correlation,]
    one_corr[which(!is.na(one_corr))]  # return not NAs
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


#' @export
show_correlations <- function(table_type) {
    # read table with coefficients
    coef_table <- read_coefficients()
    # if no argument provided then will print all otherwise selected: pb, co, bo
    if (!missing(table_type)) coef_table <- coef_table[coef_table$type == table_type, ]
    # show only three columns for now
    coef_table[, c("id", "type", "description")]
}








