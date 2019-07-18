require(shiny)
require(shinymaterial)
require(dplyr)
require(DT)

ui <- material_page(
    
    # side bar
    
    material_side_nav(
    
        fixed = FALSE,
        tags$h4("Method"),
        tags$p("This app classify reviews as positive or negative.",
               align = "justify"),
        tags$p("The algorithm used to classify was deep learning and the accuracy 
               is about 90%", 
               align = "justify"),
        tags$p("We worked with the IMDB dataset: a set of 30,000 highly 
               polarized reviews from the Internet Movie Database. 
               They’re split into 15,000 reviews for training and 15,000 
               reviews for testing, each set consisting of 50% negative and 50% 
               positive reviews.", 
               align = "justify"),
        tags$a("The font that work and more details is here", href = "https://blogs.rstudio.com/tensorflow/posts/2017-12-07-text-classification-with-keras/")
        
    ),
    
    title = tags$b("Text classification"),
    nav_bar_color = "amber",
    font_color = "black",
    material_text_box("text", "type a text"),
    material_slider("cutoff", "cut-off", 
                    min_value = 0, 
                    max_value = 1, 
                    step_size = .01,
                    initial_value = .5),
    material_card(dataTableOutput("value"))
    
)

server <- function(input, output) {
    
    # code
    
    word_index <- keras::dataset_imdb_word_index()
    reverse_word_index <- names(word_index)
    names(reverse_word_index) <- word_index
    
    coded_review <- function(review){
        
        words <-
            review %>% 
            tolower() %>% 
            strsplit(split = " ") %>% .[[1]] %>% 
            gsub("[!,:]", "", x = .)
        
        index <- names(reverse_word_index[reverse_word_index %in% words])
        
        return(list(as.numeric(index) + 3))
        
    }
    
    # vectorize
    
    vectorize_sequences <- function(codes) {
        results <- matrix(0, nrow = 1, ncol = 10000)
        results[, codes] <- 1
        return(results)
    }
    
    # render
    
    output$value <- renderDataTable({
        
        prob <- 
            coded_review(input$text) %>% 
            unlist() %>% 
            vectorize_sequences() %>% 
            list() %>% 
            tfdeploy::predict_savedmodel("savedmodel")
        
        
        round(prob$predictions[[1]][[1]], 3) %>%
            tibble(pr = .) %>%
            mutate(class = ifelse(pr > input$cutoff, "Positive", "Negative")) %>%
            datatable(rownames = FALSE,
                      colnames = c("Probability", "Classification"),
                      options = list(dom = "t")) %>% 
            formatStyle("class", color = styleEqual(c("Positive", "Negative"), c("blue", "red"))) %>% 
            formatStyle("pr", background = styleColorBar(0:1, "#ffbf80"))
        
    })
    
}

shinyApp(ui = ui, server = server)
