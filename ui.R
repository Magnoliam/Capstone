### Data Science Capstone : Course Project
### ui.R file for the Shiny app
### Github repo : https://github.com/magnoliam/capstone


library(shiny)
library(quantmod)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  headerPanel("Word predictive analytics application - A product by Csaba Sarkadi"),
  
  sidebarPanel(
    
    textInput("text", 
              label = h3("Enter text:"), 
              value = "I live in "),
    h6(em("Note: The application works as typeahead, so you don't need to push the OK button, prediction is made when you hit the 'space' key")),
    h6(em("Note: This application ignores numbers and special characters")),
    
    submitButton("OK")
    
  ),
  
  mainPanel(
    h4("Predicted next work from twitter dataset:"),
    verbatimTextOutput("twitter_next"),
    h4("Predicted next work from blogs dataset:"),
    verbatimTextOutput("blogs_next"),
    h4("Predicted next work from news dataset:"),
    verbatimTextOutput("news_next"),
    
    h6("All codes can be found in the 
       Capstone folder at:"),
    h6(a("https://github.com/magnoliam/Capstone")),
    
    tags$footer(tags$script(src="autosubmit.js"))
    
    )
  
))