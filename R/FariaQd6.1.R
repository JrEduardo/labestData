#' @name FariaQd6.1
#' @title Produção de milho
#' @description Produção de milho em kg 100 m². Experimento onduzido no 
#'     delineamento inteiramente casualizado (DIC) com 5 repetições, 
#'     onde foram testadas quatro variedades (A, B, C e D) de milho
#' @format Um \code{data.frame} com 20 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{trat}}{ Os níveis do fator sõ constituídos por 4 
#'     tratamentos  (A, B, C e D) de milho. }
#' 
#' \item{\code{rept}}{ Os níveis do fator são constituídos por 5 
#'     repetições. }
#' 
#' \item{\code{result}}{ Resultados (kg/ano) dos tratamentos. }
#' 
#' }
#' @keywords DIC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA : UESC. (Tabela 6.1 pág 76.)
#' @examples
#' 
#' 
#' library(lattice)
#' 
#' 
#' data(FariaQd6.1)
#' 
#' 
#' xyplot(result~rept|trat, data = FariaQd6.1, ylab = "Repetições", 
#'     xlab = "Tratamento")
#'     
#' 
NULL
