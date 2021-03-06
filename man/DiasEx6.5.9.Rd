% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Dias.R
\name{DiasEx6.5.9}
\alias{DiasEx6.5.9}
\title{Correla\enc{çã}{ca}o entre Temperatura e Massa}
\format{Um \code{data.frame} com 11 observações e 3 variáveis, em que

\describe{

\item{\code{temp}}{Temperatura.}

\item{\code{massa}}{Massa em gramas.}

}}
\source{
BARROS; DIAS (2009), Exercício 9, Cap. 6, pág. 181.

library(lattice)

data(DiasEx6.5.9)
str(DiasEx6.5.9)

xyplot(massa ~ temp, data = DiasEx6.5.9, type = c("p", "r"),
       ylab = "Massa (g)", xlab = "Temperatura")
}
\description{
Dados de 11 pares de valores de temperatura e massa.
}
\keyword{RS}
