#' @name PimentelTb5.3.1
#' @title Teor de colesterol no sangue
#' @description Pesquisa sobre o efeito do óleo de milho no teor de
#'     colesterol do sangue, realizada em sete pacientes tomados
#'     como blocos, cujos dados foram obtidos pelo médico Dr. Ben 
#'     Hur C. Paiva.
#' @format data.frame com 14 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{periodo}{Fator de 2 níveis qualitativos, usado para comparar o
#'     teor de colesterol no sangue antes e depois do uso do óleo de 
#'     milho.}
#'
#' \item{paciente}{Variável utilizada para identificar os 7 pacientes.}
#'
#' \item{colesterol}{Teor de colesterol no sangue em mg por 100g.}
#'
#' }
#' @keywords DBC colesterol
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba: FEALQ.
#' @examples
#'
#' library(lattice)
#'
#' xyplot(colesterol ~ periodo,
#'        groups = paciente,
#'        data = PimentelTb5.3.1,
#'        type = "p",
#'        xlab = "Período",
#'        ylab = "Teor de Colesterol")
#'
NULL