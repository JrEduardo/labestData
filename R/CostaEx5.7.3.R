#' @name CostaEx5.7.3
#' @title Efeito de Adubação Nitrogenada na Cultura do Milho
#' @description Experimento instalado em delineamento inteiramente
#'     casualizado que mediu o efeito da adubação nitrogenada na
#'     produção de milho.
#' @format Um \code{data.frame} com 15 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{dose}}{Quantidade aplicada de adubação nitrogenada (kg
#'     ha\eqn{^{-1}})}
#'
#' \item{\code{rept}}{Identifica as repetições de cada dose.}
#'
#' \item{\code{prod}}{Produção de milho (ton ha\eqn{^{-1}}).}
#'
#' }
#' @keywords DIC RegSeg
#' @source Costa, J. R. (2003). Técnicas experimentais aplicadas às
#'     ciências agrárias (Documentos 163). Seropédica, RJ: Embrapa
#'     Agrobiologia. (Exemplo 5.7.3.1, pág. 95)
#' @examples
#'
#' library(lattice)
#'
#' data(CostaEx5.7.3)
#'
#' str(CostaEx5.7.3)
#'
#' xyplot(prod ~ dose, data = CostaEx5.7.3,
#'        type = c("p", "smooth", "g"),
#'        xlab = expression("Dose de nitrogênio"~(kg~ha^{-1})),
#'        ylab = expression("Produção de milho"~(ton~ha^{-1})))
#'
NULL
