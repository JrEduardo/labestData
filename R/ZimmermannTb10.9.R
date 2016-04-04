#' @name ZimmermannTb10.9
#' @title Época de Plantio e Manejo de Inseticida em Cultivares de Arroz
#' @description Dados de um em delineamento de blocos completos ao
#'     acaso, em parcelas subdivididas. O experimento avaliou o efeito
#'     de 2 épocas de plantio e aplicação (ou não) do inseticida
#'     Fipronil em três cultivares de arroz. As épocas de plantio foram
#'     implantadas nas parcelas principais, o inseticida nas subparcelas
#'     e os genótipos nas sub-parcelas. Os resultados são dados de peso
#'     de 100 espiguetas de arroz, em gramas.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{\code{epoca}}{Fator de níveis numéricos. Indica a época do
#'     plantio.}
#'
#' \item{\code{inset}}{Fator de níveis numéricos. Identifica a aplicação
#'     (ou não) de Fipronil.}
#'
#' \item{\code{genot}}{Fator de níveis nominais. Identifica a
#'     cultivar/genótipo da observação.}
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco ao
#'     qual a observação pertence.}
#'
#' \item{\code{peso}}{Peso de 100 espiguetas de arroz, em gramas.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 10.9, pág. 205)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.9)
#'
#' str(ZimmermannTb10.9)
#'
#' ftable(xtabs(~genot + epoca + inset, data = ZimmermannTb10.9))
#'
#' xyplot(peso ~ genot | epoca, groups = inset,
#'        data = ZimmermannTb10.9,
#'        type = c("p", "a"),
#'        xlab = "Genótipo de arroz",
#'        ylab="Peso de 100 espigetas (g)")
#'
NULL
