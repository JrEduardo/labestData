#' @name RamalhoTb1.2
#' @title Produtividade Média de Espiga
#' @description Experimento da produtividade média de espigas de milho
#'     de diversas cultivares obtidas por Ferreira et al (1995).
#' @format data.frame com 28 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis nominais das variedades de milho.}
#'
#' \item{\code{prod}}{Produtividade média de espiga (ton ha\eqn{^{-1}}).}
#'
#' }
#' @keywords ASS
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pg 15)
#'
#' @examples
#'
#' bk <- c(2.5, 4.25, 6, 7.75, 9.5)
#' ht <- hist(RamalhoTb1.2$prod,
#'            xlab = expression("Produtividade"~(ton~ha^{-1})),
#'            ylab = "Frequência absoluta",
#'            main = NULL,
#'            breaks = bk,
#'            axes = FALSE,
#'            labels = TRUE)
#' axis(side = 1, at = bk)
#' axis(side = 2)
#' rug(RamalhoTb1.2$prod)
#'
#' plot(ecdf(RamalhoTb1.2$prod),
#'      xlab = expression("Produtividade"~(ton~ha^{-1})),
#'      ylab = "Frequência relativa acumulada",
#'      main = NULL)
#'
NULL
