##-------------------------------------------
## ui.R

shinyUI(
    fluidPage(
        includeCSS("palatino.css"),
        title = "labestData",
        htmlOutput("HEADER"),

        fluidRow(

            column(
                width = 3,
                uiOutput("OBRAUI")
            ),
            column(
                width = 2,
                uiOutput("KEYSUI")
            ),
            column(
                width = 3, ## offset = 2,
                uiOutput("DATASETUI")
            ),
            column(
                width = 2,
                HTML(paste('<label class="control-label">Download:',
                           '</label><br>', sep = "")),
                downloadButton(outputId = "DOWNLOADDATA",
                               label = "",
                               class = "btn btn-primary")
            ),
            column(
                width = 2, ## offset = 2,
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
