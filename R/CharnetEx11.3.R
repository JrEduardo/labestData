#' @name CharnetEx11.3
#'
#' @title Rela\enc{çã}{ca}o do Pre\enc{ç}{c}o de Venda de Im\enc{ó}{o}vel e suas Caracter\enc{í}{i}sticas
#'
#' @description Estudo observacional onde o interesse é explicar o valor
#'     de venda de imóveis de um mesmo bairro a partir de suas
#'     características presença de piscina, tempo de construção, área
#'     total e número de quartos.
#'
#' @format Um \code{data.frame} com 5 colunas e 20 linhas.
#'
#' \describe{
#'
#' \item{\code{preco}}{Preço de venda do imóvel, em reais.}
#'
#' \item{\code{area}}{Área total de construção, em m\eqn{^2}.}
#'
#' \item{\code{tempo}}{Tempo de construção, em anos.}
#'
#' \item{\code{nquar}}{Número de quartos.}
#'
#' \item{\code{pisc}}{Fator que indica se há piscina (\code{S}) ou não
#'     (\code{N}) no imóvel.}
#'
#' }
#'
#' @keywords RM
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 11, exercício
#'     3, pág. 274)
#'
#' @examples
#'
#' data(CharnetEx11.3)
#'
#' plot(CharnetEx11.3)
#'
NULL
