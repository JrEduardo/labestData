% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Zimmermann.R
\name{ZimmermannTb4.4}
\alias{ZimmermannTb4.4}
\title{Competi\enc{çã}{ca}o de Cultivares de Feij\enc{ã}{a}o}
\format{Um \code{data.frame} com 60 observações e 3 variáveis, em que

\describe{

\item{\code{cult}}{Fator de níveis nominais. Cultivar de feijão.}

\item{\code{bloco}}{Número inteiro que identifica o bloco da
    observação.}

\item{\code{prod}}{Produção de grãos de feijão (ka ha\eqn{^{-1}}).}

}}
\source{
ZIMMERMANN (2004), Tabela 4.4, pág. 72.
}
\description{
Dados de um ensaio de competição de cultivares, em
    blocos completos ao acaso, da produção de grãos de feijão em
    kg/ha. O experimento teve quinze tratamentos (cultivares e/ou
    linhagens) e quatro blocos.
}
\examples{

library(lattice)

data(ZimmermannTb4.4)

str(ZimmermannTb4.4)

xyplot(prod ~ cult, data = ZimmermannTb4.4,
       groups = bloco, type = "o", jitter.x = TRUE,
       xlab = "Cultivares",
       ylab = expression("Produção de feijão"~(kg~ha^{-1})),
       main = "Experimento de competição de cultivares",
       scales = list(x = list(rot = 90)))

aggregate(prod ~ cult, data = ZimmermannTb4.4,
          FUN = function(x) { c(mean = mean(x), var = var(x)) })

}
\keyword{DBC}
