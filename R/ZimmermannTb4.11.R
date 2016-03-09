#' @name ZimmermannTb4.11
#' @title Estudo sobre alturas médias de perfilhos
#' @description Dados de um ensaio com dez tratamentos, quatro blocos e 
#'              cinco amostras tomadas ao acaso, de alturas médias de 
#'              perfilhos em plantas, medidos em cm.  
#' @format Um \code{data.frame} com 200 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais. Tratamento aplicado em plantas.}
#'
#' \item{amostra}{Fator de níveis numéricos. Identifica à qual amostra 
#'                pertence a observação.}
#'
#' \item{bloco}{Número inteiro que identifica o bloco da observação.}
#'
#' \item{prod}{Altura média de perfilhos.}
#'
#' }
#' @keywords DBC perfilhos plantas altura
#' @source  Zimmermann, F.J.(2004), Estatística aplicada à pesquisa 
#'          agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa 
#'          Arroz e Feijão. (pg 79)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb4.11)
#' 
#' levelplot(prod~amostra+bloco,
#'           data=ZimmermannTb4.11, aspect="iso")
#' 
#' xyplot(prod ~ trat | amostra, groups = bloco, data = ZimmermannTb4.11,
#'        type=c("p","a"),
#'        xlab = "Tratamentos",
#'        ylab = "Altura média de perfilhos")
#' 
#' aggregate(prod ~ trat, data = ZimmermannTb4.11, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL