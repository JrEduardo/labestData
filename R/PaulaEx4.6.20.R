#' @name PaulaEx4.6.20
#' @title Ovos Eclodidos de Ceriodaphnia dubia sob Doses de Herbicida
#' @description Dados provenientes de um típico estudo
#'     dose-resposta. 50 animais \emph{Ceriodaphnia dubia}
#'     (pequeno invertebrado de água doce) foram submetidos a 5 diferentes
#'     dosagens do herbicida \emph{Nitrofen} (10 animais expostos a cada
#'     nível de dosagem) e, após 3 ninhadas, observou-se o número total
#'     de ovos eclodidos.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis.
#'     \describe{
#' 
#' \item{\code{dose}}{Dosagem de \emph{Nitrofen} aplicada, em mg/l.}
#' 
#' \item{\code{novos}}{Número de ovos de \emph{Ceriodaphnia dubia}
#'     eclodidos após 3 ninhadas.} 
#'
#' }
#'
#' @details A variável \code{dose} foi tomada como valor numérico,
#'     devido a natureza da variável. Todavia, se for de interesse na
#'     análise a comparação das médias dos números de ovos eclodidos,
#'     pode-se considerá-la como fator de cinco níveis (0, 80, 160, 235 e
#'     310 mg/l) e estimar as médias para cada nível
#'
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.20,
#'     pág. 349)
#'
#' @examples
#'
#' data(PaulaEx4.6.20)
#' 
#' str(PaulaEx4.6.20)
#' 
#' aggregate(novos ~ dose, FUN = function(x) c(mean(x), var(x)),
#'           data = PaulaEx4.6.20)
#' 
#' library(lattice)
#' xyplot(novos ~ dose,
#'        data = PaulaEx4.6.20,
#'        jitter.x = TRUE,
#'        xlab = "Dose", ylab = "Número de ovos",
#'        type = c("p", "g", "smooth"))
#'
NULL
