# server.R

library(quantmod)

BMIcalc  <- function(feet, inches, w) (w /(feet * 12 + inches)^2 ) * 703
heightCalc <- function(feet, inches) feet * 12 + inches

shinyServer(function(input, output) {
  
  output$text1 <- renderText({ 
     paste("Your height in inches", heightCalc(input$feet, input$inches))
  })
  
  output$text2 <- renderText({ 
    paste("Your weight in pounds (lbs)", input$lbs)
  })
  
 output$BMI <- renderText({ 
    paste("Your Body Mass Index (BMI)", BMIcalc(input$feet, input$inches, input$lbs))
  })
  
 })
