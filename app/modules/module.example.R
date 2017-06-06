library(shiny)
# UI portion
# @param id can be set when the module is loaded in ui.R
practical_UI <- function(id, h2=NULL, intro=NULL) {
  if(is.null(id)){return("no id set in ui.R")}
  # set the id as name-space for ui elements
  ns <- NS(id)
  # set defaults
  # if(id=="whatever") {
  #   action <- ns("submitWhatever")
  # }
  # put your ui elements for inputs and output inside the content section
  tags$section(class=ns("content"),
    if(!is.null(h2)) {
      div(class="row justify-content-center",
        div(class="col-xs-12 col-sm-10 col-lg-12",
          h2(class=ns("title"), h2)
        )
      )
    },
    if(!is.null(intro)) {
      div(class="row",
        div(class="col-xs-12 col-sm-10 col-lg-12",
          div(class="alert alert-info", role="alert", intro)
        )
      ) 
    },
    div(class="row",
      div(class="col-xs-12 col-sm-10 col-lg-6"
        # Inputs here
        # actionButton(action, "Go!", icon=icon("chevron-right"), class="btn-primary")
      ),
      div(class="col-xs-12 col-sm-10 col-lg-6"
        # Outputs here
        # htmlOutput(ns("prediction")),
        # plotOutput(ns("plot")),
        # htmlOutput(ns("data"))
      )
    )
  )
}
# colour
brand.primary = '#006635'
# span things
spanit <-  function(item) {
  #return(paste("<span>", item, "</span>", sep=""))
  item <- tags$span(class="badge badge-default", item)
  return(item)
}
# Function relevant to tab action, add input args to function
whatever <- function(output) {
  # Calculations here
  # Output here
  # output$plot <- renderPlot({plot <- plot()})
  # output$data <- renderUI({data <- lapply(N, spanit)})
}

# server portion 
practical <- function(input, output, session) {
  # get the session name-space set by ui id
  ns = session$ns
  # reactive expressions listen for actionButtons and isolate input used to for associated function
  # Pass input$whatever as args to function along with output
  observeEvent(input$submitWhatever, whatever(output))
}