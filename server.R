server <- function(input,output,session){
  rv <- reactiveValues(data = fifa_df)
  
  observe({
    session$sendCustomMessage(
      type = "ui-tweak",
      message = list(os = "md", skin = input$color)
    )
  })
  
  output$odds_ui <- renderUI({
    
    rv$odds_ui <- tagList()
    rv$bet_size <- input$bet_size
    
    isolate({
    for(bet in 1:length(unique(fifa_df$award))){
      temp_dt <- datatable(rv$data %>% dplyr::filter(award == unique(fifa_df$award)[bet]) %>%
                             dplyr::mutate(payout = (input$bet_size *(odds/100))),
                           options = list(scrollX = TRUE))
      temp_tag <- shinydashboard::box(title = unique(fifa_df$award)[bet],status = "primary",solidHeader = TRUE,background = "light-blue",
                                      temp_dt)
      rv$odds_ui <- tagList(rv$odds_ui,temp_tag) 
    }
    })
    
    tagList(rv$odds_ui)
  })
  
  observeEvent(input$bet_size,{
    
    rv$odds_ui <- tagList()
    rv$bet_size <- input$bet_size
    
      for(bet in 1:length(unique(fifa_df$award))){
        temp_dt <- datatable(rv$data %>% dplyr::filter(award == unique(fifa_df$award)[bet]) %>%
                               dplyr::mutate(payout = (input$bet_size *(odds/100))),
                             options = list(scrollX = TRUE))
        temp_tag <- shinydashboard::box(title = unique(fifa_df$award)[bet],status = "primary",solidHeader = TRUE,background = "light-blue",
                                        temp_dt)
        rv$odds_ui <- tagList(rv$odds_ui,temp_tag) 
      }
  })
}
