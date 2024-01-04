#' Add a path to the shiny app
#'
#' @param libname Name of the library
#' @param pkgname Name of the package
#'
#' @import reticulate
#'
.onLoad <- function(libname, pkgname) {
  tryCatch(
    {
      reticulate::use_virtualenv("Python/venv")
    },error=function(e) {
      reticulate::use_virtualenv("../Python/venv")
    }
  )

}
