% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Pimentel.R
\name{PimentelPg72}
\alias{PimentelPg72}
\title{Ensaio de alimenta\enc{çã}{ca}o de Leitoas}
\format{Um \code{data.frame} com 8 observações e 2 variáveis, em que

\describe{

\item{\code{feno}}{Fator de 2 níveis qualitativos, que são os
    diferentes tipos de feno.}

\item{\code{ganhopeso}}{Aumento do peso das leitoas, observado em
    quilogramas.}

}}
\source{
PIMENTEL-GOMES (2009).
}
\description{
Experimento realizado pelos técnicos Manoel Becker, Luís
    Paulin Neto, Geraldo Leme da Rocha e Benjamin Cintra, no qual
    dois tratamentos foram estudados (feno de alfafa e feno de
    quicuio), aplicados a 8 leitoas Duroc Jersey bem homogêneas.  A
    quatro leitoas, escolhidas por sorteio, foi fornecida a ração com
    feno de alfafa, e as quatro restantes, a ração com feno de
    quicuio. Por fim, foram observados os ganhos de peso no período
    experimental de três meses.
}
\examples{

data(PimentelPg72)
str(PimentelPg72)

library(lattice)

xyplot(jitter(ganhopeso) ~ feno,
       data = PimentelPg72,
       xlab = "Tipo de Feno",
       ylab = "Ganho de Peso")

}
\keyword{DIC}
