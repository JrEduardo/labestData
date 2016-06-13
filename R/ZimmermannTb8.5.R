#' @name ZimmermannTb8.5
#' @title Produção de Grãos de Feijão em BAF
#' @description Dados de um estudo em desenho de blocos aumentados de Federer, 
#'     com dezoito blocos, cada um com quatro testemunhas, tratamentos 1 a 4 e 
#'     12 linhagens, resultando num total de 216 linhagens. Os dados 
#'     referem-se a produção de grãos de feijão em kg/ha.
#'     
#' @format Um \code{data.frame} com 90 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco da 
#'     repetição}
#'     
#' \item{\code{trat}}{Fator de níveis numericos. Identifica o tratamento 
#'     aplicado.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão (ka ha\eqn{^{-1}}).}
#'
#' }
#' @keywords BAF
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 8.5, pág 158)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb8.5)
#'
#' str(ZimmermannTb8.5)
#'
#' xyplot(prod ~ bloco, data = ZimmermannTb8.5,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Blocos",
#'        ylab = expression("Grãos de Feijão"~(kg~ha^{-1})),
#'        main = "Blocos Aumentados de Federer",
#'        scales = list(x = list(rot = 90)))
#' 
#' aggregate(prod ~ bloco, data = ZimmermannTb8.5,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
