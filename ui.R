library(shiny)

shinyUI(fluidPage(
  titlePanel("MyApp"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Enter your height and weight to compute your Body Mass Index."),
      br(),
      
      helpText("Enter your height in feet and inches"),
      numericInput("feet", 
                   label = h3("height in feet"), 
                   value = 5),
      numericInput("inches", 
                   label = h3("height in inches"), 
                   value = 0),
      
      helpText("Enter your weight in pounds (lbs)"),
      sliderInput("lbs", 
                  label = "Weight in pounds",
                  min = 75, max = 400, value = 100),
      br(),
      br(),
      submitButton("Compute BMI", ""),
      br(),
      br()
      
    ),
    mainPanel(
      textOutput("text1"),
      br(),
      textOutput("text2"),
      br(),
      textOutput("BMI"),
      br(),
      tableOutput("BMI_table")
      )
  )
))
