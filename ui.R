library(shiny)
# modules keep things tidy as they evolve
source("modules/hist.R")

shinyUI(
  #includeScript("www/scripts/jquery.js"),
  bootstrapPage(
    # supress dependencies which we combine together via manifest
    suppressDependencies(
      "bootstrap",
      "font-awesome",
      "html5shiv",
      "respond"
    ),
    #includeScript("www/scripts/main.js"),
    tags$head(includeScript("www/scripts/main.js")),
    div(class="container",
      # modules UIs get called here
      my_histUI("my-hist-1")
    ),
    title = "Ramen tastes so fine",
    theme = "styles/main.css" # doesn't need prepending with www/
  )
)  