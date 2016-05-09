#' @name PaulaEg3.5.2
#' @title Efeito de extrato vegetal
#' @description Dados de um experimento conduzido para avaliar o efeito de 
#'    diversos extratos vegetais na mortalidade de embriões de Biomphalaria
#'    Glabrata. Para o extrato vegetal aquoso frio de folhas de P. Hyrsiflora
#'    consideramos um total de k = 7 grupos sendo que os n embriões do
#'    i-ésimo grupo foram submetidos a uma dose x (ppm) do extrato vegetal,
#'    observando após o vigésimo dia o número de embriões mortos.
#' @format Um \code{data.frame} com 7 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{dose}{Fator de níveis numéricos. Indica a dose de extrato vegetal
#'     aplicada.}
#'     
#' \item{mi}{Soma de estatísticas suficientes minimais, para aplicar teste
#'    de tendência.}
#'
#' \item{emb}{Número de embriões mortos observado.}
#'     
#' }
#' @keywords GLM
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.5.2 pág. 203)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.5.2)
#'
#' xyplot(emb ~ dose,  data = PaulaEg3.5.2, 
#'        type=c("p","a"),
#'        xlab="Dose", ylab="Embriões", 
#'        main="Efeito de extrato vegetal")
NULL