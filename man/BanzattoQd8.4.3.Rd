% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Banzatto.R
\name{BanzattoQd8.4.3}
\alias{BanzattoQd8.4.3}
\title{Grupo de Experimentos de Aduba\enc{çã}{ca}o Nitrogenada em
    Milho}
\format{Um \code{data.frame} com 24 observações e 3 variáveis, em que

\describe{

\item{\code{local}}{Fator de níveis categóricos que identifica os
    locais onde foram instalados os experimentos.}

\item{\code{nitro}}{Nível de nitrogênio fornecido na adubação. A
    escala de medida dos níveis originais não foi informada. Os
    níveis foram representados por inteiros (0, 1 e 2), o que sugere
    que são equidistantes na escala original.}

\item{\code{prod}}{Produção média de grãos de milho (média das
    repetições em cada experimento), em kg ha\eqn{^{-1}}.}

}

O \code{data.frame} possui um atributo com os quadrados médios
    residuais em cada experimento.}
\source{
BANZATTO; KRONKA (2013), Quadro 8.4.3, pág. 202.
}
\description{
Dados referentes à produção de milho em grãos de ensaios
    fatoriais \eqn{3^3} de adubação NPK na cultura do milho. Os
    experimentos foram realizados em 8 locais. O delineamento
    experimental não foi informado.
}
\examples{

library(lattice)

data(BanzattoQd8.4.3)

str(BanzattoQd8.4.3)

with(BanzattoQd8.4.3,
     addmargins(tapply(prod, list(local, nitro), FUN = mean)))

xyplot(prod ~ nitro, groups = local, data = BanzattoQd8.4.3,
       type = "o",
       auto.key = list(title = "Local",
                       cex.title = 1, columns = 2),
       xlab = "Níveis de nitrogênio",
       ylab = expression(
           "Produção média de grãos de milho"~(kg~ha^{-1})))

}
\keyword{GE}
