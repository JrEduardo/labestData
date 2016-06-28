#' @name ZimmermannTb12.13
#' @title Propor\enc{çã}{ca}o de Insetos Infectados
#' @description Dados do ensaio 1 de um experimento em DBC que estudou a
#'     patogenicidade de fungos ao percevejo do grão de arroz. A
#'     testemunha sem infecção (1) era o tratamento comum entre os dois
#'     experimentos. Os dados se referem à proporção de percevejos
#'     infectados, medida transformada pelo arco seno da raiz quadrada
#'     da proporção.
#' @format Um \code{data.frame} com 35 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis nominais. Tratamento aplicado em
#'     arroz.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{asinprop}}{Arco seno da raíz quadrada
#'     (\eqn{\arcsin(\sqrt{p})}) da proporção (em radianos) de insetos
#'     infectados.}
#'
#' }
#' @keywords DBC proporção
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tab 12.13, pág 255)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.13)
#'
#' str(ZimmermannTb12.13)
#'
#' xyplot(asinprop ~ trat , groups = bloco, data = ZimmermannTb12.13,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Tratamentos",
#'        ylab = "Arco seno da raíz da proporção de insetos infectados")
#'
#' aggregate(asinprop ~ trat, data = ZimmermannTb12.13,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL
