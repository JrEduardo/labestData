#' @name PaulaTb4.2
#' @title Mortes por Câncer de Pulmão sob Efeito do Consumo de Cigarro
#' @description Dados provenientes de um estudo de acompanhamento de
#'     doutores Britânicos durante a década de 50. Neste estudo
#'     observou-se a ocorrência de mortes por câncer de pulmão segundo o
#'     consumo médio diário de cigarro e a faixa-etária.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis.
#'     \describe{
#' 
#' \item{\code{nmortes}}{Número de casos de morte por câncer de
#'     pulmão.}
#' 
#' \item{\code{tpessoas}}{Total de pessoas por ano de observação.}
#' 
#' \item{\code{cmdc}}{Consumo médio diário de cigarros, dividos em
#'     quatro níveis 0, 1-9, 10-30 ou +30 cigarros consumidos.}
#' 
#' \item{\code{idade}}{Idade, mensurada em faixas-etária de 40- 49,
#'     50-59, 60-79 e 70-80 anos.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 4.2 pág. 294)
#' @examples
#'
#' data(PaulaTb4.2)
#' 
#' str(PaulaTb4.2)
#' 
#' xtabs(nmortes ~ cmdc + idade, data = PaulaTb4.2)
#' xt <- xtabs((nmortes/tpessoas)*100 ~ cmdc + idade, data = PaulaTb4.2)
#' plot(xt)
#' 
#' library(lattice)
#' xyplot((nmortes/tpessoas)*100 ~ cmdc,
#'        xlab = "Consumo médio de cigarros",
#'        ylab = "Percentual de mortes por câncer de pulmão",
#'        groups = idade,
#'        data = PaulaTb4.2,
#'        type = c("b", "g"),
#'        auto.key = list(corner = c(0.1, 0.9), cex.title = 1,
#'                        title = "Faixa-etária"))
NULL
