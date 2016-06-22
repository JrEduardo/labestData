#' @name PaulaEx2.10.7
#' @title Resistência de Vidros sob Efeito de Voltagem e Temperatura
#' @description Resultados de um experimento em que a resistência de um
#'     determinado tipo de vidro foi avaliada segundo quatro níveis de
#'     voltagem e duas temperaturas. Foram 32 avaliações referentes a 4
#'     repetições de cada tratamento (combinação dos níveis de voltagem
#'     e temperatura.)
#' @format Um \code{data.frame} com 32 observações e 3 variáveis.
#'     \describe{
#' 
#' \item{\code{tempo}}{Tempo de resistência do vidro, mensurado em
#'      horas.}
#' 
#' \item{\code{volt}}{Fator com quatro níveis de voltagem considerados,
#'     valores em quilovolts (kV).}
#' 
#' \item{\code{temp}}{Fator com dois níveis de temperatura considerados,
#'     valores em graus Celsius.}
#' 
#' }
#' @keywords positivos-assimétricos
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.7,
#'     pág. 175)
#'
#' @references Lawless, J. F. (1982). Statistical Models and Methods for
#'     Lifetime Data. John Wiley, New York.
#'
#' @examples
#' data(PaulaEx2.10.7)
#' 
#' str(PaulaEx2.10.7)
#' 
#' library(lattice)
#' xyplot(tempo ~ volt,
#'        groups = temp,
#'        data = PaulaEx2.10.7, 
#'        type = c("p", "g", "a"),
#'        auto.key = list(
#'            corner = c(0.9, 0.9),
#'            lines = TRUE,
#'            cex.title = 1,
#'            title = "Temperatura"
#'            ))
#' 
#' resumo <- aggregate(tempo ~ temp + volt,
#'                     data = PaulaEx2.10.7,
#'                     FUN = function(x) {
#'                         c("Média" = mean(x),
#'                           "D.Padrão" = sd(x),
#'                           "C.Variação" = sd(x)/mean(x),
#'                           "n" = length(x))
#'                     })
#' ftable(xtabs(tempo ~ temp + volt, data = resumo))
#' 
#' trat <- with(resumo, paste(temp, volt, sep = "-"))
#' xyplot(tempo[, "C.Variação"] ~ factor(trat),
#'        data = resumo,
#'        ylab = "Coeficiente de Variação",
#'        grid = TRUE,
#'        scales = list(x = list(rot = 45)),
#'        panel = function(x, y, ...) {
#'            panel.xyplot(x, y, ...)
#'            panel.abline(h = mean(y))
#'        })
#'
NULL
