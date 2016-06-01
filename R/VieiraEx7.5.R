#' @name VieiraEx7.5
#' @title Experimento Com Um Fator e Repetição Dentro dos Blocos
#' @description Dados de um experimento em delineamento de blocos
#'     casualizados com repetição de tratamentos dentro dos blocos.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Bloco ao qual a unidade experimental pertence.}
#'
#' \item{\code{tratamento}}{Tratamento aplicado nas unidades
#'     experimentais.}
#'
#' \item{\code{valor}}{Valor da resposta medida na unidade
#'     experimental.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (Exercício 7.5, pág. 85).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraEx7.5)
#' str(VieiraEx7.5)
#'
#' xtabs(~bloco + tratamento, data = VieiraEx7.5)
#'
#' xyplot(valor ~ tratamento, groups = bloco, data = VieiraEx7.5,
#'        jitter.x = TRUE, type = c("p", "a"),
#'        ylab = "Valor", xlab = "Tratamento")
#'
NULL
