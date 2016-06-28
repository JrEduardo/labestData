#' @name BanzattoQd5.2.1
#' @title Peneira e Densidade de Plantio na Produ\enc{çã}{ca}o de Amendoim
#' @description Dados de um experimento fatorial que estudou o efeito de
#'     densidade de plantio e tamanho da peneiras comerciais, de crivos
#'     circulares, para classificação das sementes da produção de
#'     amendoim (\emph{Arachis hypogaea} L.) variedade Tatu V 53. O
#'     experimento foi instalado em delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{densid}}{Densidade de plantio expresso em número de
#'     plantas por metro linear de cultivo.}
#'
#' \item{\code{peneira}}{Diâmetro dos crivos circulares da peneira usada
#'     para classificar as sementes (18/64, 20/64 e 22/64 polegadas).}
#'
#' \item{\code{bloco}}{Fator considerado para garantir controle local.}
#'
#' \item{\code{prod}}{Produção média de amendoim em vagens (g) por
#'     planta.}
#'
#' }
#'
#' Cada parcela tinha 4 linhas de cultivo, espaçadas de 50 cm, com 7
#' metros de comprimento, resultando em uma área de 14 m\eqn{^2}. As
#' duas linhas externas de cada parcela e meio metro de cada extremidade
#' das linhas centrais foram consideradas como bordadura, fazendo-se as
#' avaliações apenas no comprimento restante das duas linhas centrais, o
#' que resultou em uma área útil de 6 m\eqn{^2}.
#' @keywords DBC FAT2
#' @source Banzatto, D. A., Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (Quadro 5.2.1,
#'     pág. 102)
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd5.2.1)
#'
#' addmargins(with(BanzattoQd5.2.1,
#'                 tapply(X = prod,
#'                        INDEX = list(interaction(peneira, densid),
#'                                     bloco),
#'                        FUN = sum)))
#'
#' xyplot(prod ~ densid, data = BanzattoQd5.2.1,
#'        groups = peneira, type = c("p", "a"),
#'        auto.key = list(title = "Peneira", cex.title = 1,
#'                        columns = 1, corner = c(0.05, 0.95)),
#'        xlab = "Densidade de plantio (plantas/metro linear)",
#'        ylab = "Produção média de amendoim em vagem (g/planta)")
#'
NULL
