#' @name ZimmermannTb10.15
#' @title Experimento com cultivares de arroz
#' @description Dados de um experimento conduzido em faixas em blocos ao acaso,
#'     para testar o efeito da aplicação de adubos em arroz após pastagem, 
#'     no qual foram utilizadas três cultivares. Nesta tabela constam os 
#'     dados de duas dessas cultivares, sendo eles de produção de arroz 
#'     em kg ha\eqn{^{-1}}. 
#' @format Um \code{data.frame} com 24 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{geno}}{Fator de níveis nominais. Identifica a cultivar/genótipo
#'    da observação.}
#'    
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco ao qual
#'     a observação pertence.}
#'
#' \item{\code{adub}}{Fator de níveis numéricos. Identifica a adubação 
#'     aplicada.}
#'
#' \item{\code{prod}}{Produção de arroz em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC faixas
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 210)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.15)
#'
#' aggregate(prod ~ bloco, data = ZimmermannTb10.15, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(prod ~ geno, data = ZimmermannTb10.15, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(prod ~ adub + geno, groups = bloco, data = ZimmermannTb10.15, 
#'        type=c("p","a"),
#'        xlab="Fatores", ylab="Produção de arroz", 
#'        main="Ensaio em faixas em blocos ao acaso")
#' with(ZimmermannTb10.15, interaction.plot(bloco, geno, prod, lty = c(2,3), 
#'                                          col = 4:6, 
#'                                          ylab = "Produção de Arroz",
#'                                          xlab = "Bloco"))
NULL