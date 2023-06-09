#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(maps)
library(mapproj)
source("helpers.R")
counties <- readRDS("data/counties.rds")


# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Map"),
    sidebarLayout(
      sidebarPanel(
        helpText("Create demographic maps with 
        information from the 2010 US Census."),
        selectInput("var", 
                    label = "Choose a variable to display",
                    choices = c("Percent White", "Percent Black",
                                "Percent Hispanic", "Percent Asian"),
                    selected = "Percent White"),
        
        sliderInput("range", 
                    label = "Range of interest:",
                    min = 0, max = 100, value = c(0, 100))
      ),
      mainPanel(plotOutput("map"))
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  output$map <- renderPlot({
    args <- switch(input$var,
                   "Percent White" = list(counties$white, "darkgreen", "% White"),
                   "Percent Black" = list(counties$black, "black", "% Black"),
                   "Percent Hispanic" = list(counties$hispanic, "darkorange", "% Hispanic"),
                   "Percent Asian" = list(counties$asian, "darkviolet", "% Asian"))
    
    args$min <- input$range[1]
    args$max <- input$range[2]
    
    do.call(percent_map, args)
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
