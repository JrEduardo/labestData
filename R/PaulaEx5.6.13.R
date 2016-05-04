#' @name PaulaEx5.6.13
#' @title Avaliação da dispersão de um pigmento particular numa pintura
#' @description Um experimento foi conduzido para avaliar a dispersão 
#'     de quatro diferentes pigmentos numa pintura. O procedimento 
#'     consistiu em preparar cada mistura e aplicá-la num painel usando 
#'     três métodos diferentes repetido três dias diferentes com a
#'     resposta em porcentagem de reflectância do pigmento.
#'     
#' @format Um \code{data.frame} com 36 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{painel}}{Número do painel que foi aplicado a tintura.}
#' 
#' \item{\code{dia}}{Repetição do experimento em três dias diferentes.}
#' 
#' \item{\code{metod}}{Três métodos diferentes utilizdos: pincel (1), 
#'     rolo(2) e spray(3).}
#' 
#' \item{\code{mistur}}{Quatro diferentes misturas do pigmento.}
#' 
#' \item{\code{reflec}}{Porcetagem de reflectância do pigmento.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exercício 5.6.13, pág. 400)
#' @examples
#' 
#' library(lattice)
#'
#' data(PaulaEx5.6.13)
#'
#' xyplot(reflec ~ mistur, groups = metod, auto.key = TRUE,
#'       type = c("p", "g", "a"), data = PaulaEx5.6.13)
#'
NULL
