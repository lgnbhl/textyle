
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/textyle)](https://CRAN.R-project.org/package=textyle)
[![R build
status](https://github.com/lgnbhl/textyle/workflows/R-CMD-check/badge.svg)](https://github.com/lgnbhl/textyle/actions)
<!-- badges: end -->

# textyle <img src="man/figures/logo.png" align="right" />

> Add beautiful text effects in your Shiny apps

The `textyle` package allows to reproduce the beautiful text effects
from [Textyle.js](https://github.com/mycreatesite/Textyle.js/) in a
Shiny app.

![](man/figures/textyle_example.gif)

## Usage

Install textyle from GitHub.

``` r
# install.packages("remotes")
remotes::install_github("lgnbhl/textyle")
```

### Shiny

To animate a text, simply call `textyle()` on any tag element from
`tags()`.

``` r
library(shiny)
library(textyle)
 
shinyApp(
  ui = fluidPage(
      align = "center",
      br(), br(), br(),
      textyle(tags$p("TEXTYLE", style = "font-size:7rem;font-weight:900;")),
      textOutput("text")
  ),
  server = function(input, output){
    output$text <- renderText({ print("- Simple Text Effect -") })
  }
)
```

### Customize it

You can change the color, the easing (see
[jquery-easing](http://gsgd.co.uk/sandbox/jquery/easing/) for all
options availables) or the speed of the text effect.

To reproduce the non colored effect, change the color to black and add
`class = "ex1"` in the function.

``` r
textyle(p("TEXTYLE"), color = "black", class = "ex1")
```

The reproduced text effects are taken from [this
codepen](https://codepen.io/mycreatesite/pen/vvpmgy).
