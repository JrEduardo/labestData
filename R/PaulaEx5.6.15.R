#' @name PaulaEx5.6.15
#' @title Ensaio clínico em pacientes com artrite
#' @description Ensaio clínico em que 20 pacientes com artrite  que 
#'     foram aleatorizados de modo que 10 receberam o medicamento
#'     auronofin e os outros 10 receberam placebo. Foram observadas as
#'     variáveis explicativas sexo, idade, tipo do tratamento. Os 
#'     pacientes foram consultados em 4 ocasiões e avaliado a respeito
#'     do seu estado.
#' @format Um \code{data.frame} com 80 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{pacient}}{Identificação do paciente.}
#' 
#' \item{\code{period}}{Período que o paciente foi consultado, em quatro
#'     ocasiões sendo 1 início do mês, 2 após 1 mês, 3 após 2 meses e 
#'     4 após 3 meses.}
#' 
#' \item{\code{sexo}}{Sexo semdo 1 masculino e 0 feminino.}
#' 
#' \item{\code{idade}}{Idade em anos.}
#' 
#' \item{\code{trat}}{Tratamento aplicado sendo 0 placebo e 1 Auronofin.}
#' 
#' \item{\code{result}}{Resultado a respeito do seu estado avaliado 
#'     do paciente, sendo 1 bom, e 0 regular ou ruim.}
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
#' data(PaulaEx5.6.15)
#' 
#' mosaicplot(result ~ trat, data = PaulaEx5.6.15)
#' mosaicplot(result ~ sexo, data = PaulaEx5.6.15)
NULL
