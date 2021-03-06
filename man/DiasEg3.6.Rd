% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Dias.R
\name{DiasEg3.6}
\alias{DiasEg3.6}
\title{Alturas de plantas de milho}
\format{Vetor com 100 observações da altura (cm).}
\source{
BARROS; DIAS (2009), Exemplo 3.6.
}
\description{
Amostras aleatória da alturas de plantas de milho.
}
\examples{

stem(DiasEg3.6)

boxplot(DiasEg3.6)
rug(DiasEg3.6, side = 2)

hist(DiasEg3.6)
rug(DiasEg3.6)

plot(density(DiasEg3.6))
rug(DiasEg3.6)

plot(ecdf(DiasEg3.6))
rug(DiasEg3.6)
}
\keyword{AAS}
