#' Take a peek at an object and then return it.
#'
#' @param .data An R object that you want to see. Usually a matrix-like object,
#'   such as a dataframe, matrix, or list.
#' @param view Whether to invoke a spreadsheet-style data viewer on `.data`.
#' @param print Whether to print `.data`.
#'
#' @return `.data`, after having viewed or printed it.
#' @export
peek <- function(.data, view = TRUE, print = FALSE) {
  if (view) {
    RStudioView <- as.environment("package:utils")$View
    RStudioView(.data)
  }
  if (print) {
    print(.data)
  }
  return(.data)
}
