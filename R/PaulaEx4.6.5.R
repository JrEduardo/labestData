#' @name PaulaEx4.6.5
#' @title Estudo Gerontológico do Número de Quedas
#' @description Dados provenientes de um estudo prospectivo com 100
#'     indivíduos de pelo menos 65 anos de idade em boas condições
#'     físicas onde se avaliou o número de quedas num período de seis
#'     meses registrando, também, as informações: tipo de intervenção
#'     realizada, sexo e os escores de balanço e força. O objetivo do
#'     estudo é tentar relacionar o número médio de quedas com as
#'     variáveis explicativas coletadas.
#' @format Um \code{data.frame} com 100 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{nquedas}}{Número de quedas no período de seis meses.}
#' 
#' \item{\code{interv}}{Fator com dois níveis que indica a intervenção
#'     realizada (\code{E}: somente educação, \code{EF}: educação e
#'     exercícios físicos.)}
#' 
#' \item{\code{sexo}}{Fator com dois níveis que indica o sexo do
#'     indivíduo (\code{F}: feminino e \code{M}: masculino).}
#' 
#' \item{\code{balan}}{Escore do balanço do indivíduo, escala de 0 a 100.}
#' 
#' \item{\code{forca}}{Escore da força do indivíduo, escala de 0 a 100.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.5 pág. 342)
#'
#' @references Neter, J., Kutner, M. H., Nachtsheim, C. J., Wasserman,
#'     W. (1996). Applie Linear Regression Models (3tr ed.). Irwin,
#'     Illinois.
#' @examples
#'
#' data(PaulaEx4.6.5)
#' 
#' str(PaulaEx4.6.5)
#' 
#' library(lattice)
#' 
#' xyplot(nquedas ~ balan + forca | interv,
#'        groups = sexo,
#'        data = PaulaEx4.6.5,
#'        xlab = "Escore",
#'        type = c("p", "g", "smooth"),
#'        scales = list(x = list(rot = 45, relation = "free")),
#'        auto.key = list(cex.title = 1, columns = 2,
#'                        title = "Sexo"))
#' 
#' splom(~ PaulaEx4.6.5[, c("nquedas", "balan", "forca")],
#'       type = c("p", "smooth"))
#'
NULL
