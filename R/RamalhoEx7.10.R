#' @name RamalhoEx7.10
#' @title Produção de arroz
#' @description Experimento referente a produção de arroz obtida na 
#'     avaliação de 18 populações \eqn{F_{2}} e duas linhagens 
#'     utilizadas como testemunhas. O Experimento foi realizado em 
#'     blocos casualizados.
#' @format Um \code{data.frame} com 540 observações e 4 variáveis, em 
#'     que
#'
#' \describe{
#'
#' \item{\code{pop}}{População \eqn{F_{2}} de arroz.}
#'
#' \item{\code{rept}}{Fator que indica se a produção veio da primeira ou 
#'     segunda linhagem.}
#'
#' \item{\code{plant}}{Inteiro que representa o arroz no experimento.}
#'
#' \item{\code{prod}}{Produção de arroz, em g/planta.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 112).
#' @examples
#'
#' library(lattice)
#'
#' boxplot(prod ~ plant, data = RamalhoEx7.10,
#'         ylim = c(0, 45),
#'         xlab = "Plantas de arroz",
#'         ylab = "Produção")
#'
NULL
