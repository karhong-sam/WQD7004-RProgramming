#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("First Shiny Application"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           # plotOutput("distPlot")
          p("To create a paragraph of text."),
          img(src = "shiny.png"),
          br(),
          actionButton("action", "Click Me"),
          textOutput("out1"),
          selectInput("var", "Gender",
                      choices = c("Male", "Female", selected = "Male")),
          textOutput("selected_var"),
          sliderInput("range", "Range of interest :",
                      min = 0, max = 100, value = c(0, 100)),
          textOutput("selected_range")
          
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
    
    output$selected_var <- renderText({ 
      paste("You have selected", input$var)
    })
    
    output$selected_range <- renderText({ 
      paste("You have selected", input$range[1], "to", input$range[2])
    })
    
    observeEvent(input$action, {
      output$out1 <- renderText("Welcome to Shiny")
    })
    
    
}

# Run the application 
shinyApp(ui = ui, server = server)
