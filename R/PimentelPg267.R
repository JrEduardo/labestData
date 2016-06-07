#' @name PimentelPg267
#' @title Peso Total em Ensaios de 12 ou 13 Aves
#' @description Ensaio de Torres e Pimentel-Gomes (1959) em que usaram
#'     4 rações com 2 repetições para pintos machos e outras duas para
#'     pintos fêmeas, com um delineamento inteiramente casualizado. Cada
#'     parcela tinha inicialmente 13 aves, mas algumas morreram, de modo
#'     que, na pesagem final, com 4 semanas de idade, algumas parcelas
#'     contavam com 12 animais apenas.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{sexo}}{Fator de 2 níveis qualitativos, que refere-se ao
#'     sexo do animal: Masculino (M) e Feminino (F).}
#'     
#' \item{\code{sorgo}}{Fator de 4 níveis qualitativos, que são os
#'     diferentes tipos de ração, sendo: 0 (sem sorgo), 10 (com
#'     \eqn{10\%} de sorgo), 20 (com \eqn{20\%} porcento de sorgo) e 30
#'     (com \eqn{30\%} de sorgo).}
#'
#' \item{\code{animais}}{Número de aves vivas ao final de cada ensaio.}
#' 
#' \item{\code{peso}}{Peso total das parcelas, em decagramas.}
#'
#' }
#' @keywords DIC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Página 267)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg267)
#' str(PimentelPg267)
#' 
#' xyplot(peso ~ sorgo,
#'        groups = sexo,
#'        auto.key = list(title = "Sexo",
#'                        cex.title = 1,
#'                        columns = 2),
#'        type = c("a", "p"),
#'        data = PimentelPg267,
#'        ylab = "Peso Total (em decagramas)",
#'        xlab = "Tipo de Ração")
#'
NULL