#' @name FariaEg2.9.5
#' @title Exemplo Básio de Aplicaão da Distribuição F - Comparação de 
#'     Precisão.
#' @description Dois métodos de CTC do solo são usados em uma amostra de
#'      controle e fornecem os resultados em Cmol/kg-¹
#' @format Um \code{data.frame} com 20 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{trat}}{ Os níveis do fator são constituídos por 2 (A e B)
#'     tratamentos. }
#' 
#' \item{\code{rept}}{ Os níveis do fator são constituídos por 10 
#'     r1, r2, r3, r4, r5, r6, r7, r8, r9 e r10) repetições. }
#' 
#' \item{\code{result}}{ Resultaos obtidos em Cmol/kg-¹. }
#' 
#' }
#' @keywords CTC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA : UESC. ( Exemplo 2.9.5, pág 39.)
#' @examples
#' 
#' 
#' library(lattice)
#' 
#' 
#' data(FariaEg2.9.5)
#' 
#' plot(trat ~ rept, data = FariaEg2.9.5)
#' 
#' 
NULL
