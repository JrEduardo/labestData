#' @name PaulaTb4.12
#' @title Associação entre Renda e Satisfação no Emprego
#' @description Dados resultantes de uma pesquisa com 901 indivíduos
#'     classificados segundo sua renda anual e grau informado de
#'     satisfação no emprego. O interesse no estudo é relacionar o
#'     número de indivíduos conforme renda anual e satisfação no
#'     emprego.
#' @format Um \code{data.frame} com 16 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{renda}}{Fator com quatro níveis representando a renda do
#'     indivíduo. Com unidades de mil USD os fatores são: menor que 6
#'     (\code{<6}), entre 6 e 12 (\code{6-15}), entre 15 e 25
#'     (\code{15-25}) e maior que 25 (\code{>25}).}
#' 
#' \item{\code{satis}}{Fotor com quatro níveis que representa o grau de
#'     satisfação do indíviduo no emprego (\code{alto}, \code{bom},
#'     \code{médio} e \code{baixo}).}
#' 
#' \item{\code{nind}}{Número de indivíduos na combinação das variáveis
#'     \code{renda} e \code{satis}.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 4.12 pág. 331)
#'
#' @references Agresti, A. (1990). Categorical Data Analysis. John
#'     Wiley, New York.
#' @examples
#'
#' data(PaulaTb4.12)
#' 
#' str(PaulaTb4.12)
#' 
#' xt <- xtabs(nind ~ ., data = PaulaTb4.12)
#' plot(xt)
#' 
#' library(lattice)
#' xyplot(nind ~ renda,
#'        groups = satis,
#'        data = PaulaTb4.12,
#'        type = c("p", "a", "g"),
#'        auto.key = list(
#'            space = "right", cex.title = 1,
#'            title = "Grau de\nsatisfação"))
#'
NULL
