#' @name PaulaEg5.5.2
#' @title Estudo sobreCondição Respiratória
#' @description Estudo discutido em Myers, Montgomery e Vining (2002)
#'     que envolve a comparação de dois tratamentos aplicados em
#'     pacientes com problemas respiratórios. Nesse estudo foi
#'     considerado um total de 56 pacientes, sendo que 27 receberam o
#'     tratamento com uma droga ativa e 29 receberam placebo.
#'     Cada paciente foi observado em quatro ocasiões em que foi medida a
#'     condição respiratória. Foram também registrados o sexo e a idade
#'     de cada paciente além da pré-existência de um nível base.

#' @format Um \code{data.frame} com 224 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{paci}}{Identificação do paciente.}
#' 
#' \item{\code{trat}}{Tratamento aplicado ao paciente (droga ativa ou
#'     placebo).}
#' 
#' \item{\code{sexo}}{Sexo do paciente.}
#' 
#' \item{\code{idade}}{Idade (em anos).}
#' 
#' \item{\code{nivel}}{Pré-existência de um nível base (ausência ou presença).}
#' 
#' \item{\code{cond}}{Condição respiratória do paciente (boa ou ruim).}
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