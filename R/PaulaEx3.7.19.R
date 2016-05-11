#' @name PaulaEx3.7.19
#' @title Gestantes fumantes
#'
#' @description Experimento de gestantes fumantes, no qual foi classificado 
#' segundo os fatores de idade, número de cigarros consumidos, tempo de 
#' gestação, e a situação da criança.
#' 
#' @format Um \code{data.frame} com 3 variáveis categóricas e 
#' 2 do tipo integer.
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade < 30 e +30 (factor) .}
#' 
#' \item{\code{ncigar}}{Número de cigarros consumidos por dia, 
#' < 5 e +5 (factor).}
#' 
#' \item{\code{tgest}}{Tempo de gestação <= 260 dias e >260 (factor).}
#'
#' \item{\code{sobres}}{Contagem de crianças que sobreviveram.}
#' 
#' \item{\code{sobren}}{Contagem de crianças que não sobreviveram.}
#' 
#' }
#' 
#' @keywords ML
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. 
#'     (Exercício 3.7.19, página 276)
#'     
#'     
#' @references Agresti A. (1990). Categorical Data Analysis. John Wiley, 
#' New York. (página 253))
#' 
#' @examples
#'
#' data(PaulaEx3.7.19)
#' 
#' require(vcd)
#' 
#' # Paciente que sobreviveram 
#' ss <- xtabs(sobres ~ idade + ncigar + tgest, PaulaEx3.7.19)
#' 
#' # Paciente que não sobreviveram
#' ns <- xtabs(sobren ~ idade + ncigar + tgest, PaulaEx3.7.19)
#' 
#' mosaic(ss,
#'        main = "Pacientes que sobreviveram",
#'        labeling_args = list(
#'          set_varnames = c(ncigar = "Número de cigarros",
#'                           tgest = "Tempo de gestação")))
#' 
#' mosaic(ns,
#'        main = "Pacientes que não sobreviveram",
#'        labeling_args = list(
#'          set_varnames = c(ncigar = "Número de cigarros",
#'                           tgest = "Tempo de gestação")))
NULL