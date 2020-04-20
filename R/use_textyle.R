#' Use Textyle
#' 
#' Load textyle dependencies
#' 
#' @examples 
#' 
#' use_textyle()
#' 
#' @export
use_textyle <- function() {
  list(
    htmltools::htmlDependency(
      name = "textyle",
      version = "2.0",
      package = "textyle",
      src = c(
        file = "textyle-2.0",
        url = ""
      ),
      script = "textyle.js"
    ),
    htmltools::htmlDependency(
      name = "jquery.easing",
      version = "1.4.1",
      package = "textyle",
      src = c(
        file = "jquery.easing-1.4.1",
        url = ""
      ),
      script = "jquery.easing.min.js"
    ),
    htmltools::htmlDependency(
      name = "textyle-css",
      version = "2.0",
      package = "textyle",
      src = c(
        file = "textyle-2.0",
        url = ""
      ),
      stylesheet = "textyle-style.css"
    )
  )
}