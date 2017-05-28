library(shiny)
# modules keep things tidy as they evolve
source("modules/hist.R")

shinyUI(
  bootstrapPage(
    # supress dependencies which we combine together via manifest
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