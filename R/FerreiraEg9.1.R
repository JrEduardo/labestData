#' @name FerreiraEg9.1
#' @title Teores de Areia e Argila para Diferentes Usos da Terra na
#'     Amaz\enc{ô}{o}nia
#' @description Os dados referem-se a média de vários pontos amostrais
#'     em sistema de gride nos solos da Amazônia, onde foram mensuradas
#'     as variáveis areia e argila para 6 sistemas de uso da terra
#'     (SUT). O objetivo do estudo é agrupar os SUT's conforme
#'     similaridade das medidas de areia e argila.
#' @format Um \code{data.frame} com 6 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{areia}}{Média das medidas de areia.}
#'
#' \item{\code{argila}}{Média das medidas de argila.}
#'
#' }
#'
#' O sistema de uso da terra é indicado conforme nomenclatura das linhas
#'     do \code{data.frame}, onde (A) representa uso da terra para
#'     agricultura, (AG) para agrofloresta, (F) para floresta, (CV) para
#'     capoeira velha, (CN) para capoeira nova e (P) para pastagem.
#' @keywords KM
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 9.1, pág. 402)
#' @examples
#'
#' data(FerreiraEg9.1)
#' str(FerreiraEg9.1)
#' rownames(FerreiraEg9.1)
#'
#' (D <- dist(FerreiraEg9.1))
#' plot(hclust(D), hang = -1)
#'
#' library(lattice)
#'
#' (cl <- kmeans(FerreiraEg9.1, 3))
#'
#' xyplot(argila ~ areia, groups = cl$cluster,
#'        data = FerreiraEg9.1,
#'        pch = 19, cex = 1.3, grid = TRUE,
#'        xlab = "Teor de argila (%)",
#'        ylab = "Teor de areia (%)",
#'        panel = function(x, y, ...) {
#'            cols <- trellis.par.get()$superpose.symbol$col[cl$cluster]
#'            panel.xyplot(x, y, ...)
#'            ltext(x, y,
#'                  labels = rownames(FerreiraEg9.1),
#'                  pos = 4, offset = 1, col = cols)
#'        })
#'
NULL
