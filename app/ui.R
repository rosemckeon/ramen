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
    tags$head(
      tags$meta(name="viewport", content="width=device-width, initial-scale=1")
    ),
    div(class="container",
      h1(class="app-title", "Ramen"),
      # modules UIs get called here
      my_histUI("my-hist-1")
    ),
    tags$script(src="scripts/main.js"), # scripts better loaded outside of head
    title = "Ramen tastes so fine",
    theme = "styles/main.css" # doesn't need prepending with www/
  )
)  