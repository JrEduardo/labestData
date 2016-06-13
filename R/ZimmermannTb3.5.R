#' @name ZimmermannTb3.5
#' @title Produção de Grãos de Arroz Irrigado 
#' @description Dados de um estudo sobre adubação nitrogenada na cultura de 
#'     arroz irrigado. Foram testadas quatros formas de aplicação do adubo:
#'     1 = 80 kg/ha no plantio; 2 = 40 kg/ha 40 dias no plantio após a 
#'     emergência (DAE); 3 = 13.2 kg/ha no plantio e 66.8 kg/ha aos 40 DAE; 
#'     e 4 = 13.2 kg/ha no plantio e 33.4 kg/ha aos 40 e 60 DAE. O experimento
#'     teve oito repetições.    
#' @format Um \code{data.frame} com 32 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator de níveis numericos. Identifica a repetição da
#'    observação.}
#'
#' \item{\code{trat}}{Fator de níveis numéricos. Identifica o tratamento 
#'     aplicado.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz irrigado (ka ha\eqn{^{-1}}).}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 3.5, pág 55)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb3.5)
#'
#' str(ZimmermannTb3.5)
#'
#' xyplot(prod ~ rept | trat, data = ZimmermannTb3.5,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Repetições",
#'        ylab = expression("Grãos de Arroz"~(kg~ha^{-1})),
#'        main = "Produção de Grãos de Arroz",
#'        scales = list(x = list(rot = 90)))
#' 
#' aggregate(prod ~ trat, data = ZimmermannTb3.5,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
