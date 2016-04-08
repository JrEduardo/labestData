##-------------------------------------------
## ui.R

shinyUI(
    fluidPage(
        includeCSS("palatino.css"),
        title = "labestData",
        htmlOutput("HEADER"),

        fluidRow(
            column(
                width = 4, offset = 2,
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
            )
        ),

        fluidRow(
            uiOutput("TABLE_DOC")
        )
    )
)



