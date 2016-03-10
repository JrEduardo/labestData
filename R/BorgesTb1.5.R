#' @name BorgesTb1.5
#' @title Valores de CTC direta e indereta
#' 
#' @description O experimento foi realizado em quatro blocos, sendo 
#'  planejado para estudar o efeito da calagem sobre a CTC 
#'  (Capacidade de troca catiônica) do solo medida por dois métodos 
#'  diferentes.
#' 
#'  Os valores foram medidos 18 meses após a calagem incorporada ao
#'  solo, segundo a dose de calcário, medida em tonelados por hectare 
#'  (t/ha).
#' 
#' @format Um \code{data.frame} de 32 linhas e 4 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{bloco}}{Indica a qual bloco a amostra pertence.}
#'     
#'     \item{\code{dose}}{Indica a dose usada na referida observação.}
#'     
#'     \item{\code{direta}}{Indica se é valor de CTC direta (1) ou 
#'     indireta (0).}
#'     
#'     \item{\code{ctc}}{É o valor observado de CTC, medido em 
#'     mmol_{c}/kg.}
#' 
#' }
#' 
#' @keywords CTC solo
#' 
#' @source Borges, C. G., Demétrio, & Zocchi, S. S. (2011). 
#' Modelo de Regressão. Piracicaba, SP: USP.
#' 
#' @examples 
#' 
#' ## Carregando pacotes necessários -----------------------------------
#' 
#' library(lattice)
#' 
#' ## Carregando o banco de dados --------------------------------------
#' 
#' data(BorgesTb1.5)
#' 
#' ## Plotando o gráfico -----------------------------------------------
#' 
#' xyplot(ctc ~ dose, data = BorgesTb1.5,
#'     main = "Dose VS CTC",
#'     xlab = "Dose",
#'     ylab = "CTC",
#'     panel = function(x, y) {
#'         panel.xyplot(x, y)
#'         panel.abline(lm(y ~ x), col = 3)
#'     })
#' 
NULL