#' @name FariaQd11.9
#' @title Qualidade de Mudas em Função do Recipiente da Espécie.
#' @description Experimento montado no DIC com interação significativa 
#'     obtendo como resultado a qualidade de mudas em função do 
#'     recipiente e a espéie.
#' @format Um \code{data.frame} com 12 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{recip}}{ Os níveis do fator são constituídos por 3 
#'     tratamentos  (r1, r2 e r3) de recipientes..  }
#' 
#' \item{\code{espécie}}{ Os níveis do fator são constituídos por 4
#'     (1, 2, 3 e 4) repetições. }
#' 
#' \item{\code{e1}}{ Resultado do experimento 1, e função do recipeinte
#'     e espécie. }
#' 
#' \item{\code{e2}}{ Resultado do experimento 2, e função do recipeinte
#'     e espécie. }
#' 
#' }
#' @keywords DIC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA : UESC. ( Quadro 11.9, pág 145.)
#' @examples
#' 
#' 
#' library(lattice)
#' 
#' 
#' data(FariaQd11.9)
#' 
#' 
#' plot(recip ~ espécie, data = FariaQd11.9)
#' 
#' 
NULL



