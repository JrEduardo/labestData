#' @name DiasEg6.3
#' @title N\enc{ú}{u}mero Total de Frutos Colhidos e Sadios em Clones de
#'     Cacaueiro
#' @description Foram avaliados 7 clones de cacaueiros a fim determinar
#'     a correlação entre o número de frutos sadios e número de frutos
#'     colhidos.
#' @format Um \code{data.frame} com 7 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clones}}{Fator de 7 níveis qualitativos ordinais.}
#'
#' \item{\code{ntfc}}{Número total de frutos colhidos.}
#'
#' \item{\code{ntfs}}{Número total de frutos sadios.}
#'
#' }
#' @keywords AAS
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exemplo 6.3, pág. 173)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg6.3)
#' str(DiasEg6.3)
#'
#' xyplot(ntfs ~ ntfc, data = DiasEg6.3, type = c("p", "r"),
#'        ylab = "Número de frutos sadios ",
#'        xlab = "Número de frutos colhidos")
#'
NULL
