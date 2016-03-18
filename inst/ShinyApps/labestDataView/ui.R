##-------------------------------------------
## ui.R

library(shiny)
library(labestData, lib.loc = installed.packages()["labestData", 2])

L <- ls("package:labestData")
i <- sapply(L,
            function(x) {
                class(eval(parse(text = x)))
            })
L <- L[i %in% c("data.frame", "numeric", "integer")]

shinyUI(fluidPage(
    includeCSS("palatino.css"),
    # titlePanel("labestData"),
    h1("labestData"),
    h3("Conjuntos de Dados para Ensino de Estatística"),
    tags$em("pet.estatistica.ufpr@gmail.com"),
    hr(),

        sidebarLayout(
            sidebarPanel(
                selectInput(inputId = "DATASET",
                            label = "Escolha o dataset:",
                            choices = L,
                            selected = sample(1:length(L))),
                hr(),
                downloadButton(outputId = "DOWNLOADDATA",
                               label = "Download tsv")
            ),
            mainPanel(
                tabsetPanel(
                    tabPanel(
                        title = "Tabela de dados",
                        htmlOutput("TABLE")),
                    tabPanel(
                        title = "Documentação",
                        htmlOutput("DOC")
                    )
                )
            )
        )
    )
)
