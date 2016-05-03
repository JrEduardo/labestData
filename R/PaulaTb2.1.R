#' @name PaulaTb2.1
#' @title Desempenho de Turbinas para Motores de Avião
#' @description Resultados de um experimento conduzido para avaliar o
#'     desempenho de cinco tipos de turbina de alta velocidade para
#'     motores de avião. Foram considerados dez motores de cada tipo
#'     onde observou-se o tempo até a perda de velocidade ou,
#'     equivalentemente, duração do motor.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis.
#'     \describe{
#' 
#' \item{\code{turb}}{Fator com cinco níveis que indica o tipo de
#'     turbina.}
#' 
#' \item{\code{tempo}}{Tempo até a perda de velocidade, ou seja, duração
#'     do motor, mensurado em unidades de milhões de ciclos.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 2.1, pág. 121)
#'
#' @references Lawless, J. F. (1982). Statistical Models and Methods for
#'     Lifetime Data. John Wiley, New York.
#' @examples
#' data(PaulaTb2.1)
#' 
#' str(PaulaTb2.1)
#' 
#' # Dados no formato "largo", conforme tabela 2.1 (Paula, 2004)
#' unstack(PaulaTb2.1, tempo ~ turb)
#' 
#' aggregate(tempo ~ turb, summary, data = PaulaTb2.1)
#' 
#' library(lattice)
#' xyplot(tempo ~ turb,
#'        data = PaulaTb2.1,
#'        type = c("p", "g", "smooth"))
#' 
#' densityplot(~tempo, groups = turb, data = PaulaTb2.1,
#'             auto.key = list(corner = c(0.9, 0.9),
#'                             title = "Tipos de turbina",
#'                             cex.title = 1))
#'
NULL
