#' @name PaulaEx5.6.15
#' @title Ensaio cl\enc{í}{i}nico em pacientes com artrite
#' @description Ensaio clínico em que 20 pacientes com artrite 
#'     foram aleatorizados, de modo que 10 receberam o medicamento
#'     auronofin e os outros 10 receberam placebo. São consideradas como
#'     variáveis explicativas sexo e idade, além do tipo do tratamento. Os 
#'     pacientes foram consultados e avaliados em 4 ocasiões.
#'     
#' @format Um \code{data.frame} com 80 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{pacient}}{Identificação do paciente.}
#' 
#' \item{\code{period}}{Momento em que o paciente foi avaliado (1 = início 
#' do mês, 2 = após 1 mês, 3 = após 2 meses e 4 = após 3 meses.}
#' 
#' \item{\code{sexo}}{Sexo (1 = masculino e 0 = feminino).}
#' 
#' \item{\code{idade}}{Idade (em anos).}
#' 
#' \item{\code{trat}}{Tratamento aplicado placebo ou Auronofin).}
#' 
#' \item{\code{result}}{Avaliação do paciente classificada em 
#' bom e regular ou ruim.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exercício 5.6.14, pág. 401)
#' 
#' @references Myers, R.H.; Montgomery, D. C. e Vining, G. G. (2002).
#' Generalized Linear Models: With Applications in Engineering and the 
#' Sciences. John Wiley, New York.
#' 
#' @examples
#' 
#' library(lattice)
#' 
#' data(PaulaEx5.6.15)
#' 
#' barchart(table(PaulaEx5.6.15$result,PaulaEx5.6.15$trat, PaulaEx5.6.15$period), 
#'          auto.key = list(space="top", 
#'          columns = 4, cex.title = 1, rectangles = TRUE, points=FALSE, 
#'          title = "Período"),
#'          scales = list(y = list(relation = "free"),
#'          x = list(alternating = FALSE)),
#'          horizontal = FALSE, beside = FALSE, stack = FALSE, 
#'          xlab = "Resultado", ylab = "Frequência absoluta")
#'
NULL
