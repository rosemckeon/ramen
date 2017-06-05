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
      # required for bootstrap to respond on mobile
      tags$meta(name="viewport", content="width=device-width, initial-scale=1")
    ),
    div(class="container",
        tags$header(class="app-header",
          # Adding rows manually gives better responsive layout control
          div(class="row",
            div(class="col-xs-12 col-sm-10 col-sm-offset-1",
              h1(class="app-title", "Ramen")
            )
          )
        ),
        tabsetPanel(type = "tabs",
          tabPanel("Tab", my_histUI("my-hist-1")),
          tabPanel("Tab", my_histUI("my-hist-2"))
        )
    ),
    tags$script(src="dist/scripts/main.js"), # scripts better loaded outside of head
    title = "Ramen tastes so fine",
    theme = "dist/styles/main.css" # custom bootstrap styles
  )
)  