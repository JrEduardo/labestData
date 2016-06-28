#' @name FerreiraEg13.2
#' @title Dados Simulados para Classifica\enc{çã}{ca}o
#' @description Dados provenientes de simulação. Foram 50 dados
#'     simulados de duas populações, P1 e P2, definidas pelos modelos
#'     probabilísticos exponenciais \eqn{P1 \sim Exp(1)} e \eqn{P2 \sim
#'     Exp(0,1)}. O objetivo da simulação é explorar os métodos de
#'     classificação.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{pop}}{Fator de dois níveis que representa a qual
#'     população a observação pertence: 1 se \eqn{P1} e 2 se \eqn{P2}.}
#'
#' \item{\code{x}}{Realização da variável aleatória \eqn{P_i, \quad i =
#'     1 ou 2} conforme \code{pop}}
#'
#' }
#' @keywords AnaDisc
#' @source D. F. (2011). Estatística Multivariada (2nd ed.). Lavras, MG:
#'     Editora UFLA. (Exemplo 13.2, pág. 592-593)
#' @examples
#'
#' data(FerreiraEg13.2)
#' summary(FerreiraEg13.2)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' densityplot(~x, groups = pop, data = FerreiraEg13.2,
#'             grid = TRUE, lwd = 2,
#'             auto.key = list(
#'                 title = "População", cex.title = 1,
#'                 corner = c(0.95, 0.90), points = FALSE))
#'
#' ecdfplot(~x, groups = pop, data = FerreiraEg13.2,
#'          grid = TRUE, lwd = 2,
#'          auto.key = list(
#'              title = "População", cex.title = 1,
#'              corner = c(0.95, 0.05), points = FALSE))
#'
#' (discr <- MASS::lda(pop ~ ., data = FerreiraEg13.2))
#'
#' table(predict(discr)$class, FerreiraEg13.2$pop)
#'
NULL
