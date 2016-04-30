#' @name PaulaEx2.10.19
#' @title Estudo de Leucemia sob Característica Morfológica nas Células
#'     Brancas 
#' @description Dados provenientes de um estudo em que pacientes com
#'     leucemia foram classificados segundo a ausência ou presença de
#'     uma característica morfológica nas células brancas. O objetivo do
#'     estudo foi avaliar essa característica morfológica a partir do
#'     tempo de sobrevivência.
#' @format Um \code{data.frame} com 32 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{ncel}}{Inteiro que representa o número de células brancas
#'     na amostra do paciente.}
#' 
#' \item{\code{carac}}{Fator com dois níveis que representa a presença
#'     (\code{AG positivo}) ou ausência (\code{AG negativo}) da
#'     característica morfológica.}
#' 
#' \item{\code{tempo}}{Tempo de sobrevivência do paciente, em semanas.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 2.10.19,
#'     pág. 180)
#'
#' @references Feigl, P., Zelen, M. (1965). Estimation of exponential
#'     survival probabilities with concomitant information. Biometrics
#'     21, 826-838.
#'
#' @examples
#' data(PaulaEx2.10.19)
#' 
#' str(PaulaEx2.10.19)
#' 
#' library(latticeExtra)
#' xyplot(tempo ~ ncel,
#'        groups = carac,
#'        data = PaulaEx2.10.19,
#'        type = c("p", "g", "spline"),
#'        scales = list(x = list(log = 10)),
#'        xscale.components = xscale.components.logpower,
#'        auto.key = list(
#'            corner = c(0.95, 0.95),
#'            lines = TRUE,
#'            cex.title = 1,
#'            title = "Característica morfológica "
#'            ))
#'
NULL
