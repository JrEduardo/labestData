#' @name FariaEg3.2.4
#' @title Produção de Amêndoas
#' @description Produção de amêndoas (kg 10 plantas-1 ano-1) de cacau 
#'     (5 anos)
#' @format Um \code{data.frame} com 24 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{trat}}{ Os níveis do fator são constituídos por 4 
#'     tratamentos (A, B, C, e D.). }
#' 
#' \item{\code{rept}}{ Os níveis do fator são constituídos por 6 
#'     repetições. }
#' 
#' \item{\code{result}}{ Resultados (kg/ano) dos tratamentos. }
#' 
#' }
#' @keywords AV
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA : UESC. (Tabela 3.2.4 pág 46.)
#' @examples
#' 
#' library(lattice)
#' 
#' 
#' data(FariaEg3.2.4)
#' 
#' 
#' xyplot(result~rept|trat, data = FariaEg3.2.4, ylab = "Repetições", 
#'     xlab = "Tratamento")
#'     
#'     
NULL
