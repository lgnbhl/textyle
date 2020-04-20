#' Animate an text element
#'
#' @param element An element.
#' @param color string. Color of the callback
#' @param transition integrer. Transition in seconds
#' @param duration integrer. Duration
#' @param delay integrer. Delay
#' @param easing string. An effect from \href{http://gsgd.co.uk/sandbox/jquery/easing/}{jquery-easing}.
#' @param class string. Class of the effect
#' @param ... Additional element 
#' 
#' @importFrom jsonlite toJSON
#' @importFrom htmltools tags tagList tagAppendAttributes
#' 
#' @examples 
#' library(htmltools)
#' 
#' textyle(h1("TITLE"))
#' 
#' @export
textyle <- function(element, color = "coral", easing = "easeInCubic", transition = 1, duration = 400, delay = 100, class = "ex2", ...){
  
  if(missing(element)) stop("must pass a text element.", call. = FALSE)
  
  callback <- paste0("function(){$(this).css({color : '", color ,"', transition : '", transition ,"s'});}")
  class(callback) <- "json"
  
  options <- list(
    duration = duration,
    delay = delay,
    easing = easing,
    callback = callback
  )
  
  options <- jsonlite::toJSON(options, json_verbatim = TRUE, auto_unbox = TRUE)
  
  htmltools::tagList(
    html_dependencies_textyle(),
    htmltools::tags$script(
      sprintf(
        paste0("$(document).ready(function(){
            $('.", class,"').textyle(%s);
        });"),
        options
      )
    ),
    htmltools::tagAppendAttributes(element, class = class, ...)
  )
}

html_dependencies_textyle <- function() {
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
