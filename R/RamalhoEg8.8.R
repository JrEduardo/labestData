#' @name RamalhoEg8.8
#' @title Produção de Grãos de Feijão de Populações Segregantes
#' @description Dados da produção de grãos de feijão obtidos por Corte
#'     et al. (2002) relativos à avaliação de 6 populações segregantes
#'     avaliadas nas gerções F\eqn{_{2}}, F\eqn{_{3}} e F\eqn{_{4}} com
#'     diferente número de repetições. O delineamento foi em blocos
#'     casualizados.
#' @format Um \code{data.frame} com 72 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{exp}}{Fator de 3 níveis que representa a gerações de
#'     feijão.}
#'
#' \item{\code{rept}}{Fator de 3 níveis do experimento, usado para
#'     fazer controle local.}
#'
#' \item{\code{trat}}{Fator de 6 níveis que representa as populações das
#'     gerações do experimento.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medida em kg/ha nas
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exemplo 8.8, pág. 123)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg8.8)
#'
#' str(RamalhoEg8.8)
#'
#' xtabs(~trat + exp, data = RamalhoEg8.8)
#'
#' xyplot(prod ~ trat, data = RamalhoEg8.8,
#'        groups = exp, type = c("p", "a"),
#'        jitter.x = TRUE,
#'        xlab = "Tratamento",
#'        ylab = "Produção em (kg/ha)")
#'
NULL
