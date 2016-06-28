#' @name FerreiraEx10.11.9
#' @title Amostra de uma Popula\enc{çã}{ca}o Normal Trivariada
#' @description Dados provenientes de uma amostra de tamanho \eqn{n =
#'     30} de uma população normal trivariada, \eqn{X = (X_1, X_2, X_3),
#'     X \sim \textrm{Normal}_3(\underline{\mu}, \Sigma)}.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{x1}}{Valores na primeira dimensão (\eqn{X_1}) do vetor
#'     X.}
#'
#' \item{\code{x2}}{Valores na segunda dimensão (\eqn{X_2}) do vetor X.}
#'
#' \item{\code{x3}}{Valores na terceira dimensão (\eqn{X_3}) do vetor
#'     X.}
#'
#' }
#' @keywords TODO
#' @source D. F. (2011). Estatística Multivariada (2nd ed.). Lavras, MG:
#'     Editora UFLA. (Exercício 10.11.9, pág. 487)
#' @examples
#'
#' data(FerreiraEx10.11.9)
#' str(FerreiraEx10.11.9)
#'
#' panel.density <- function(x, ...) {
#'     usr <- par("usr")
#'     on.exit(par(usr))
#'     par(usr = c(usr[1:2], 0, 1.5))
#'     par(new = TRUE)
#'     plot(density(x), xlab = "", ylab = "", main = "", lwd = 2)
#' }
#'
#' # Relação entre as variáveis
#' # (Se [X1, X2, X3] ~ Normal => X1 ~ Normal, X2 ~ Normal, X3 ~ Normal)
#' pairs(FerreiraEx10.11.9, pch = 20, diag.panel = panel.density)
#'
#' # Componentes principais
#' (comp <- prcomp(FerreiraEx10.11.9, scale = TRUE))
#' screeplot(comp, type = "lines")
#' biplot(comp, pc.biplot = TRUE)
#'
#' # Correlação das componentes principais com as variáveis originais
#' cor(FerreiraEx10.11.9, comp$x)
#'
NULL
