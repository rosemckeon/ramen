library(shiny)
# modules keep things tidy and reduce server load
source("modules/module.example.R")
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
          div(class="row",
            div(class="col-xs-12 col-sm-10",
              h1(class="app-title", "Practical:")
            ),
            if(file.exists('www/docs/practical.pdf')) {
              div(class="col-xs-12 col-sm-2",
                p(tags$a(class="btn btn-info", target="_blank", href="docs/practical.pdf", "Handout"))
              )
            }
          )
        ),
        tabsetPanel(type = "tabs",
          tabPanel("Tab", practical_UI("whatever")),
          tabPanel("Tab", practical_UI("whatever2"))
        )
    ),
    tags$script(src="dist/scripts/main.js"), # scripts better loaded outside of head
    title = "BIOU9PC Practical - Population and Community Ecology",
    theme = "dist/styles/main.css" # custom bootstrap styles
  )
)  