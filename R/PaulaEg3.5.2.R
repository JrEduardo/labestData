#' @name PaulaEg3.5.2
#' @title Efeito de extrato vegetal
#' @description Dados de um experimento conduzido para avaliar o efeito de 
#'    diversos extratos vegetais na mortalidade de embriões de 
#'    \emph{Biomphalaria Glabrata}. Para o extrato vegetal aquoso frio de 
#'    folhas de \emph{P. Hyrsiflora} foram consideradas 7 amostras, sendo
#'    que em cada uma delas 50 embriões foram submetidos a uma particular 
#'    dose do extrato vegetal, registrando-se, após o vigésimo dia, o 
#'    número de embriões mortos.
#'    
#' @format Um \code{data.frame} com 2 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{dose}{Dose de extrato vegetal aplicada (em partes por milhão).}
#'
#' \item{emb}{Número observado de embriões mortos.}
#'     
#' }
#' @keywords GLM binarios
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.5.2 pág. 203)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.5.2)
#'
#' str(PaulaEg3.5.2)
#' 
#' barchart(emb/(sum(emb)) ~ dose,  data = PaulaEg3.5.2, 
#'          stack=TRUE, col= "lightblue",
#'          xlab="Dose (em ppm)", ylab="Proporção de embriões mortos", 
#'          main="Efeito de extrato vegetal")
#' 
NULL