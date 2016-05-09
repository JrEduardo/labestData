#' @name PaulaEx3.7.22
#' @title Avaliação de caduquice
#' @description Os dados provém de um experimento com 54 indivíduos
#'     considerados idosos. Eles foram submetidos a um exame psiquiátrico
#'     para avaliar a ocorrência ou não de sintoma de caduquice.
#'     
#'     Acredita-se que o escore obtido em um exame feito previamente esteja
#'     associado com a ocorrência ou não do sintoma.
#' @format Um \code{data.frame} com 55 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{score}}{ Escore do indivíduo no exame psicológico. }
#' 
#' \item{\code{resp}}{ Fator com dois níveis representando a ocorrência
#'     (1) ou não ocorrência (0) do sintoma.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exercício 3.7.22, pág. 278)
#' @examples
#' 
#' library(lattice)
#' 
#' data(PaulaEx3.7.22)
#' 
#' xyplot(score ~ resp, data = PaulaEx3.7.22)
#' model <- glm(resp ~ score, data = PaulaEx3.7.22, family = "binomial")
#'
NULL