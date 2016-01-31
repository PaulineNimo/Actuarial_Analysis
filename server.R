library(shiny)
shinyServer(function(input,output){
  sliderValues<-reactive({
    getSymbols(input$PoD,input$RR)
  })
  dataInput<-reactive({
    getSymbols(input$CE)
  })
  
  
  
  output$ECL<-renderText({
    paste("The Expected Credit Loss is ",input$CE*input$PoD*(1-(input$RR/100)))
  })
  
})