# Server

library(shiny)
library(UScensus2010)
library(maps)
library(mapproj)
source("./helpers.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  print("shinyServer()")
  
  counties <- readRDS("./data/counties.rds")
  
  # output$selected_var <- renderText({
  #   print("Reactive (selected_var)")
  #   paste0( "Selected var to show \"", input$varSel, "\".")
  # })
  # 
  # output$selected_range <- renderText({
  #   print("Reactive (range)")
  #   paste0( "Selected range to show (",paste(input$range, collapse = ","),").")
  # })
  
  output$plot <- renderPlot({
    print("reactive(plot)")
    
    data <- switch( input$varSel,
                    "Percent White" = counties$white,
                    "Percent Black" = counties$black,
                    "Percent Hispanic" = counties$hispanic,
                    "Percent Asian" = counties$asian)
    
    color <- switch( input$varSel,
                     "Percent White" = "darkgreen",
                     "Percent Black" = "darkred",
                     "Percent Hispanic" = "darkblue",
                     "Percent Asian" = "orange")
    
    data <- data[data>=input$range[1] & data<=input$range[2]]
    
    percent_map(data,color,"% White")
    
  })
  
})
