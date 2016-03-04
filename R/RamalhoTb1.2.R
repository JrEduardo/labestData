#' @name RamalhoTb1.2
#' @title Produtividade Média de Espiga
#' @description Experimento da produtividade média de espigas de milho 
#'     de diversas cultivares obtidas por Ferreira et al (1995).
#' @format data.frame com 28 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{varied}{Fator de níveis nominais das variedades de milho. }
#'
#' \item{t.ha}{Produtividade média de espiga (t/ha).}
#'
#' }
#' @keywords milho produtividade
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 15)
#'
#' @examples
#'
#' ht <- hist(RamalhoTb1.2$t.ha, xlab = "t.ha", ylab = "Frequência", 
#'           main = "", breaks = c(2.5, 4.25, 6, 7.75, 9.5), axes = FALSE, 
#'           labels = TRUE)
#' axis(1, at = c(2.5, 4.25, 6, 7.75, 9.5))
#' axis(2)
#' 
NULL
