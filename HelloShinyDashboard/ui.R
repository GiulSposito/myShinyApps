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
  
  # dashboardPage (estrutura do dash: header, sidebar e body)
  dashboardPage(
    
    # header
    dashboardHeader(title="Header"),
    
    # sidebar
    dashboardSidebar(
      
      #menu
      sidebarMenu(
        
        # menu aciona um "tabname"
        menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")), 
        menuItem("Widgets", tabName = "widgets", icon = icon("th"))
        
      )
      
    ),
    
    # body
    dashboardBody(
      
      # tabs
      tabItems(
        
        # tab1
        tabItem( 
          tabName = "dashboard",
          fluidRow(
            box(title = "plot",
                plotOutput("plot",height = 250, width=NA),
                sliderInput("slider","Buckets:",1,100,50))
          )       
        ),
        
        
        # tab2
        tabItem(
          tabName = "widgets",
          fluidRow(
            box(title = "plot",
                plotOutput("plot2",height = 250, width=NA),
                sliderInput("slider2","observations:",1,100,50))
          ))
        
      )

    )
  )
)
