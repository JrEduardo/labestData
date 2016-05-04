#' @name PaulaEg5.5.3
#' @title Ensaio clínico da pré-existência de placa dentária
#' @description Um ensaio clínico foi realizado com 109 indivíduos 
#'     distribuídos de forma aleatória para receberem um líquido
#'     tipo A (34 indivíduos), um líquido tipo B (36 indivíduos) e um
#'     líquido controle (39 indivíduos). As placas dentárias foram 
#'     avaliadas e classificadas segundo um escore no início do 
#'     tratamento, após 3 meses e após 6 meses.
#'     
#' @format Um \code{data.frame} com 323 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{volunt}}{Número do paciente voluntário.}
#' 
#' \item{\code{period}}{Avaliado em três períodos diferentes: tratamento
#'     (1), após 3 meses (2) e após 6 meses (3).}
#' 
#' \item{\code{trat}}{Três tipos de tratamento placebo (1), rinse A (2),
#'     rinse B (3).}
#' 
#' \item{\code{escore}}{Escore para as placas dentárias de cada 
#'     indivíduo.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exemplo 5.5.3, pág. 390)
#' @examples
#' 
#' data(PaulaEg5.5.3)
#' 
#' require(lattice)
#' 
#' xyplot(escore ~ period | trat,
#'       type = c("p", "g", "a"), data = PaulaEg5.5.3)
#'       
NULL