#' @name labestDataView
#' @title Shiny App para Visualização e Download dos Datasets
#' @author Walmes Zeviani e Eduardo Ribeiro Jr.
#' @description Essa função abre uma interface \pkg{shiny} em seu
#'     navegador padrão para visualizar as tabelas de dados, consultar
#'     sua respectiva documentação e salvá-las, em txt, se preciso.
#' @section Warning: Para funcionar, é necessário ter o pacote shiny
#'     instalado. Sua visualização web depende dos recursos CSS3,
#'     Bootstrap, HTML5 e JavaScript5, portanto use navegadores com
#'     suporte para tais recursos (e.g Mozilla Firefox, Chromium Web
#'     Browser).
#' @return Abre uma aplicação web com shiny em seu navegador padrão.
#' @usage labestDataView()
#' @export
#' @examples
#' \dontrun{
#'
#' labestDataView()
#'
#' }
labestDataView <- function() {
    if (!requireNamespace(package = "shiny", quietly = TRUE)) {
        stop(paste("Pacote `shiny` n\u00e3o encontrado.",
                   "Instale-o, por favor."),
             call. = FALSE)
    }
    appDir <- system.file("ShinyApps",
                          "labestDataView",
                          package = "labestData")
    if (appDir == "") {
        stop(paste(
            "N\u00e3o foi poss\u00edvel encontrar diret\u00f3rio",
            "com a aplica\u00e7\u00e3o Shiny.",
            "Tente reinstalar o `labestData`."),
            call. = FALSE)
    }
    shiny::runApp(appDir, display.mode = "normal")
}
