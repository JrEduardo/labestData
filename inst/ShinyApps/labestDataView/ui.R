##-------------------------------------------
## ui.R

library(shiny)
library(labestData, lib.loc = "/usr/lib/R/site-library")

L <- ls("package:labestData")
i <- sapply(L,
            function(x) {
                class(eval(parse(text = x)))
            })
L <- L[i %in% c("data.frame", "numeric", "integer")]

shinyUI(
    fluidPage(
        includeCSS("palatino.css"),
        title = "labestData",
        fluidRow(
            column(
                width = 4,
                selectInput(inputId = "VIEW",
                            label = "Exibir:",
                            choices = c(
                                "Sobre o projeto" = "about",
                                "Tabela de dados" = "table",
                                "Documentação" = "doc")
                            )
            ),

            conditionalPanel(
                "input.VIEW != 'about'",
                column(
                    width = 4,
                    selectInput(inputId = "DATASET",
                                label = "Escolha o dataset:",
                                choices = L,
                                selected = sample(1:length(L)))
                ),
                column(
                    width = 4,
                    HTML('<label class="control-label">Baixe os dados:</label><br>'),
                    downloadButton(outputId = "DOWNLOADDATA",
                                   label = "Download tsv")
                )
            )
        ),

        fluidRow(
            uiOutput("TABLE_DOC"),
            style = "overflow-y:scroll; max-height: 600px"
        )
    )
)


