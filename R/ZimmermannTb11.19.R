#' @name ZimmermannTb11.19
#' @title Produtividade de arroz irrigado em ensaio fatorial com confundimento
#' @description Dados de um experimento fatorial \eqn{2^5}, com
#'     confundimento da interação de quinta ordem (\code{M*A*C*D*I}).
#'     Estudou-se os cinco principais problemas da cultura: controle de
#'     invasoras, adubação, irrigação, controle de doenças e
#'     cultivar. Do experimento original, está-se utilizando apenas a
#'     primeira repetição, e a interação de quarta ordem (5 fatores) foi
#'     confundida com blocos.  Os dados da produtividade do arroz estão
#'     em kg/ha, e M = manejo da irrigação (0 = permanente e 1 =
#'     intermitente), A = adubação (0 = 30kg/ha e 1 = 60kg/ha de N), C =
#'     cultivar (0 = IAC 435 e 1 = IR 841-63-5-1-9-33), D = controle de
#'     doenças (0 = sem controle e 1 = aplicação de Manzate) e I =
#'     controle de invasoras (0 = Stam F-34 e 1 = Ronstar).
#' @format Um \code{data.frame} com 32 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco da
#'     repetição.}
#'
#' \item{\code{prod}}{Produtividade de arroz irrigado.}
#' 
#' \item{\code{prod}}{Produtividade de arroz irrigado.}
#' 
#' \item{\code{inv}}{Nível do controle de invasoras.}
#'
#' \item{\code{adub}}{Nível da adubação.}
#' 
#' \item{\code{irrig}}{Nível da irrigação.}
#' 
#' \item{\code{doen}}{Nível do controle de doenças.}
#' 
#' \item{\code{cult}}{Cultivar da planta.}
#' 
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 237)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.19)
#'
#' str(ZimmermannTb11.19)
#'
#' xyplot(prod ~ bloco, data = ZimmermannTb11.19,
#'        type = c("p", "a"),
#'        xlab = "Bloco", ylab = "Produção",
#'        main = "Fatorial com confundimento"))
NULL
