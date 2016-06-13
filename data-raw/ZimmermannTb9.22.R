#' @name ZimmermannTb9.22
#' @title Sementes Infectadas com Fusarium
#' @description Dados de um estudo em delineamento completamente ao acaso, num
#'     esquema fatorial 3x3 + 2. Os tratamentos são: F1 = Benlate, F2 = Captam, 
#'     F3 = Derosal, Puro = aplicação de um polímero após a aplicação do 
#'     fungicida e Mistura = aplicação do fungicida em mistura com o polímero. 
#'     Os dados referem-se ao número de sementes infectadas com \emph{Fusarium},
#'     em amostras de 40 sementes, e sua transformação. 
#'     
#' @format Um \code{data.frame} com 55 observações e 4 variáveis
#'
#' \describe{
#'     
#' \item{\code{trat}}{Fator de níveis nominais. Identifica o tratamento 
#'     aplicado.}
#'     
#' \item{\code{rept}}{Fator de níveis numéricos. Identifica a repetição da
#'     observação.}
#'
#' \item{\code{sem}}{Produção de grãos de feijão (ka ha\eqn{^{-1}}).}
#' 
#' \item{\code{arcsen}}{Transformação da variável resposta 
#'     (arcseno/(raiz(número)/40)).}
#'
#' }
#' @keywords DIC fatorial
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.22, pág 188)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb9.22)
#'
#' str(ZimmermannTb9.22)
#'
#' xyplot(sem ~ trat | rept, data = ZimmermannTb9.22,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Tratamentos",
#'        ylab = "Quantidade de Sementes",
#'        main = "Sementes Infectadas com Fusarium",
#'        scales = list(x = list(rot = 90)))
#' 
#' aggregate(sem ~ rept, data = ZimmermannTb9.22,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(sem ~ trat, data = ZimmermannTb9.22,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
