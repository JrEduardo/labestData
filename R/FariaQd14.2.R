#' @name FariaQd14.2
#' @title Produção de milho, em kg/ha-¹
#' @description Os dados abaixo são provenientes de um ensaio
#'     experimental em que foram utilizadas 7 doses de nitrogênio 
#'     aplicado em cobertura sobre a produtividade de milho. 
#'     O experimento foi montado em delineamento inteiramente 
#'     casualizado, DIC, com 5 repetições.
#' @format Um \code{data.frame} com 35 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{trat}}{ Os níveis do fator são constituídos por 7 doses
#'     de nitrogênio (10, 20, 30, 40, 50, 60 e 70). }
#' 
#' \item{\code{rept}}{ Os níveis do fator são constituídos por 5 (1, 2,
#'     3, 4 e 5) repetições. }
#' 
#' \item{\code{result}}{ Resultaos obtidos pelo experimento da 
#'     produção de milho, em kg/ha-¹ }
#' 
#' }
#' @keywords DIC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA : UESC. ( Quadro 14.2 pág 198.)
#' @examples
#' 
#' 
#' library(lattice)
#' 
#' 
#' data(FariaQd14.2)
#' 
#' plot(trat ~ rept, data = FariaQd14.2)
#' 
#' 
NULL
