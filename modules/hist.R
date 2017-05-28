library(shiny)

my_histUI <- function(id) {
  ns <- NS(id)
  div(class = ns("content"),
    fluidRow( class = "align-items-center",
      column(10, sliderInput(
        inputId = ns("num"),
        label = "Choose a number",
        value = 25, min = 1, max = 100,
        width = "100%"
      )),
      column(2, actionButton( 
        ns("submit"), 
        "Go!",
        icon = icon(
          "chevron-right"
        ),
        class = "btn-primary"
      ))
    ),
    fluidRow(
      class = ns("output"),
      column(12, plotOutput( ns("plot") ))
    )
  )
  
  
}

my_hist <- function(input, output, session) {
  ns = session$ns
  data <- eventReactive(input$submit, {
    rnorm(input$num)
  })
  output$plot <- renderPlot({
    hist(data())
  })
}