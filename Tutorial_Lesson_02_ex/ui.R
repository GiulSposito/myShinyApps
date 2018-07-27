#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("My Shiny App UI"),
  
  # Sidebar/Main area layout
  sidebarLayout(
    
    # side bar
    sidebarPanel(
      h1("Instalation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code("install.packages(\"shiny\")"),
      br(),
      img(src="https://shiny.rstudio.com/images/logoRStudio.svg", heigh="25px", width="75px"),
      br(),
      p("Shiny is a product of ",a("RStudio",url="http://www.rstudio.com"))
    ),
    
    # main area
    mainPanel(
      h1("Introducing Shiny"),
      p("Shiny is a new package from RStudio thath makes it", em("incredibly easy"), 
        "to build interactive web applications with R"),
      p("For an introduction and live examples, visit the",
        a("Shiny homepage", href="http://shiny.rstudio.com"),"."),
      h2("Features"),
      tags$ul(
        tags$li("Build useful web applications with only a few lines of code - no JavaScript required."),
        tags$li("Shiny applications are automatically \'live\' in the same way that",
               strong("spreadsheets"),
               "are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser.")
      )
    )
  )
))
