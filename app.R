#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(here)


ui <- dashboardPage(
  dashboardHeader(title = "ZOLA"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Introduction", tabName = "readme"),
      menuItem("Correct Distance", tabName = "caldist"),
      menuItem("Aggregate Data", tabName = "aggregate"),
      menuItem("Model", tabName = "model")
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(tabName = "readme",
              fluidPage(
                fluidRow(
                  column(12,
                         includeMarkdown(here("README.md"))
                  )
                )
              )
      ),
      tabItem(tabName = "caldist",
              h2("2 App Content")
      ),
      tabItem(tabName = "aggregate",
              h2("3 App Content")
      ),
      tabItem(tabName = "model",
              h2("4 App Content")
      )
    )
  )
)

server <- function(input,output,server){}

shinyApp(ui,server)
