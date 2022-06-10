server <- function(input,output,session){
  rv <- reactiveValues(data = fifa_df)
  
  output$odds_ui <- renderUI({
    
    output$odds_plot <- renderPlotly({
      ggplot(rv$data, aes(x=player, y=odds, fill=player))+
        geom_bar(stat='identity')+
        facet_grid(~award, scales="free_y")
      
    })
    
    tagList(
      plotlyOutput("odds_plot")
    )
  })
}
