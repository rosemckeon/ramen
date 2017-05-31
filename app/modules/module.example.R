# copy to your_module.R and keep this template empty for future
library(shiny)

# UI portion of your_module
# @param id can be set when the module is loaded in ui.R
your_moduleUI <- function(id) {
  # set the id as name-space for ui elements
  ns <- NS(id)
  # put your ui elements for inputs and output inside the content section
  tags$section(class=ns("content"))
}

# server portion of your_module
your_module <- function(input, output, session) {
  # get the session name-space set by ui id
  ns = session$ns
  # put your server functions here
}