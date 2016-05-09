#' @name PaulaEg5.2.8c
#' @title Manchas na Folha de Cevada
#' @description Dados obtidos por McCullagh e Nelderem, envolvendo a
#'     incidência de um tipo de mancha é observada na folha da cevada
#'     segundo 10 variedades em 9 locais diferentes.

#' @format Um \code{data.frame} com 90 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{incid}}{Incidência da área afetada na folha de cevada
#'     (em proporção).}
#' 
#' \item{\code{local}}{Fator de 9 níveis que representa o local onde foi
#'     realizado o experimento.}
#' 
#' \item{\code{varied}}{Fator de 10 níveis que indica a variedade de
#'     cevada.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 5.2.8a, pág. 367)
#' 
#' @references McCullagh, P. e Nelder, J. A. (1989). Generalized Linear
#'     Models, 2nd. Edition. Chapman and Hall, London. Tabela 9.2.
#' @examples
#'
#' data(PaulaEg5.2.8c)
#'
#' str(PaulaEg5.2.8c)
#'
#' boxplot(incid ~ local, data = PaulaEg5.2.8c,
#'         xlab = "Local",
#'         ylab = "Área Afetada")
#'
#' boxplot(incid ~ varied, data = PaulaEg5.2.8c,
#'         xlab = "Variedade",
#'         ylab = "Área Afetada")
#'
#' library(lattice)
#'
#' xyplot(incid ~ local | varied, data = PaulaEg5.2.8c,
#'        type = c("p", "a"),
#'        xlab = "Local",
#'        ylab = "Área Afetada")
#'
NULL