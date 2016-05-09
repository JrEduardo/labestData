#' @name PaulaEg5.5.1
#' @title Ensaio Clínico com Indivíduos Epilépticos
#' @description Dados obtidos por Diggle, Liang e Zeger, cujos
#'     resultados são oriundos de um ensaio clínico com 59 indivíduos
#'     epilépticos os quais foram aleatorizados de modo que cada um
#'     recebesse uma droga antiepiléptica denominada progabide ou
#'     placebo. Os dados de cada indivíduo consistiram de um número
#'     inicial de ataques epilépticos num período de oito semanas antes
#'     do tratamento, seguido do número de ataques em cada período de
#'     duas semanas, num total de quatro períodos após o tratamento. O
#'     interesse deste estudo é saber se a droga aplicada ao indivíduo
#'     reduz a taxa de ataques epilépticos.

#' @format Um \code{data.frame} com 295 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{indiv}}{Fator de 59 níveis que indica os indivíduos
#'     epilépticos que participaram do estudo.}
#' 
#' \item{\code{period}}{Fator que indica o período de observação (1:
#'     antes do tratamento, 2: primeiro período após o tratamento, 3:
#'     segundo período após o tratamento e 4: terceiro período após o
#'     tratamento).}
#' 
#' \item{\code{seman}}{Número de semanas em cada período.}
#' 
#' \item{\code{ataq}}{Número de ataques em cada período.}
#' 
#' \item{\code{trat}}{Tratamento aplicado em cada indivíduo, placebo ou
#'     progabide.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 5.5.1, pág. 379)
#' 
#' @references Diggle, P. J.; Liang, K. Y. e Zeger, S. L. (1994).
#'     Analysis of Longitudinal Data. Oxford University Press.
#'     Seção 8.4.
#' @examples
#' 
#' data(PaulaEg5.5.1)
#'
#' str(PaulaEg5.5.1)
#'
#' library(lattice)
#'
#' xyplot(ataq ~ period | trat, data = PaulaEg5.5.1,
#'        type = c("p", "a"),
#'        xlab = "Período",
#'        ylab = "Ataque Epiléptico")
#'        
#' aggregate(ataq ~ indiv,  data = PaulaEg5.5.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL