library(shiny)
library(shinyWidgets)
library(shinyalert)
library(rsconnect)

ui <- fluidPage(title = "Niveau C",
                useShinyalert(),
                setBackgroundImage(
                  src = "https://images.chesscomfiles.com/uploads/v1/images_users/tiny_mce/Anindo_The_PRO/phpl6wYbs.gif"),
                
                
                fluidRow(
                  
                  tags$head(
                    tags$style(HTML('#Button{background-color: #f03637; border-color: #222232; padding:75px}'))
                  ),
                  
                  column(12, div(style = "height: 200px")), 
                  column(12, align = "center",
                         
                         actionBttn(
                           "Button",
                           label = "Accident ou pas?",
                           icon = icon("paper-plane"),
                           style = "simple",
                           color = "danger",
                           size = "lg",
                           block = F,
                           no_outline = T
                         )
                  )))

server <- function(input, output, session) {
  observeEvent(input$Button, {
    
    shinyalert(
      size = "s", 
      closeOnEsc = T,
      closeOnClickOutside = T,
      html = FALSE,
      type = "",
      showConfirmButton = T,
      showCancelButton = F,
      imageUrl = sample(x = c("https://d29fhpw069ctt2.cloudfront.net/clipart/99826/preview/eco_green_car_icon_preview_4e6e.png", 
                              "https://webstockreview.net/images/triangular-clipart-road-safety-4.png"), 
                        size = 1, prob = c(0.2, 0.8), replace = T),
      imageWidth = 400,
      imageHeight = 200,
      timer = 0,
      confirmButtonText = "Continuer",
      confirmButtonCol = "#222232",
      animation = TRUE)})
}

shinyApp(ui, server)