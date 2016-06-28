#' @name PaulaEg2.4.3
#' @title Valores Pagos de Seguros sob Influ\enc{ê}{e}ncia de Representa\enc{çã}{ca}o Legal
#' @description Dados referentes aos valores pagos de seguros
#'     individuais por danos com acidentes pessoais no período de
#'     janeiro de 1998 a junho de 1999 (18 meses). O estudo completo
#'     (Jong e Heller, 2008) contém o acompanhamento dos seguros desde
#'     1989. No período considerado aqui foram pagos 769 seguros, sendo 
#'     armazenadas as informações: se houve representação
#'     legal, tempo operacional para pagamento e mês em que ocorreu o
#'     acidente.
#' @format Um \code{data.frame} com 769 observações e 4 variáveis.
#'     \describe{
#' 
#' \item{\code{valor}}{Valor pago do seguro, em dólares australianos.}
#' 
#' \item{\code{rl}}{Fator com dois níveis que indica, se no seguro em
#'     análise, há representação legal do indivíduo.}
#' 
#' \item{\code{mes}}{Fator com 15 níveis que indica o mês de ocorrência
#'     do acidente. Os níveis deste fator são codificados e não
#'     informou-se quais os meses que eles representam.}
#' 
#' \item{\code{to}}{Tempo operacional para pagamento do seguro. Essa
#'     variável assume valores de 0,1 a 31,9, pois são considerados
#'     apenas os 18 últimos meses do estudo.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 2.4.3, pág. 136)
#'
#' @references De Jong, P., Heller, G. Z. (2008). Generalized linear
#'     models for insurance data (Vol. 136). Cambridge: Cambridge
#'     University Press. 
#' @examples
#' data(PaulaEg2.4.3)
#' 
#' str(PaulaEg2.4.3)
#' 
#' # Número de seguros pagos em cada combinação de mês e
#' # representação legal
#' ftable(table(PaulaEg2.4.3[, c("mes", "rl")]))
#' table(PaulaEg2.4.3[, c("rl")])
#' 
#' library(lattice)
#' 
#' xyplot(log(valor) ~ to | rl,
#'        data = PaulaEg2.4.3,
#'        type = c("p", "g", "smooth"),
#'        lwd = 2,
#'        strip = strip.custom(
#'            strip.names = TRUE,
#'            var.name = "Representação Legal",
#'            sep = ": "))
#' 
#' densityplot(~valor | rl,
#'             data = PaulaEg2.4.3,
#'             grid = TRUE,
#'             scales = list(x = list(relation = "free")),
#'             strip = strip.custom(
#'                 strip.names = TRUE,
#'                 var.name = "Representação Legal",
#'                 sep = ": "))
#'
NULL
