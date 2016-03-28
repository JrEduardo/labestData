#' @name ZimmermannTb10.9
#' @title Experimento com espiguetas de arroz
#' @description Dados de um em delineamento de blocos completos ao acaso,
#'     em parcelas subdivididas. O experimento avaliou o efeito de 2 épocas
#'     de plantio e aplicação (ou não) do inseticida Fipronil em três cultivares 
#'     de arroz. As épocas de plantio foram implantadas nas parcelas principais,
#'     o inseticida nas subparcelas e os genótipos nas sub-parcelas. Os
#'     resultados são dados de peso de 100 espiguetas de arroz, em gramas.  
#' @format Um \code{data.frame} com 48 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{\code{EPC}}{Fator de níveis numéricos. Indica a época do plantio.}
#'
#' \item{\code{INS}}{Fator de níveis numéricos. Identifica a aplicação (ou não)
#'     de Fipronil.}
#'
#' \item{\code{geno}}{Fator de níveis nominais. Identifica a cultivar/genótipo
#'    da observação.}
#'    
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco ao qual
#'     a observação pertence.}
#'     
#' \item{\code{peso}}{Peso de 100 espiguetas de arroz, em gramas.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 205)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.9)
#'
#' aggregate(peso ~ bloco, data = ZimmermannTb10.9, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(peso ~ geno, data = ZimmermannTb10.9, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(peso ~ geno + EPC | INS, groups = bloco, data = ZimmermannTb10.9, 
#'        type=c("p","a"),
#'        xlab="Parcelas subdivididas", ylab="Peso", 
#'        main="Experimento com espiguetas de arroz")
#' 
#' with(ZimmermannTb10.9, interaction.plot(bloco, geno, peso, lty = c(2,3), 
#'                                         col = 2:4, 
#'                                         ylab = "Espiguetas de arroz",
#'                                         xlab = "Bloco"))
NULL