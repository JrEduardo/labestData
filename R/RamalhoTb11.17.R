#' @name RamalhoTb11.17
#' @title Produção de Grãos de Feijão
#' @description Dados provenientes de 3 experimentos envolvendo a
#'     produção de grãos de 15 linhagens de feijão, conduzidos sob
#'     delineamento em blocos casualizados incompletos, pois somente as
#'     testemunhas são comuns a todos os experimentos.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{exp}}{Fator de 3 níveis que indica de qual experimento a
#'     observação provém.}
#'
#' \item{\code{linh}}{Fator de 18 níveis onde os níveis 1, 2 e 3 são
#'     testemunhas, comuns a todos os experimentos e os demais (4 a 18)
#'     são as linhagens de feijão avaliadas.}
#'
#' \item{\code{bloc}}{Fator de 2 níveis em cada experimento, usado para
#'     fazer controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medidos em kg/parcela
#'     nas unidades experimentais.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 11.17, pág. 193)
#' @examples
#'
#' library(lattice)
#' 
#' xyplot(prod ~ linh, groups = exp, data = RamalhoTb11.17,
#'        type = c("p", "a"),
#'        xlab = "Linhagem de feijão",
#'        ylab = "Produção em kg/parcela")
#'
NULL