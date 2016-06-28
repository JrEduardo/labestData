#' @name ZimmermannTb9.22
#' @title Fungicidas e Pol\enc{í}{i}mero na Infec\enc{çã}{ca}o de \emph{Fusarium} em
#'     Sementes
#' @description Resultados de um experimento fatorial com tratamentos
#'     adicionais \eqn{3 \times 3 + 2} que estudou o número de sementes
#'     infectadas por fusaruim em função aplicação de fungicidas às
#'     sementes e do uso associado de um polímero depois do fungicida ou
#'     misturado a ele. Os dois tratamentos adicionais era a aplicação
#'     isolada do polímero e uma testemunha sem qualquer tratamento. O
#'     experimento foi instalado em delineamento inteiramente
#'     casualizado.
#' @format Um \code{data.frame} com 55 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator cetegórico que identifica as celas
#'     experimentais do fatorial com tratamentos adicionais.}
#'
#' \item{\code{fung}}{Fator categórico que identifica os níveis dos
#'     fungicidas aplicados às sementes. Benlate, Captam e Derosal são
#'     os fungicidas. O polímero puro e uma testemunha também foram
#'     investigados.}
#'
#' \item{\code{aplic}}{Fator categórico que indica a forma de aplicação
#'     do fungicida em relação ao polímero: antes do polímero, misturado
#'     com o polímero ou o fungicída puro.}
#'
#' \item{\code{nsi}}{Número de sementes infectadas por \emph{fusarium}
#'     de um total de 40 sementes.}
#'
#' }
#' @keywords DIC binomial
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.22, pág. 188)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb9.22)
#' str(ZimmermannTb9.22)
#'
#' xtabs(~fung + aplic, ZimmermannTb9.22)
#'
#' xyplot(nsi/40 ~ trat, data = ZimmermannTb9.22,
#'        xlab = "Tratamentos",
#'        ylab = "Proporção de sementes infectadas",
#'        scales = list(x = list(rot = 90)))
#'
#' # Gráfico da função arco seno da raíz.
#' curve(asin(sqrt(x)), from = 0, to = 1)
#'
#' # Transformação arco seno da raíz quadrada da proporção.
#' asin(sqrt(ZimmermannTb9.22$nsi/40))
#'
#' # A transformação não elimina os zeros.
#' xyplot(asin(sqrt(nsi/40)) ~ trat, data = ZimmermannTb9.22,
#'        xlab = "Tratamentos",
#'        ylab = "Arco seno da raíz da proporção",
#'        scales = list(x = list(rot = 90)))
#'
NULL
