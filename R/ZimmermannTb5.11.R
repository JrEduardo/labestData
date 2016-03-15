#' @name ZimmermannTb5.11 
#' @title Dados de hastes sobreviventes ao ataque de insetos
#' @description Experimento em DQL com mais de uma observação por parcela,
#'     onde foram tomadas quatro amostras em cada uma das parcelas no que 
#'     diz respeito ao número total de hastes e número de hastes mortas 
#'     por cupim (Sinthermes sp.) e lagarta elasmo (Elasmopalpus sp.). 
#'     Com base nestes números, a proporção de hastes sobreviventes ao 
#'     ataque de insetos foi calculada. Cada parcela corresponde a um 
#'     tratamento. 
#' @format Um \code{data.frame} com 484 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis numéricos. Indica em que linha do quadrado a 
#'      UE se encontra.}
#'
#' \item{coluna}{Fator de níveis numéricos. Indica em que coluna do quadrado a
#'      UE se encontra.}
#'      
#' \item{amostra}{Fator de níveis numéricos. Indica em que amostra a
#'      UE se encontra.}
#'
#' \item{parcela}{Fator de níveis numéricos. Indica o tratamento aplicado.}
#'
#' \item{prop}{Proporção de hastes sobreviventes ao ataque de insetos.}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 101)
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#' library(reshape)
#'
#' data(ZimmermannTb5.11)
#'
#' cast(ZimmermannTb5.11, linha~coluna, value="prop", fun.aggregate = mean)
#' 
#' levelplot(prop~linha+coluna,
#'           data=ZimmermannTb5.11, aspect="iso")
#' 
#' xyplot(prop~amostra, data=ZimmermannTb5.11, type=c("p","a"), col="orange", 
#'        xlab="Amostra", ylab="Proporção de Hastes", 
#'        main="Experimento em DQL")
NULL