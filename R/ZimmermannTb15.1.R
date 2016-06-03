#' @name ZimmermannTb15.1
#' @title Produção média de perfilhos por planta
#' @description Dados de um ensaio fatorial fracionado \eqn{2^4-1}, em blocos 
#'    ao acaso. O experimento mediu o número médio de perfilhos por planta. Os
#'    quatro fatores são: cultivar, calcário, gesso e fósforo. Para os fatores
#'    abióticos, o nível 0 correspondeu à não aplicação do insumo e para as
#'    cultivares, a IAC 47. O nível 1 correspondeu a: cultivar IAC 165, 5000
#'    kg ha\eqn{^{-1}} de calcário, 1500 kg ha\eqn{^{-1}} de gesso e 
#'    kg ha\eqn{^{-1}} de fósforo. 
#' @format Um \code{data.frame} com 24 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Indica o bloco da observação.}
#'
#' \item{\code{perf}}{Número médio de perfilhos por plantas.}
#' 
#' \item{\code{iden}}{Identificação do tratamento utilizado.}
#' }
#' @keywords DBC FAT
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 306)
#' @examples
#'
#' library(lattice)
#'   
#' data(ZimmermannTb15.1)
#'
#' with(ZimmermannTb15.1, interaction.plot(bloco, iden, perf, lty = c(1:5), 
#'                                         col = 2:9, 
#'                                         ylab = "Média de Perfilhos",
#'                                         xlab = "Bloco"))
#' 
#' xyplot(perf ~ iden, groups = bloco, data = ZimmermannTb15.1, 
#'        type=c("p","a"),
#'        xlab="Identificações", ylab="Média de Perfilhos", 
#'        main="Experimento Fatorial Fracionado")
#' 
#' aggregate(perf ~ bloco, data = ZimmermannTb15.1, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(perf ~ iden, data = ZimmermannTb15.1, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL