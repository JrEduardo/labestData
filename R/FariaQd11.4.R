#' @name FariaQd11.4
#' @title Produção de Batatas em Kg/parcela.
#' @description Experimento montado no DIC com interação significativa.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis.
#' \describe{ 
#' 
#' \item{\code{trat1}}{  Os níveis do fator são constituídos por 2
#'     tratamentos  (ci = com irrigação e si = sem irrigação) no solo. }
#' 
#' \item{\code{trat2}}{ Os níveis do fator são constituídos por 2
#'     tratamentos  (cac = com calagem e cas = sem calagem) no solo. }
#' 
#' \item{\code{rept}}{  Os níveis do fator são constituídos por 4
#'     (1, 2, 3 e 4) repetições. }
#' 
#' \item{\code{result}}{ Resultado obtido em kg/parcela }
#' 
#' }
#' @keywords DIC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA : UESC. ( Quadro 11.4, pág 134.)
#' @examples
#' 
#' 
#' library(lattice)
#' 
#' 
#' data(FariaQd11.4)
#' 
#' 
#' plot(trat2 ~ trat1, data = FariaQd11.4)
#' 
#' 
NULL

#' 
