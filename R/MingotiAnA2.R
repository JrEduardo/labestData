#' @name MingotiAnA2
#' @title Desempenho de 44 funcionários de uma empresa
#' @description Dados referentes a 44 funcionários de uma empresa, aos 
#'     quais foram atribuídas notas para desempenho nas vendas, 
#'     desempenho nos lucros, captação de novos clientes, além dos
#'     resultados de quatro testes que medem a habilidade de escrita, 
#'     lógica, social e matemática.
#' @format Um \code{data.frame} com 44 observações e 8 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{funcio}}{Número de identificação do funcionário.}
#'
#' \item{\code{venda}}{Nota atribuída ao funcionário referente ao desempenho
#'     nas vendas.}
#'     
#' \item{\code{lucro}}{Nota atribuída ao funcionário referente ao desempenho
#'     no lucro da empresa.}
#'     
#' \item{\code{clie}}{Nota atribuída ao funcionário referente ao desempenho
#'     na captação de novos clientes.}
#'
#' \item{\code{escri}}{Nota atribuída à habilidade do funcionário na
#'     escrita.}
#'
#' \item{\code{logica}}{Nota atribuída à habilidade do funcionário em
#'     lógica.}
#'     
#' \item{\code{social}}{Nota atribuída à habilidade social do funcionário.}
#'
#' \item{\code{mate}}{Nota atribuída a habilidade do funcionário em
#'     matemática.}
#'
#' }
#' @keywords AnaFat
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 123 (Ex 4.2); 126 (Ex 4.3)).
#' @examples
#'
#' data(MingotiAnA2)
#' 
#' library(lattice)
#'
#' da <- reshape(MingotiAnA2, direction = "long", varying = list(2:8),
#'              v.names = "notas", timevar = "atributo")

#' xyplot(notas ~ atributo, data = da, 
#'       jitter.y = TRUE, type = c("p", "a"))
#'
NULL