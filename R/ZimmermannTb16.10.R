#' @name ZimmermannTb16.10
#' @title Colmos atacados por Elasmopalpus lignosellus L.
#' @description Experimento realizado em delineamento quadrado latino 6x6.  
#'     Os dados são referentes ao número de colmos atacados por 
#'     E. lignosellus L. em plantas de arroz. São apresentados na tabela também os 
#'     respectivos postos de cada dado. Não se sabe à que fazem referências 
#'     os tratamentos. 
#' @format Um \code{data.frame} com 36 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis numéricos. Indica a linha à qual a observação
#'     pertence.}
#'
#' \item{coluna}{Fator de níveis numéricos. Indica a coluna à qual a
#'     observação pertence. }
#'     
#' \item{trat}{Fator de níveis numéricos. Indica o tratamento aplicado. }
#'
#' \item{posto}{Fator de níveis numéricos. Indica o posto da observação.}
#'
#' \item{CAE}{Número de colmos atacados por E. lignosellus L.}
#'
#' }
#' @keywords DQL 
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.1, pág 357)
#' @examples
#'
#' library(lattice)
#' library(reshape)
#'
#' data(ZimmermannTb16.10)
#'
#' str(ZimmermannTb16.10)
#' 
#' cast(ZimmermannTb16.10, linha ~ coluna, value = "CAE")
#' cast(ZimmermannTb16.10, linha ~ coluna, value = "trat")
#' 
#' levelplot(CAE ~ linha + coluna,
#'           data = ZimmermannTb16.10, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'             panel.levelplot(x, y, z, subscripts = subscripts)
#'             panel.text(x, y, ZimmermannTb16.10$trat[subscripts],
#'                        pos = 3)
#'             panel.text(x, y, sprintf("%0.1f", z), pos = 1)
#'           })
#' 
#' xyplot(CAE ~ trat, data = ZimmermannTb16.10, type = c("p", "a"),
#'        ylab = "Número de colmos atacados",
#'        xlab = "Tratamento Aplicado")
NULL