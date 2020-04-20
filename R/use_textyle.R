#' Load Textyle dependencies
#' 
#' Load textyle dependencies, i.e textylejs, textylecss and jquery.easing
#' 
#' @examples 
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
      name = "textylecss",
      version = "2.0",
      package = "textyle",
      src = c(
        file = "textyle-2.0",
        url = ""
      ),
      stylesheet = "textyle-style.css"
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
    )
  )
}