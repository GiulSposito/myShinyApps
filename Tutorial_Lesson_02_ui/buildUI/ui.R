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
  
  titlePanel("title panel"),
  
  sidebarLayout(
    sidebarPanel("sidebar panel"),
    mainPanel(
      "main panel",
      h1("Header"),
      h5("subheader 5"),
      a(id="thelink",href="http://www.rstudio.com","Hyperlink"),
      br(),
      img(src = "image-in-app.png")
    )
  )
  
))
