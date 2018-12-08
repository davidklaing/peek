#' View an object and then return it.
#'
#' @param .data Any R object.
#'
#' @return \code{.data}, after having viewed it.
#' @examples
#' library(dplyr)
#' mtcars %>%
#'   filter(carb != 8) %>%
#'   select(carb, mpg, cyl, hp, drat) %>%
#'   group_by(carb) %>%
#'   summarise(min_mpg = min(mpg)) %>%
#'   pview() %>% # View the current state, then pass it to the next command.
#'   mutate(min_mpg_100 = min_mpg*100)
#'
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
#' @examples
#' library(dplyr)
#' mtcars %>%
#'   filter(carb != 8) %>%
#'   select(carb, mpg, cyl, hp, drat) %>%
#'   group_by(carb) %>%
#'   summarise(min_mpg = min(mpg)) %>%
#'   pprint() %>% # Print the current state, then pass it to the next command.
#'   mutate(min_mpg_100 = min_mpg*100)
#'
#' @export
pprint <- function(.data) {
  print(.data)
  return(.data)
}
