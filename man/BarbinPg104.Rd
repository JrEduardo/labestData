% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Barbin.R
\name{BarbinPg104}
\alias{BarbinPg104}
\title{Produ\enc{çã}{ca}o de Cultivares de Cana-de-a\enc{çú}{cu}car}
\format{Um \code{data.frame} com 25 observações e 4 variáveis, em que

\describe{

\item{\code{linha}}{Fator de níveis categóricos que são as linhas do
    quadrado.}

\item{\code{colun}}{Fator de níveis categóricos que são as colunas do
    quadrado.}

\item{\code{cult}}{Fator de níveis categóricos que são as cultivares
    de cana-de-açúcar estudadas.}

\item{\code{prod}}{Produção de cana-de-açúcar, em kg
    parcela\eqn{^{-1}}.}

}}
\source{
BARBIN (2013), pág. 104.
}
\description{
Experimento em delineamento quadrado latino que avaliou
    a produção de cultivares de cana-de-açúcar.
}
\examples{

library(lattice)

data(BarbinPg104)

str(BarbinPg104)

xyplot(prod ~ cult, data = BarbinPg104,
       jitter.x = TRUE,
       col = with(BarbinPg104, as.integer(linha)),
       pch = with(BarbinPg104, as.integer(colun)),
       xlab = "Porta enxertos para laranjeira",
       ylab = "Número médio de frutos por planta")

levelplot(prod ~ linha + colun,
          data = BarbinPg104, aspect = "iso",
          xlab = "Linha", ylab = "Coluna",
          lbl = as.character(BarbinPg104$cult),
          col.regions = colorRampPalette(colors = c("yellow", "blue")),
          panel = function(x, y, z, lbl, ...) {
              panel.levelplot(x, y, z, ...)
              panel.text(x = x, y = y, labels = lbl, pos = 3)
              panel.text(x = x, y = y,
                         labels = sprintf("\%0.2f", z),
                         pos = 1, cex = 1)
          })

}
\keyword{DQL}
