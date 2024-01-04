#' Add a path to the shiny app
#'
#' @param libname Name of the library
#' @param pkgname Name of the package
#'
#' @import reticulate
#'
#' @examples .onLoad(libname, "PredictionPython")
.onLoad <- function(libname, pkgname) {
  reticulate::use_virtualenv("Python/venv")
}
