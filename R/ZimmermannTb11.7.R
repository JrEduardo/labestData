#' @name ZimmermannTb11.7
#' @title Espaçamento, Densidade e Nitrogênio na Produção de Arroz
#' @description Dados de um experimento fatorial \eqn{2^3}, com
#'     confundimento de interações simples (A*B, B*C e A*C). Referem-se
#'     à produtividade de grãos, em kg ha\eqn{^{-1}}. O ensaio foi
#'     conduzido em 2 blocos ao acaso com quatro repetições. Os fatores
#'     são: densidades de plantio de 50 e 90 sementes por metro,
#'     espaçamentos entre linhas de 35cm e 50cm e fator presença ou
#'     ausência de adubação nitrogenada em cobertura.
#' @format Um \code{data.frame} com 32 observações e 7 variáveis
#'
#' \describe{
#'
#' \item{\code{espac}}{Fator de níveis numéricos que identifica a
#'     densidade de plantio utilizada.}
#'
#' \item{\code{dens}}{Fator de níveis numéricos que identifica o
#'    espaçamento utilizado.}
#'
#' \item{\code{adub}}{Fator de níveis númericos que indicam a presença
#'    ou ausência de adubação nitrogenada em cobertura.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica o
#'     bloco.}
#'
#' \item{\code{rept}{Fator de níveis numéricos que identifica a
#'    repetição da cela experimental em cada bloco.}
#'
#' \item{\code{prod}}{Produção de arroz, em kg ha\eqn{^{-1}}.}
#'
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 226)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.7)
#'
#' str(ZimmermannTb11.7)
#'
#' ftable(xtabs(~adub + espac + dens + bloco, data = ZimmermannTb11.7))
#'
#' xyplot(prod ~ adub | dens, groups = espac,
#'        data = ZimmermannTb11.7,
#'        type = c("p", "a"),
#'        xlab = "Adubação",
#'        ylab = expression("Produção de Arroz"~(kg~ha^{-1})))
#'
NULL
