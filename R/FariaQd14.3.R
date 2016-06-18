#' @name FariaQd14.3
#' @title Matéria seca da parte aérea das plantas de milho, g/vaso-¹
#' @description Os dados abaixo são provenientes de um ensaio 
#'     experimental realizado em casa de vegetação, montado no 
#'     delineamento em blocos casualizados, com 5 repetições, para 
#'     avaliar o efeito de doses de fósforo na produção de matéria seca 
#'     da parte aérea do milho.
#' @format Um \code{data.frame} com 25 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{trat}}{  Os níveis do fator são constituídos por 5 doses
#'     de fósforo (0,0, 32,5, 65,0, 97,5 e 130,0 ). }
#' 
#' \item{\code{blo}}{ Os níveis do fator são constituídos por 5 
#'     repetições (1, 2, 3, 4 e 5). }
#' 
#' \item{\code{result}}{ Resultado da matéria seca da parte aérea das 
#'     plantas de milho, g/vaso-¹. }
#' 
#' }
#' @keywords DBC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA : UESC. ( Quadro 14.3 pág 200.)
#' @examples
#' 
#' 
#' library(lattice)
#' 
#' 
#' data(FariaQd14.3)
#' 
#' plot(trat ~ rept, data = FariaQd14.3)
#' 
#' 
NULL
#' 
