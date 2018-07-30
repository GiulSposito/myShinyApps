# Server

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  print("shinyServer()")
  
  output$selected_var <- renderText({
    print("Reactive (selected_var)")
    paste0( "Selected var to show \"", input$varSel, "\".")
  })
  
  output$selected_range <- renderText({
    print("Reactive (range)")
    paste0( "Selected range to show (",paste(input$range, collapse = ","),").")
  })
  
  
})
