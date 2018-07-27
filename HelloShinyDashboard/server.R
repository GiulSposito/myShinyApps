#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  set.seed(42)
  histdata <- rnorm(500)
  
  print("Shiny Server")
  
  output$plot <- renderPlot({
    print("Server Plot")
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
  
  output$plot2 <- renderPlot({
    print("Server Plot 3")
    data <- histdata[seq_len(input$slider2)]
    hist(data)
  })
  
})
