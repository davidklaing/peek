#' View an object and then return it.
#'
#' @param .data Any R object.
#'
#' @return \code{.data}, after having viewed it.
#' @export
pview <- function(.data) {
  RStudioView <- as.environment("package:utils")$View
  RStudioView(.data)
  return(.data)
}

#' Print an object and then return it.
#'
#' @param .data Any R object.
#'
#' @return \code{.data}, after having printed it.
#' @export
pprint <- function(.data) {
  print(.data)
  return(.data)
}
