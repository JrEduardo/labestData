#' @name MingotiTb2.2
#' @title Notas de estudantes em três provas
#' @description Notas obtidas por 19 estudantes em três provas de 
#'              uma determinada disciplina.
#'          
#' @format data.frame com 19 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{est}{Identificação do estudante.}
#'
#' \item{p1}{Nota obtida na primeira prova variando de 0 a 25.}
#'
#' \item{p2}{Nota obtida na segunda prova variando de 0 a 25.}
#'
#' \item{p3}{Nota obtida na terceira prova variando de 0 a 25.}
#' }
#' @keywords Nota estudante
#' @source MINGOTI, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 52).
#' @examples
#' 
#' data(MingotiTb2.2)
#' 
#' pairs(~ est + p1 + p2 + p3, data = MingotiTb2.2, 
#'      main="Dispersão das três variáveis")
#'
NULL
