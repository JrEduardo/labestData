#' @name PaulaEx4.6.15
#' @title Número de Infecções de Ouvido em Recrutas Americanos
#' @description Dados referentes a um estudo realizado em 1990 com
#'     recrutas americanos onde a variável de interesse era o número de
#'     infecções de ouvido. Para associação com a infecção de ouvido,
#'     foram coletadas as seguintes informações sobre os recrutas:
#'     hábito de nadar, local em que costuma nadar, idade e sexo.
#' @format Um \code{data.frame} com 287 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{habito}}{Fator com dois níveis que indica o hábito em
#'     nadar do recruta (\code{ocasional} ou \code{frequente}).}
#' 
#' \item{\code{local}}{Fator com dois níveis que indica o local onde o
#'     recruta costuma nadar (\code{praia} ou \code{piscina}).}
#' 
#' \item{\code{idade}}{Idade do recruta, em anos categorizados em três
#'     níveis \code{15-19}, \code{20-24} e \code{25-29}.}
#' 
#' \item{\code{sexo}}{Sexo, \code{F} para feminino e \code{M} para masculino.}
#' 
#' \item{\code{ninfec}}{Número de infecções de ouvido diagnósticadas
#'     pelo próprio recruta.}
#' 
#' }
#' @keywords contagem superdispersão
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.15,
#'     pág. 346)
#'
#' @references Hand, D. J, Daly, F., Lunn, A. D., McConway, K. J.,
#'     Ostrowski, E. (1994). A Handbook of Small Data Sets. Chapman and
#'     Hall, London.
#' @examples
#'
#' data(PaulaEx4.6.15)
#' 
#' str(PaulaEx4.6.15)
#' 
#' xt <- xtabs(ninfec ~ ., data = PaulaEx4.6.15)
#' ftable(prop.table(xt))
#' plot(xt)
#' 
#' mv <- aggregate(ninfec ~ ., FUN = function(x)
#'     c(mu = mean(x), var = var(x)), data = PaulaEx4.6.15)
#' 
#' library(lattice)
#' 
#' # Relação Média Variância
#' xyplot(ninfec[, "var"] ~ ninfec[, "mu"],
#'         data = mv,
#'         ylab = "Variância amostral",
#'         xlab = "Média amostral",
#'         panel = function(x, y) {
#'             panel.xyplot(x, y, type = c("p", "r"), grid = TRUE)
#'             panel.abline(a = 0, b = 1, lty = 2)
#'         })
#' 
#' library(latticeExtra)
#' useOuterStrips(    
#'     xyplot(ninfec ~ idade | habito + local,
#'            groups = sexo,
#'            data = PaulaEx4.6.15,
#'            jitter.x = TRUE, jitter.y = TRUE,
#'            type = c("p", "g", "a"),
#'            auto.key = list(space = "right", cex.title = 1,
#'                            title = "Sexo"))
#'     )
#'
NULL
