library(shiny)
# modules keep things tidy and reduce server load
source("modules/hist.R")

# UI code called once per R session (least often)
shinyUI(
  bootstrapPage(
    # These are reloaded with updated Bootstrap scripts as one minified script (main.js)
    suppressDependencies(
      "bootstrap",
      "font-awesome",
      "html5shiv",
      "respond"
    ),
    tags$head(includeScript("www/scripts/main.js")),
    div(class="container",
      h1(class="app-title", "Ramen"),
      # modules UIs get called here
      my_histUI("my-hist-1")
    ),
    title = "Ramen tastes so fine",
    theme = "styles/main.css" # doesn't need prepending with www/
  )
)  