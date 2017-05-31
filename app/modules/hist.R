# An exmaple module file with working functions
# Create your own with empty template module.example.R
library(shiny)

# UI portion of my_hist module
# @param id can be set when the module is loaded in ui.R
my_histUI <- function(id) {
  # set the id as name-space for ui elements
  ns <- NS(id)
  # there has to be a wrapper for successive rows to output correctly
  tags$section(class=ns("content"),
    div(class="row align-items-center",
      div(class='col-sm-12 col-md-10', 
        sliderInput(inputId = ns("num"), label = "Choose a number", value = 25, min = 1, max = 100, width = "100%")
      ),
      div(class='col-sm-12 col-md-2',
        actionButton(ns("submit"), "Go!", icon = icon("chevron-right"), class = "btn-primary")
      )
    ),
    div(class="row",
      div(class="col-sm-12", 
        plotOutput(ns("plot"))
      )
    )
  )
}

# server portion of my_hist module
my_hist <- function(input, output, session) {
  # get the session name-space set by ui id
  ns = session$ns
  # reactive expression listens for actionButton and isolates input
  data <- eventReactive(input$submit, {
    rnorm(input$num)
  })
  # once isolated, use data() to render plot
  # render expressions put most strain on server
  output$plot <- renderPlot({
    hist(data(), main = "Histogram of rnorm(input$num)")
  })
}