#' @name PimentelTb14.5.1
#' @title Ensaio de Revers\enc{ã}{a}o na Produ\enc{çã}{ca}o de Leite
#' @description Experimento de reversão (switch-back) avaliando a
#'     produção de leite em função do nível de nutrição. Os fatores
#'     período, bloco e vaca são de blocagem. O tratamento estudado
#'     tinha 3 níveis. Sendo assim, 6 possibilidades existem: A-B-A,
#'     B-A-B, A-C-A, C-A-C, B-C-B, C-B-C. Cada uma delas foi atribuída a
#'     duas vacas.
#' @format Um \code{data.frame} com 36 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{periodo}}{Fator de 3 níveis qualitativos, que são os
#'     períodos sucessivos de produção de leite. No primeiro e terceiro
#'     período as vacas recebem o mesmo tratamento.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis qualitativos, usado para
#'     controle local (possivelmente mantém juntas vacas de mesma
#'     aptidão leiteira).}
#'
#' \item{\code{vaca}}{Fator que identifica as 12 vacas submetidas ao
#'     experimento. Cada vaca foi avaliada nos 3 períodos, sendo os
#'     tratamentos aplicados de forma 1-2-1, ou seja, o primeiro e
#'     último são iguais.}
#'
#' \item{\code{trat}}{Fator de 3 níveis qualitativos, que são os
#'     tratamentos utilizados no experimento.}
#'
#' \item{\code{prod}}{Produções de leite, em kg.}
#'
#' }
#' @keywords ER
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 14.5.1, pág. 278)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb14.5.1)
#' str(PimentelTb14.5.1)
#'
#' ftable(xtabs(~vaca + trat, data = PimentelTb14.5.1))
#'
#' xyplot(prod ~ trat,
#'        groups = bloc,
#'        type = c("a", "p"),
#'        auto.key = list(title = "Bloco",
#'                        cex.title = 1.1, columns = 3),
#'        data = PimentelTb14.5.1,
#'        ylab = "Produção de Leite (em kg)",
#'        xlab = "Tratamento Utilizado")
#'
NULL
