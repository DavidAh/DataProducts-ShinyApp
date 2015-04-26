# server.R

library(quantmod)

BMIcalc  <- function(feet, inches, w) (w /(feet * 12 + inches)^2 ) * 703
heightCalc <- function(feet, inches) feet * 12 + inches
bmi_vec <- c("<18.5", "18.5 - 24.9", "25.0 - 29.9", "> 30.0")
w_vec <- c("Underweight", "Normal", "Overweight", "Obese")
bmi_table <- cbind(bmi_vec, w_vec)
colnames(bmi_table) <- c("BMI", "Weight Status")

shinyServer(function(input, output) {
  
  output$text1 <- renderText({ 
     paste("Your height in inches", heightCalc(input$feet, input$inches))
  })
  
  output$text2 <- renderText({ 
    paste("Your weight in pounds (lbs)", input$lbs)
  })

 output$BMI <- renderText({ 
    paste("Your Body Mass Index (BMI)  is", BMIcalc(input$feet, input$inches, input$lbs))
  })
 
 output$BMI_table <- renderTable({bmi_table})
  
 })
