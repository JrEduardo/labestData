#' @name ZimmermannTb11.1
#' @title Espaçamento e Densidade de Plantio na Produção de Arroz
#' @description Dados de um experimento fatorial \eqn{2^3}, com
#'     confundimento total da interação dupla. O ensaio foi conduzido em
#'     dois blocos ao acaso com quatro repetições. Os fatores são:
#'     densidades de plantio de 50 e 90 sementes por metro, espaçamentos
#'     entre linhas de 35cm e 50cm e fator presença ou ausência de
#'     adubação nitrogenada em cobertura. A variável resposta é a
#'     produtividade de grãos, em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 32 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}{Fator de níveis numéricos. Identifica a repetição
#'    da observação.}
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco da
#'     repetição.}
#'
#' \item{\code{prod}}{Produção de arroz, em kg ha\eqn{^{-1}}.}
#'
#' \item{\code{densi}}{Densidade de plantio.}
#'
#' \item{\code{espac}}{Espaçamento entre as linhas.}
#'
#' \item{\code{adub}}{Presença ou não de adubação nitrogenada.}
#'
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 221)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.1)
#'
#' str(ZimmermannTb11.1)
#'
#' xyplot(prod ~ bloco, data = ZimmermannTb11.1,
#'        type = c("p", "a"),
#'        xlab = "Bloco",
#'        ylab = expression ("Produção de Arroz"~(kg~ha^{-1})))
#'
NULL
