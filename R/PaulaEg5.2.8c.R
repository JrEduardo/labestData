#' @name PaulaEg5.2.8c
#' @title Manchas na Folha de Cevada
#' @description Dados apresentados em McCullagh e Nelder (1989),
#'     envolvendo a incidência de um tipo de mancha observada na folha
#'     da cevada, com 10 variedades em 9 diferentes locações.
#'
#' @format Um \code{data.frame} com 90 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{incid}}{Proporção da área afetada na folha de cevada.}
#' 
#' \item{\code{local}}{Local onde foi realizado o experimento (1-9).}
#' 
#' \item{\code{varied}}{Variedade de cevada (1-10).}
#' 
#' }
#' 
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
NULL
