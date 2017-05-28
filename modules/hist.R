# An exmaple module file with working functions
# Create your own with empty template module.example.R
library(shiny)

# UI portion of my_hist module
# @param id can be set when the module is loaded in ui.R
my_histUI <- function(id) {
  # set the id as name-space for ui elements
  ns <- NS(id)
  div(class = ns("content"),
    fluidRow(class = "align-items-center", # sets vertical align
      column(10, 
        # input
        sliderInput(
          inputId = ns("num"),
          label = "Choose a number",
          value = 25, min = 1, max = 100,
          width = "100%"
        )
      ),
      # action to isolate input
      column(2,
        actionButton( 
          ns("submit"), 
          "Go!",
          icon = icon("chevron-right"),
          class = "btn-primary"
        )
      )
    ),
    # element prepared for output
    fluidRow(class = ns("output"),
      column(12, plotOutput( ns("plot") ))
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