% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Charnet.R
\name{CharnetEx3.3}
\alias{CharnetEx3.3}
\title{Res\enc{í}{i}duo Catalisado de um Experimento Qu\enc{í}{i}mico}
\format{Um \code{data.frame} com 2 colunas e 50 linhas, em que

\describe{

\item{\code{temp}}{Temperatura do experimento, em ºC.}

\item{\code{qt}}{Quantidade de resíduo, em gramas.}

}}
\source{
CHARNET et al. (2008), Capítulo 3, exercício
    3, pág. 66; Capítulo 5, exercício 12, pág. 113.
}
\description{
Quantidade de resíduo catalisado, em gramas,
    proveniente de 100 ml de água, de um experimento químico,
    repetido 5 vezes, comparado a diversas temperaturas.
}
\examples{

data(CharnetEx3.3)
str(CharnetEx3.3)

xtabs(~temp, data = CharnetEx3.3)
plot(CharnetEx3.3)

}
\keyword{RS}
