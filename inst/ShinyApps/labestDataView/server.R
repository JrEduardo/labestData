##-------------------------------------------
## server.R

shinyServer(
    function(input, output, session) {

        output$HEADER <- renderPrint({
            vers <- as.character(packageVersion("labestData"))
            tagList(
                h1(paste("labestData: Biblioteca de dados para",
                         "aprendizado de Estatística"),
                   class = "title"),
                h2(paste("PET-Estatística UFPR - Versão", vers),
                   class = "title"),
                hr()
            )
        })

        ## Cria listbox para seleção das obras
        output$OBRAUI <- renderUI({
            CHOICES <- c("Escolha uma obra" = "", "Todas",
                         sort(keywords$obra))
            selectInput(inputId = "OBRA",
                        label = "Escolha a(s) obra(s)",
                        choices = CHOICES, multiple = TRUE)
        })

        ## Cria listbox para seleção das keywords
        output$KEYSUI <- renderUI({
            CHOICES <- c("Todas" = "", levels(keywords$keyword))
            selectInput(inputId = "KEYS", label = "Keyword(s)",
                        choices = CHOICES, multiple = TRUE)
        })

        ## Separa o conjunto de dados com base nos filtros
        DATACHOICE <- reactive({
            OBRA <- input$OBRA
            KEYS <- input$KEYS
            OBRAL <- is.null(OBRA) || OBRA == "Todas"
            if (OBRAL & is.null(KEYS)) {
                DATA <- keywords
            }
            if (OBRAL & !is.null(KEYS)) {
                DATA <- subset(keywords, keyword %in% KEYS)
            }
            if (!OBRAL & is.null(KEYS)) {
                DATA <- subset(keywords, obra %in% OBRA)
            }
            if (!OBRAL & !is.null(KEYS)) {
                DATA <- subset(keywords,
                               obra %in% OBRA & keyword %in% KEYS)
            }
            return(DATA)
        })

        ## Cria listbox para seleção dos datasets
        output$DATASETUI <- renderUI({
            na <- sort(DATACHOICE()$name)
            if (length(na) != 0) {
                CHOICES <- c("Escolha um dataset" = "", na)
            } else {
                CHOICES <- c("Não há datasets" = "")
            }
            selectInput(inputId = "DATASET",
                        label = "Dados disponíveis",
                        choices = CHOICES)
        })

        output$DATATABLE <- renderDataTable({
            da <- DATACHOICE()
            names(da) <- c("Dataset", "Keyword", "Obra")
            da[order(da$Dataset), c(3, 2, 1)]
        }, options = list(lengthMenu = c(5, 10, 25, 50),
                          pageLength = 5))

        output$DOC <- renderPrint({
            if (input$DATASET != "") {
                tmp <- tempfile()
                static_help("labestData", input$DATASET, tmp)
                out <- readLines(tmp)
                headfoot <- grep("body", out)
                cat(out[(headfoot[1] + 1):(headfoot[2] - 2)],
                    sep = "\n")
            } else {
                cat("Selecione o conjunto de dados.")
            }
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
            } else {
                cat("Selecione o conjunto de dados")
            }
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
            test <- input$DATASET == "" & is.null(input$OBRA) &
                is.null(input$KEYS)
            if (test) {
                tagList(
                    hr(),
                    includeMarkdown("ABOUT.md")## ,
                    ## dataTableOutput("DATATABLE")
                )
            } else {
                tabsetPanel(
                    tabPanel("Lista de Datasets",
                             dataTableOutput("DATATABLE")),
                    tabPanel("Documentação", uiOutput("DOC")),
                    tabPanel("Tabela de dados",
                             tableOutput("TABLE"))
                )
            }
        })

        observe({
            if(input$EXIT > 0) {
                stopApp()
            }
        })
    }
)
