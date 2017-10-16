#' Title my_xlsx_reader
#'
#' @param folder
#'
#' @return an XLSX file
#' @export
#'
#' @examples


my_xlsx_reader <- function(folder=getwd()) {
  assertthat::assert_that(!is.null(folder))
  assertthat::assert_that(is.character(folder))
  l <- list.files(path=folder, pattern = ".*xlsx$", full.names=TRUE)
  result <- lapply(l,read_excel)

  return(result)
}

