if(!require(devtools)){
  install.packages("devtools")
  library(devtools)
}
if(!require(oncoprint)){
  install_github("dakl/oncoprint")
  library(oncoprint)
}

data(tcga_brca)

vert_x <- theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust=.5))


shinyServer(function(input, output) {

  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    tcga_brca[, eval(parse(text=input$samples))]
  })

  output$plot1 <- renderPlot({
    oncoprint(selectedData()) + coord_fixed() + vert_x
  })

})
