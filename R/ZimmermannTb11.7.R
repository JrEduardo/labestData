#' @name ZimmermannTb11.7
#' @title Experimento fatorial com arroz
#' @description Dados de um experimento fatorial \eqn{2^3}, com confundimento
#'    de duas interações simples (A*B, B*C e A*C). Referem-se à produtividade 
#'    de grãos, em kg ha\eqn{^{-1}}. O ensaio foi conduzido em 2 blocos ao acaso 
#'    com quatro repetições. Os fatores são: densidades de plantio de 50 e 
#'    90 sementes por metro, espaçamentos entre linhas de 35cm e 50cm e 
#'    fator presença ou ausência de adubação nitrogenada em cobertura. 
#' @format Um \code{data.frame} com 32 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}{Fator de níveis numéricos. Identifica a repetição
#'    da observação.}
#'    
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco da 
#'     repetição.}
#'     
#' \item{\code{prod}}{Produção de arroz, em kg ha\eqn{^{-1}}.}
#'
#' \item{\code{iden}}{Fator de níveis numéricos. É a identificação que 
#'     representa o tratamento.}
#'
#' @keywords DBC FAT
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 226)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.7)
#'
#' str(ZimmermannTb11.7)
#'
#' aggregate(prod ~ bloco, data = ZimmermannTb11.7, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(prod ~ iden, data = ZimmermannTb11.7, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(prod ~ iden | rept, groups = bloco, data = ZimmermannTb11.7, 
#'        type = c("p","a"),
#'        ylab = "Identificação do Tratamento", 
#'        xlab = expression("Produção de Arroz"~(kg~ha^{-1})))
#'        
NULL