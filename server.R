### Data Science Capstone : Course Project
### server.R file for the Shiny app
### Github repo : https://github.com/magnoliam/Capstone


source("prediction.R")

library(shiny)
library(quantmod)
library(tm)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  dataInput_twitter <- reactive({
    hope <- as.character(twitter_predict(as.character(input$text))[2])
  })
  
  dataInput_blogs <- reactive({
    hope <- as.character(blogs_predict(as.character(input$text))[2])
  })
  
  dataInput_news <- reactive({
    hope <- as.character(news_predict(as.character(input$text))[2])
  })
  
  # show output prediction for twitter
  output$twitter_next <- renderText({
    dataInput_twitter()
  })
  
  # show output prediction for blogs  
  output$blogs_next <- renderText({
    dataInput_blogs()
  })
  
  # show output prediction for news
  output$news_next <- renderText({
    dataInput_news()
  })
  
})









