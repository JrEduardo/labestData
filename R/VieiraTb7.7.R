#' @name VieiraTb7.7
#' @title Teste de conhecimento
#' @description Dados referentes às notas dos alunos em um teste de
#'      conhecimento segundo a fonte de informação (tratamento).
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Grupo ao qual a observação pertence.}
#'
#' \item{\code{tratamento}}{Tratamento ao qual o aluno foi submetido.}
#'
#' \item{\code{valor}}{Nota do aluno no teste.}
#'
#' }
#' @keywords TODO
#' @source Vieira, S.(1999). Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (Tabela 7.7 pág. 81; Tabela 8.2 pág. 94).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraTb7.7)
#'
#' xyplot(valor ~ tratamento, group = bloco, data = VieiraTb7.7,
#'        ylab = "Nota do Aluno",
#'        xlab = "Tratamento")
#'
NULL
