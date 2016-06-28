#' @name FariaQd11.9
#' @title Qualidade de Mudas em Fun\enc{çã}{ca}o do Recipiente da Esp\enc{é}{e}cie
#' @description Experimento montado no delineamento inteiramente
#'     casualizado cujo resultado é a qualidade de mudas em função do
#'     recipiente utilizado e para cada espécie cultiavda.
#' @format Um \code{data.frame} com 12 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{recip}}{Fator categórico cujos níveis representam os
#'     recipientes utilizados para o cultivo das mudas.}
#'
#' \item{\code{espécie}}{Fator categórico cujos níveis representam as
#'     espécies cultivadas.}
#'
#' \item{\code{rept}}{Inteiro que indica as repetições das combinações
#'     dos fatores.}
#'
#' \item{\code{quali}}{Resposta correspondente à qualidade das mudas.}
#'
#' }
#' @keywords DIC FAT2
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Quadro 11.9, pág 145)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd11.9)
#' str(FariaQd11.9)
#'
#' xtabs(~recip + espec, data = FariaQd11.9)
#' with(FariaQd11.9, tapply(quali, list(recip, espec), FUN = sum))
#'
#' xyplot(quali ~ recip, groups = espec, data = FariaQd11.9,
#'        type = c("p", "a"),
#'        xlab = "Recipientes", ylab = "Qualidade da muda",
#'        auto.key = list(title = "Espécie", cex.title = 1.1,
#'                        columns = 2))
#'
NULL
