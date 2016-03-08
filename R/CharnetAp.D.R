#' @name CharnetAp.D
#' @title Conjunto de Dados de Meninas Dançarinas
#' @description Medidas antropomórficas e extensões de bailarinas.
#' @format Um \code{data.frame} com 164 linhas e 6 colunas.
#' 
#' \describe{
#'
#' \item{\code{idade}}{Idade, em anos, das bailarinas.}
#'
#' \item{\code{peso}}{Peso, em quilogramas, das bailarinas.}
#'
#' \item{\code{altura}}{Altura, em centímetros, das bailarinas.}
#'
#' \item{\code{ped}}{Medida de angulação do pé direito em movimento de
#' dança clássica}
#'
#' \item{\code{pee}}{Medida de angulação do pé esquerdo em movimento de
#' dança clássica}
#'
#' \item{\code{pem}}{Média das duas medidas de angulação dos pés}
#'
#' }
#'
#' @keywords bailarinas regressão
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino, 
#' H. (2008). Análise de modelos de regressão linear com aplicações (2nd
#' ed., p. 356). Editora Unicamp (Apêndice D, página 325)
#'
#' @examples
#'
#' data(CharnetAp.D)
#' 
#' library("ggplot2")
#'
#' bailarinas <- qplot(peso, altura, data=CharnetAp.D, color=idade,
#'                     xlab="Peso", ylab="Altura",
#'                     main="Relação Peso e Altura por Idade de Jovens 
#'                     Bailarinas")
#' bailarinas
#'
#'
#' bailarinas2 <- qplot(ped, pee, data=CharnetAp.D,
#'                      xlab="Angulação do pé direito",
#'                      ylab="Angulação do pé esquerdo",
#'                      main="Diferença na angulação entre os pés")
#' bailarinas2 + geom_abline(intercept = 0, slope = 1)

NULL