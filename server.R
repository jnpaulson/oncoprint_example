shinyUI(pageWithSidebar(
  headerPanel('oncoprint example'),
  sidebarPanel(
    textInput("samples", label = h3("Samples to include:"), value = "1:75"),
    p(),
    tags$small("R notation to select column (sample) indices, i.e. c(1:10,60:75)")
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
