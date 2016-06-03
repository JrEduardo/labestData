#' @name PaulaEx2.10.20
#' @title Estudo de Apólices de Seguros de Veículos
#' @description Dados de uma amostra aleatória de 996 apólices de
#'     seguros de veículos referentes ao período de 2004-2005, extraída
#'     de Jong e Heller (2008). Foram 9 variáveis observadas na amostra
#'     dentre as quais o número de sinistros e o custo total dos
#'     sinistros que são, naturalmente, as variáveis de interesse. O
#'     objetivo do estudo é relacionar o custo médio de um sinistro
#'     (razão entre o custo total e o número de sinistros) com as demais
#'     variáveis do estudo (variáveis da apólice, que compreendem
#'     informações do veículo e do principal condutor).
#' @format Um \code{data.frame} com 996 observações e 9 variáveis.
#'     \describe{
#' 
#' \item{\code{valorv}}{Valor do veículo, em dez mil dólares
#'     australianos.}
#' 
#' \item{\code{expos}}{Exposição do veículo (unidade de medida não
#'     informada).}
#' 
#' \item{\code{tipov}}{Tipo de veículo (fator com onze níveis).}
#' 
#' \item{\code{idadev}}{Idade do veículo (fator com quatro níveis).}
#' 
#' \item{\code{sexoc}}{Sexo do principal condutor, fator com dois níveis
#'     \code{M} masculino e \code{F} feminino.}
#' 
#' \item{\code{areac}}{Área de residência do principal condutor (fator
#'     com seis níveis).}
#' 
#' \item{\code{idadec}}{Idade do principal condutor (fator com seis
#'     níveis).}
#' 
#' \item{\code{nsinis}}{Número de sinistros no período.}
#' 
#' \item{\code{csinis}}{Custo total dos sinistros, em dólares
#'     australianos.}
#' 
#' }
#' @keywords positivo-assimétrico quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.20,
#'     pág. 181; exercício 5.6.3, pág. 396)
#'
#' @references De Jong, P., & Heller, G. Z. (2008). Generalized linear
#'     models for insurance data (Vol. 136). Cambridge: Cambridge
#'     University Press.
#'
#' @examples
#' data(PaulaEx2.10.20)
#' 
#' str(PaulaEx2.10.20)
#' 
#' # Variável de interesse - custo médio de um sinistro
#' PaulaEx2.10.20$cmsinis <- with(PaulaEx2.10.20, csinis/nsinis)
#' PaulaEx2.10.20 <- PaulaEx2.10.20[, -c(8:9)]
#' 
#' # Separando as covariáveis numéricas
#' index <- sapply(PaulaEx2.10.20, is.numeric)
#' 
#' # Frequências dos níveis das variáveis categóricas
#' par(mfrow = c(2, 3), las = 2, mar = c(4, 3, 3, 1))
#' sapply(PaulaEx2.10.20[, !index], function(x) plot(table(x)))
#' 
#' # Dispersão das variáveis numéricas
#' library(lattice)
#' splom(PaulaEx2.10.20[, index],
#'       type = c("p", "g", "smooth"),
#'       lwd = 2, col.line = 1)
#'
NULL
