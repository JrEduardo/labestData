#' @name ZimmermannTb10.20
#' @title Experimento com feijão
#' @description Dados de um experimento conduzido em faixas em blocos ao acaso,
#'     com duas repetições e parcelas divididas. Se testaram, nas faixas 
#'     horizontais, as lâminas de água aplicada em arrigação por aspersão,
#'     nas faixas verticais as formas de preparo de solo e nas subparcelas,
#'     doses de nitrogênio. Os dados são de massa de 100 grãos de feijão, sem
#'     unidade de medida. 
#' @format Um \code{data.frame} com 72 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{\code{lam}{Fator de níveis numéricos. Identifica a lâmina de água
#'    da observação.}
#'    
#' \item{\code{nit}}{Fator de níveis numéricos. Identifica a dose de 
#'     nitrogênio.}
#'
#' \item{\code{solo}}{Fator de níveis numéricos. Identifica a forma de 
#'     preparação do solo.}
#'     
#' \item{\code{rept}}{Fator de níveis numéricos. Identifica a repetição da
#'    observação.}
#'     
#' \item{\code{massa}}{Massa de 100 grãos de feijão, sem unidade de medida.}
#'
#' @keywords DBC faixas
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 213)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.20)
#'
#' aggregate(massa ~ rept, data = ZimmermannTb10.20, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(massa ~ lam, data = ZimmermannTb10.20, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(massa ~ lam + nit + solo, groups = rept, data = ZimmermannTb10.20, 
#'        type=c("p","a"),
#'        xlab="Fatores", ylab="Massa de 100 grãos de feijão", 
#'        main="Experimento em faixas em blocos ao acaso")
#'        
#' with(ZimmermannTb10.20, interaction.plot(rept, solo, massa, lty = c(2,3), 
#'                                          col = 4:6, 
#'                                          ylab = "Produção de Feijão",
#'                                          xlab = "Repetição"))
NULL