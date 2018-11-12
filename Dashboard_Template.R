library(tidyverse)
library(plotly)
library(shiny)
library(shinydashboard)


ui <- shinydashboard::dashboardPage(
  # title ####
  shinydashboard::dashboardHeader(
    title = "Something"
  ),
  # side menu ####
  shinydashboard::dashboardSidebar(
    shinydashboard::sidebarMenu(
      # Static Charts ####
      shinydashboard::menuItem(
        "Static Charts",
        tabName = "Static_Charts",
        icon = icon("stats", lib = "glyphicon")
      ),
      # Dynamic Charts ####
      shinydashboard::menuItem(
        "Dynamic Charts",
        tabName = "Dynamic_Charts",
         icon = icon("th-large", lib = "glyphicon")
      ),
      # Action Button ####
      shiny::actionButton(
        inputId = "click",
        label = "submit"
      )
    )
  ),
  
  # boddy ####
  shinydashboard::dashboardBody(
    shinydashboard::tabItems(
      shinydashboard::tabItem(
        tabName = "Static_Charts",
        box(plotlyOutput(outputId = "plot1")),
        box(plotlyOutput(outputId = "plot2")),
        box(plotlyOutput(outputId = "plot3")),
        box(plotlyOutput(outputId = "plot4"))
      ),
      shinydashboard::tabItem(
        tabName = "Dynamic_Charts",
        box(plotlyOutput(outputId = "plot1")),
        box(plotlyOutput(outputId = "plot2")),
        box(plotlyOutput(outputId = "plot3")),
        box(plotlyOutput(outputId = "plot4"))
      )
    )
  )
)

# server ####

server <- function(input, output, ...){
  
}

# output ####
shiny::shinyApp(ui = ui, server = server)
