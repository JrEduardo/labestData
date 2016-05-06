#' @name PaulaEg5.5.2
#' @title Condição Respiratória
#' @description Estudo discutido em Myers, Montgomery e Vining (2002)
#'     que envolve a comparação de dois tratamentos aplicados em
#'     pacientes com problemas respiratórios. Neste estudo foi
#'     considerado um total de 56 pacientes e destes 27 receberam o
#'     tratamento com uma droga ativa e 29 pacientes receberam placebo.
#'     Cada paciente foi observado em quatro ocasiões em que mediu-se a
#'     condição respiratória. Foram também observados o sexo e a idade
#'     de cada paciente além da pré-existência de um nível base.

#' @format Um \code{data.frame} com 224 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{paci}}{Fator com 56 níveis que indica o paciente
#'     participante do estudo.}
#' 
#' \item{\code{trat}}{Fator com 2 níveis (droga ativa e placebo) que
#'     indica o tratamento aplicado ao paciente.}
#' 
#' \item{\code{sexo}}{Fator com 2 níveis que indica o sexo do paciente.}
#' 
#' \item{\code{idade}}{Fator com 30 níveis que indica a idade (em anos)
#'     do paciente.}
#' 
#' \item{\code{nivel}}{Fator com 2 níveis (ausência ou presença) que
#'     indica a pré-existência de um nível base.}
#' 
#' \item{\code{cond}}{Fator com 2 níveis (boa e ruim) que indica a
#'     condição respiratória do paciente.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 5.5.2, pág. 385)
#' 
#' @references Myers, R.H.; Montgomery, D. C.; Vining, G. G. (2002).
#'     Generalized Linear Models: With Applications in Engineering and
#'     the Sciences. John Wiley, New York. Seção 6.5.
#' @examples
#'
#' data(PaulaEg5.5.2)
#'
#' str(PaulaEg5.5.2)
#'
#' mosaicplot(cond ~ sexo, data = PaulaEg5.5.2,
#'            main = NULL,
#'            xlab = "Condição Respiratória",
#'            ylab = "Sexo")
#'
#' mosaicplot(cond ~ trat, data = PaulaEg5.5.2,
#'            main = NULL,
#'            xlab = "Condição Respiratória",
#'            ylab = "Tratamento")
#'            
#' library(lattice)
#'
#' bwplot(cond ~ paci, data = PaulaEg5.5.2)
#' bwplot(cond ~ idade, data = PaulaEg5.5.2)
#'            
NULL