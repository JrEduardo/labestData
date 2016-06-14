#' @name ZimmermannTb16.1
#' @title Análise de Composição do Solo
#' @description Dados de análise de solos aluviais, que apresentaram pH abaixo 
#'     de sete, referentes à associação existente entre teor de matéria 
#'     orgânica no solo (porcentagem) com disponibilidade de fósforo 
#'     (mg kg\eqn{^{-1}}). A amostra tem apenas sete observações. 
#'     
#' @format Um \code{data.frame} com 7 observações e 7 variáveis
#'
#' \describe{
#'
#' \item{\code{origem}}{Fator de níveis nominais. Identifica a origem da
#'     repetição.}
#'     
#' \item{\code{MO}}{Variável de níveis numéricos. Identifica a quantidade de
#'     matéria orgânica no solo (porcentagem).}
#'     
#' \item{\code{fosf}}{Variável de níveis numéricos. Identifica a disponibilidade
#'     de fósforo no solo (mg kg\eqn{^{-1}}).}
#'     
#' \item{\code{postoMO}}{Posto da váriavel MO.}
#'     
#' \item{\code{postofosf}}{Posto da váriavel fosf.}
#'     
#' \item{\code{Nc}}{Indica o número de pares concordantes.}
#'     
#' \item{\code{Nd}}{Indica o número de pares discordantes.}
#'
#' }
#' @keywords correlacao
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.1, pág 327)
#' @examples
#'
#' data(ZimmermannTb16.1)
#'
#' str(ZimmermannTb16.1)
#'
#' mean(ZimmermannTb16.1$MO)
#' mean(ZimmermannTb16.1$fosf)
#' 
#' var(ZimmermannTb16.1$MO)
#' var(ZimmermannTb16.1$fosf)
NULL
