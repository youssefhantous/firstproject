#' Title save_as_csv
#'
#' @param x is the data frame
#' @param filedirectory is the name of the CSV we want to create
#'
#' @return an CSV file
#' @export
#'
#' @examples
save_as_csv<-function(x,filedirectory) {
  assertthat::assert_that(is.character(filedirectory))
  assertthat::assert_that(is.data.frame(x))
  write.csv(x,filedirectory)
}
