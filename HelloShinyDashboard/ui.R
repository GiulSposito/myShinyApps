#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shinydashboard)

# Define UI for application that draws a histogram
shinyUI(
  dashboardPage(
    dashboardHeader(
      title="Header"
    ),
    dashboardSidebar(
      h3("Sidebar")
    ),
    dashboardBody(
      h1("Body")
    )
  )
)
