#' @name ManlyTb1.1
#' @title Pardais sobreviventes da tempestade
#' @description Estudo em 1898, para a teoria da evolução de Darwin com
#'     pardais moribundos, com total de 49 dados.
#' @format Um \code{data.frame} com 49 registros e 6 variáveis.
#'
#' \describe{
#'
#' \item{\code{ct}}{Comprimento total do pardal (mm).}
#'
#' \item{\code{ea}}{Extensão alar (mm).}
#'
#' \item{\code{cbc}}{Comprimento do bico e cabeça (mm).}
#'
#' \item{\code{cdu}}{Comprimento do úmero (mm).}
#'
#' \item{\code{cqe}}{Comprimento da quilhado esterno (mm).}
#'
#' \item{\code{sobrev}}{Se o animal sobreviveu: S = Sim e N = Não.}
#'
#' }
#'
#' @keywords TODO
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados:
#'     uma introdução. Porto Alegre, RS: Bookman (pg 14 e 15)
#' @examples
#'
#' data(ManlyTb1.1)
#'
#' pairs(~ ct + ea + cbc + cdu + cqe + sobrev,
#'       data = ManlyTb1.1,
#'       main = "Gráfico de dispersão das variáveis nos pardais")
NULL