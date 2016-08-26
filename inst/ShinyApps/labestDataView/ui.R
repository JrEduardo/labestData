##-------------------------------------------
## ui.R

shinyUI(
    fluidPage(
        includeCSS("palatino.css"),
        title = "labestData",
        htmlOutput("HEADER"),

        fluidRow(
            column(
                width = 4, ## offset = 2,
                selectInput(inputId = "DATASET",
                            label = "Dados disponíveis",
                            choices = c("Escolha um dataset" = "", L))
            ),
            column(
                width = 4,
                HTML(paste('<label class="control-label">Baixe ',
                           'os dados:</label><br>', sep = "")),
                downloadButton(outputId = "DOWNLOADDATA",
                               label = "Download tsv")
            ),
            column(
                width = 2, offset = 2,
                HTML(paste('<label class="control-label">Execução R:',
                           '</label><br>', sep = "")),
                actionButton(inputId = "EXIT",
                             label = "Stop",
                             class = "btn btn-danger")

            )
        ),

        fluidRow(
            uiOutput("TABLE_DOC")
        )
    )
)
