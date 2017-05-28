library(shiny)

# server code run once per user session
shinyServer(function(input, output, session) {
  callModule(my_hist, "my-hist-1")
})