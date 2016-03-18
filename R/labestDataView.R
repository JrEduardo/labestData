#' @name labestDataView
#' @title Shiny App para Visualização e Download dos Datasets
#' @author Walmes Zeviani e Eduardo Ribeiro Jr.
#' @description Essa função abre uma interface \pkg{shiny} para
#'     visualizar as tabelas de dados e consultar a documentação. Além
#'     disso, tem um botão para salvar o dado em txt.
#' @section Warning: Para funcionar, é necessário ter o pacote shiny
#'     instalado. Para abrir a documentação dos datasets é necessário
#'     informar o número da porta que o navegador usa
#'     (\code{http://127.0.0.1:XXXXX}) para exibir a documentação em
#'     html. Para ter esse número, peça a documentação de alguma
#'     função antes de chamar a aplicação. Veja na seção exemplos como
#'     fazer.
#' @return Abre uma aplicação web com shiny.
#' @usage labestDataView()
#' @export
#' @examples
#' \dontrun{
#'
#' options(help.ports = 1111)
#' help(BanzattoQd1.2.3, help_type = "html")
#' help(package = "labestData", help_type = "html")
#'
#' labestDataView()
#'
#' }
labestDataView <- function() {
    if (!requireNamespace(package = "shiny", quietly = TRUE)) {
        stop("Pacote `shiny` não encontrado. Instale-o, por favor.",
             call. = FALSE)
    }
    appDir <- system.file("ShinyApps",
                          "labestDataView",
                          package = "labestData")
    if (appDir == "") {
        stop(paste(
            "Não foi possível encontrar diretório",
            "com a aplicação Shiny.",
            "Tente reinstalar o `labestData`."),
            call. = FALSE)
    }
        shiny::runApp(appDir, display.mode = "normal")
}
