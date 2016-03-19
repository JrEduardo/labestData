##-------------------------------------------
## server.R

shinyServer(
    function(input, output, session) {

        output$HEADER <- renderPrint({
            vers <- as.character(packageVersion("labestData"))
            tagList(
                h1(paste("labestData: Conjuntos de dados para",
                         "Ensino de Estatística"), class = "title"),
                h2(paste("PET-Estatística UFPR - Versão", vers),
                   class = "title"),
                hr()
            )
        })

        output$DOC <- renderPrint({
            if (input$DATASET != "") {
                tmp <- tempfile()
                static_help("labestData", input$DATASET, tmp)
                out <- readLines(tmp)
                headfoot <- grep("body", out)
                cat(out[(headfoot[1] + 1):(headfoot[2] - 2)],
                    sep = "\n")
            } else return("Processando")
        })

        output$TABLE <- renderPrint({
            if (input$DATASET != "") {
                da <- eval(parse(text = input$DATASET))
                a <- switch(class(da),
                            data.frame = da,
                            numeric = {
                                da <- data.frame(da)
                                names(da) <- input$DATASET
                                da
                            },
                            integer = {
                                da <- data.frame(da)
                                names(da) <- input$DATASET
                                da
                            })
                dig <- sapply(a, howmanydigits)
                print(xtable(a, digits = c(0, dig)), type = "html")
            } else return("Processando")
        })

        output$DOWNLOADDATA <- downloadHandler(
            filename = function() {
                sprintf("%s.txt", input$DATASET)
            },
            content = function(file) {
                write.table(eval(parse(text = input$DATASET)),
                            file = file,
                            sep = "\t",
                            row.names = FALSE,
                            quote = FALSE)
            })

        output$TABLE_DOC <- renderUI({
            if(input$DATASET == "") {
                return(includeMarkdown("ABOUT.md"))
            } else {
                tabsetPanel(
                    tabPanel("Documentação", uiOutput("DOC")),
                    tabPanel("Tabela de dados",
                             tableOutput("TABLE"))
                )
            }
        })
    }
)
