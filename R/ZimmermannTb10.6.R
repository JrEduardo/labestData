#' @name ZimmermannTb10.6
#' @title Experimento com inseticida
#' @description Dados de um experimento com dois fatores, em delineamento de 
#'     parcelas divididas em blocos ao acaso. O experimento avaliou o efeito
#'     de 3 doses do inseticida Fongorene (0, 400 e 800 gramas por 100kg) em 
#'     cultivares de arroz. Mediu-se a percentagem de área foliar lesionada
#'     por brusone em cinco datas, e depois estabeleceu-se a área sob a curva 
#'     do progresso da doença (ASCPD). Os dados estão transformados em 
#'     logaritmo.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Indica a cultivar do arroz.}
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco ao qual
#'     a observação pertence.}
#'
#' \item{\code{dose}}{Fator de níveis numéricos. Identifica a dose do 
#'     fungicida usada.}
#'
#' \item{\code{ascpd}}{Área sob a curva do progresso da doença.}
#'
#' }
#' @keywords FAT DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 201)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.6)
#'
#' aggregate(ascpd ~ bloco, data = ZimmermannTb10.6, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(ascpd ~ dose, data = ZimmermannTb10.6, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(ascpd ~ dose + cult, groups = bloco, data = ZimmermannTb10.6, 
#'        type=c("p","a"),
#'        xlab="Doses e Cultivares", ylab="ASCPD", 
#'        main="Experimento com doses de Fongorene")
#' 
#' with(ZimmermannTb10.6, interaction.plot(dose, cult, ascpd, lty = c(2,3), 
#'                                         col = 2:4, ylab = "Área sob a curva",
#'                                         xlab = "Dose"))
#' with(ZimmermannTb10.6, interaction.plot(bloco, cult, ascpd, lty = c(2,3), 
#'                                         col = 4:6, ylab = "Área sob a curva",
#'                                         xlab = "Bloco"))
NULL