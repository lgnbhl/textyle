## Making a hex sticker for BFS
library(hexSticker)
library(magick)
library(magrittr)
library(showtext)

font_add_google("Heebo")
## Automatically use showtext to render text
showtext_auto()

# ref: "https://upload.wikimedia.org/wikipedia/commons/d/df/Chevron_up_font_awesome.svg"
hexSticker::sticker("man/figures/empty_white.png",
                    package = "TEXTYLE",
                    p_color = "coral", 
                    p_family = "Heebo",
                    p_size = 9,
                    p_y = 1,
                    h_size = 1.5,
                    h_color = "coral",
                    h_fill = "gray98", 
                    filename="man/figures/logo_large.png")

# MOD with Gimp: removing red borders.

textyle_logo <- magick::image_read("man/figures/logo_large.png")
magick::image_scale(textyle_logo, "130") %>%
  magick::image_write(path = "man/figures/logo.png", format = "png")

