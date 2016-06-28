#' @name ZimmermannTb5.11
#' @title Propor\enc{çã}{ca}o de hastes sobreviventes ao ataque de insetos
#' @description Experimento em delineamento quadrado latino onde foram
#'     tomadas quatro amostras em cada uma das parcelas (tipo de
#'     inseticida) no que diz respeito ao número total de hastes e
#'     número de hastes mortas por cupim (\emph{Sinthermes} sp.) e
#'     lagarta elasmo (\emph{Elasmopalpus} sp.). Com base nestes
#'     números, a proporção de hastes sobreviventes ao ataque de insetos
#'     foi calculada.
#' @format Um \code{data.frame} com 484 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis nominais. Indica em que linha do
#'      quadrado latino em que está a unidade experimental.}
#'
#' \item{coluna}{Fator de níveis nominais. Indica em que coluna do
#'      quadrado latino a unidade experimental está.}
#'
#' \item{inset}{Fator de níveis nominais. Indica o inseticida
#'     aplicado.}
#'
#' \item{amostra}{Fator de níveis numéricos. Identifica a amostra em
#'     cada unidade experimental.}
#'
#' \item{prop}{Proporção de hastes sobreviventes ao ataque de insetos. O
#'     Só é conhecida a proporção amostral. Não são conhecidos o
#'     númerador (número hastes sobreviventes) e denominador (total de
#'     hastes avaliadas).}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.1, pág 101)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb5.11)
#'
#' str(ZimmermannTb5.11)
#'
#' aux <- aggregate(prop ~ linha + coluna + inset,
#'                  data = ZimmermannTb5.11, FUN = mean)
#' str(aux)
#'
#' levelplot(prop ~ linha + coluna,
#'           data = aux, aspect = "iso",
#'           lbl = as.character(aux$inset),
#'           panel = function(x, y, z, lbl, ...) {
#'               panel.levelplot(x, y, z, ...)
#'               panel.text(x = x, y = y, labels = lbl, pos = 3)
#'               panel.text(x = x, y = y,
#'                          labels = sprintf("%0.2f", z),
#'                          pos = 1, cex = 0.8)
#'           })
#'
#' xyplot(prop ~ inset, data = ZimmermannTb5.11,
#'        type = c("p", "a"),
#'        xlab = "Inseticida",
#'        ylab = "Proporção de hastes sobreviventes")
#'
NULL
