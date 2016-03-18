library(shiny)
library(xtable)
library(labestData, lib.loc = "/home/walmes/R/")

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
            numericInput(inputId ="PORTA",
                         label = "Porta:",
                         value = options()$html.port),
            uiOutput("LINK"),
            hr(),
            downloadButton(outputId = "DOWNLOADDATA",
                           label = "Download tsv")
        ),
        mainPanel(
            htmlOutput("TABLE")
        ) # mainPanel
    ) # sidebarLayout
)) # fluidPage shinyUI
