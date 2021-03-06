library(shiny)
library(shinythemes)

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = shinytheme("superhero"),
                  
    tags$head(
        tags$style(HTML("
            @import url('//fonts.googleapis.com/css?family=Gugi');
              
            h1 {
                font-family: 'Gugi', cursive;
                font-style: normal;
              }

            #text_input {background-color:#ABB6C2;
                        font-weight: bold;}

            .shiny-input-container:not(.shiny-input-container-inline) {
                width: auto;
            }
        "))
    ),            

    fluidRow(
        column(6,
            # Application title
            headerPanel("SBO Text Predictor"),
            # first row - large text input
            helpText("Just start typing to see the predictions at the bottom. Click on a prediction to use it in your text."),
            fluidRow(
                textAreaInput("text_input", "", value="", width = "100%", height = "300px")),
        # second row - three best predictions
            fluidRow(
                div(style="display:inline-block;width:32%;text-align: center;",uiOutput("prediction2_button")),
                div(style="display:inline-block;width:32%;text-align: center;",uiOutput("prediction1_button")),
                div(style="display:inline-block;width:32%;text-align: center;",uiOutput("prediction3_button"))
                   ),
        style = "float: none; margin: 0 auto")
    )
    
))
