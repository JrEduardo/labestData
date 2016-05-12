#' @name PaulaEg5.5.2
#' @title Estudo sobre Condição Respiratória
#' @description Estudo discutido em Myers, Montgomery e Vining (2002)
#'     que envolve a comparação de dois tratamentos aplicados em
#'     pacientes com problemas respiratórios. Nesse estudo foi
#'     considerado um total de 56 pacientes, sendo que 27 receberam o
#'     tratamento com uma droga ativa e 29 receberam placebo.
#'     Cada paciente foi observado em quatro ocasiões em que foi medida
#'     a condição respiratória. Foram também registrados o sexo e a
#'     idade de cada paciente além da pré-existência de um nível base.

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
#' \item{\code{nivel}}{Pré-existência de um nível base (ausência ou
#'     presença).}
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
#' library(latticeExtra)
#'
#' tb <- with(PaulaEg5.5.2, table(nivel, trat, sexo, cond))
#' ftable(tb)
#' ftable(prop.table(tb))
#'
#' useOuterStrips(
#'     barchart(prop.table(tb), stack = FALSE,
#'              xlab = "",
#'              scales = list(x = list(relation = "free")),
#'              between = list(x = 0.5),
#'              auto.key = list(
#'                  title = "Condição Respiratória",
#'                  columns = 2, cex.title = 1)
#'     )
#' )
#'            
NULL