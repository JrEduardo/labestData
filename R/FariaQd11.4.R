#' @name FariaQd11.4
#' @title Produ\enc{çã}{ca}o de Batatas em Fun\enc{çã}{ca}o da Calagem e Aduba\enc{çã}{ca}o
#' @description Experimento montado em delineamento inteiramente
#'     casualizado para estudar o efeito da combibação dos fatores
#'     irrigação e calagem da produção de batata.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{irri}}{Fator categórico que indica o uso ou não de
#'     irrigação para o cultivo da batata.}
#'
#' \item{\code{calc}}{Fator categórico que indica o uso ou não de
#'     calagem para o cultivo da batata.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições das
#'     combinações dos fatores acima mencionados.}
#'
#' \item{\code{result}}{Produção de batata, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC FAT2
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Quadro 11.4, pág. 134)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd11.4)
#' str(FariaQd11.4)
#'
#' xtabs(~irri + calc, data = FariaQd11.4)
#'
#' xyplot(prod ~ factor(irri), groups = calc, data = FariaQd11.4,
#'        type = c("p", "a"),
#'        xlab = "Uso de irrigação",
#'        ylab = expression("Produção de batata"~(kg~parcela^{-1})),
#'        auto.key = list(title = "Use de calagem", cex.title = 1.1,
#'                        columns = 2))
#'
NULL
