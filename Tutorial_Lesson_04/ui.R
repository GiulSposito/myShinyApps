# UI

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("censusVis"),
  
  # Sidebar Layout
  sidebarLayout(
    
    # side bar
    sidebarPanel(
      helpText("Create demographic maps with information from the 2010 US Census."),
      selectInput(inputId  = "varSel",
                  label    = "Choose a variable to display:",
                  choices  =  c("Percent White", 
                               "Percent Black",
                               "Percent Hispanic", 
                               "Percent Asian"),
                  selected ="Percent White"),
      sliderInput(input = "range",
                  label = "Range of interest",
                  min = 0, max = 100,
                  value = c(0,100))
    ),
    
    # main
    mainPanel(
      textOutput("selected_var"),
      textOutput("selected_range")
    )
    
  )
))
