#' @name PaulaEx2.10.17
#' @title Qualidade de Filme em Máquinas Fotográficas
#' @description Dados provenientes de um experimento cujo o objetivo foi
#'     avaliar a qualidade de determinado filme utilizado em máquinas
#'     fotográficas sob três condições experimentais (relacionadas à
#'     temperatura do filme). Para tal avaliação considerou-se a
#'     variável tempo de duração do filme como variável resposta e sua
#'     densidade máxima como variável de controle.
#' @format Um \code{data.frame} com 21 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{temp}}{Fator com três níveis que indicam a condição
#'     experimental do filme (temperaturas \code{72ºC}, \code{82ºC} e
#'     \code{92ºC}).}
#' 
#' \item{\code{dmax}}{Valor da densidade máxima do filme, unidade de
#'     medida não informada.}
#' 
#' \item{\code{tempo}}{Tempo de duração do filme, mensurado em horas.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.17,
#'     pág. 179)
#'
#' @references Myers, R. H., Montgomery, D. C., Vining,
#'     G. G. (2002). Generalized Linear Models: With Applications in
#'     Engineering and the Sciences. John Wiley, New York.
#'
#' @examples
#' data(PaulaEx2.10.17)
#' 
#' str(PaulaEx2.10.17)
#' 
#' library(lattice)
#' xyplot(tempo ~ dmax,
#'        groups = temp,
#'        data = PaulaEx2.10.17,
#'        type = c("p", "g", "spline"),
#'        auto.key = list(
#'            corner = c(0.95, 0.95),
#'            lines = TRUE,
#'            cex.title = 1,
#'            title = "Temperatura"
#'            ))
#'
NULL
