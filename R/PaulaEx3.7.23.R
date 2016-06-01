#' @name PaulaEx3.7.23
#' @title Incidência de Dengue e Fatores Socio-econômicos
#' @description Os dados provém de um estudo para investigar a
#'     incidência de dengue numa determinanda cidade da costa mexicana.
#'
#'     Foram escolhidos aleatóriamente 196 indivíduos de dois setores da
#'     cidade e cada um respondeu às seguintes perguntas: idade, nível
#'     sócio-econômico, setor da cidade onde mora e se contraiu a doença
#'     recentemente.
#'
#'     Um dos objetivos do estudo é tentar prever ou explicar a
#'     probabilidade de um indivíduo contrair a doença dado as variáveis
#'     explicativas: \code{idade}, \code{nivel} e \code{setor}.
#' @format Um \code{data.frame} com 196 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade do entrevistado, em anos.}
#'
#' \item{\code{nivel}}{Fator ordinal de 3 níveis representando o nível
#'     sócio-econômico do entrevistado (alto, médio, baixo).}
#'
#' \item{\code{setor}}{Fator categórico de 2 níveis representando o
#'     setor da cidade que o entrevistado mora.}
#'
#' \item{\code{caso}}{Respoata binária que representa se o entrevistado
#'     contraiu (1) ou não contraiu (0) a doença recentemente.}
#'
#' }
#' @keywords binomial
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 3.7.23,
#'     pág. 279)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEx3.7.23)
#' str(PaulaEx3.7.23)
#'
#' xyplot(caso ~ idade | nivel, groups = setor, data = PaulaEx3.7.23,
#'        jitter.y = TRUE, amount = 0.02, as.table = TRUE,
#'        xlab = "Idade do entrevistado (anos)",
#'        ylab = "Indicadora de ter contraído dengue")
#'
NULL
