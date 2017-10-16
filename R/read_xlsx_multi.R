
#' Title read_xlsx_multi
#'
#' @param folder
#' @importFrom readxl excel_sheets
#' @import assertthat
#' @return an xlsx reader
#' @export
#'
#' @examples
read_xlsx_multi <- function(folder=getwd()) {
  assertthat::assert_that(is.character(folder))
  all_sheets<-readxl::excel_sheets(folder)
  assertthat::assert_that(!is.null(all_sheets))
  result<-lapply(all_sheets,function(sheet){readxl::read_excel(folder,sheet=sheet)})

  return(result)
}
