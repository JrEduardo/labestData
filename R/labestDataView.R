#' @name labestDataView
#' @title Shiny App para Visualiza\enc{çã}{ca}o e Download dos Datasets
#' @author Walmes Zeviani e Eduardo Ribeiro Jr.
#' @description Essa função abre uma interface \pkg{shiny} em seu
#'     navegador padrão para visualizar as tabelas de dados, consultar
#'     sua respectiva documentação e salvá-las, em txt, se preciso. A
#'     interfaze exibe uma tabela reativa a filtros para as obras e
#'     keywords que classificam as obras.
#' @section Warning: Para funcionar, é necessário ter o pacote shiny
#'     instalado. Sua visualização web depende dos recursos CSS3,
#'     Bootstrap, HTML5 e JavaScript5, portanto use navegadores com
#'     suporte para tais recursos (e.g Mozilla Firefox, Chromium Web
#'     Browser).
#' @return Abre uma aplicação web com shiny em seu navegador padrão.
#' @usage labestDataView()
#' @export
#' @examples
#'
#' # Objetos do pacote labesData.
#' ls("package:labestData")
#'
#' # Dataframe com os pares keywords e datasets.
#' str(keywords)
#'
#' # Cria uma coluna para a obra.
#' keywords$obra <-
#'     gsub(pattern = "^ *([A-Z]{1}[a-z]*)[A-Z]{1}[a-z]{1}.*$",
#'          replacement = "\\1",
#'          x = keywords$name)
#'
#' # Mostra um pedaço do dataframe.
#' head(keywords)
#'
#' library(lattice)
#'
#' # Gráfico de Pareto das keywords.
#' barchart(sort(xtabs(~keyword, data = keywords)))
#'
#' ob <- gsub(pattern = "^ *([A-Z]{1}[a-z]*)[A-Z]{1}[a-z]{1}.*$",
#'            replacement = "\\1",
#'            x = unique(keywords$name))
#'
#' # Gráfico de pareto das obras.
#' barchart(sort(xtabs(~ob)))
#'
#' \dontrun{
#'
#' # Abre a interface no navegador.
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
