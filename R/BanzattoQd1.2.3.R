#' @name BanzattoQd1.2.3
#' @title Diâmetro à altura do peito de \emph{Eucalyptus saligna}
#' @description Valores de diâmentro à altura do peito (DAP, cm) de uma
#'     amostra aleatória de árvores de \emph{Eucalyptus saligna} de um
#'     povoamento com 15 anos de idade.
#' @format Um vetor numérico com 20 elementos.
#' @keywords amostra
#' @source Banzatto, D. A., & Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (pg 3)
#' @examples
#' hist(BanzattoQd1.2.3, prob = TRUE,
#'      xlab = expression(Diâmetro~à~altura~do~peito~(cm)),
#'      ylab = "Densidade", main = NULL)
#' lines(density(BanzattoQd1.2.3), lwd = 2)
#' rug(BanzattoQd1.2.3)
#'
#' boxplot(BanzattoQd1.2.3,
#'         ylab = expression(Diâmetro~à~altura~do~peito~(cm)))
#'
#' mean(BanzattoQd1.2.3)
#' sd(BanzattoQd1.2.3)
#' fivenum(BanzattoQd1.2.3)
#'
NULL
