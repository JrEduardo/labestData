% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Paula.R
\name{PaulaEx5.6.14}
\alias{PaulaEx5.6.14}
\title{Compara\enc{çã}{ca}o de Drogas para Tratamento de Leucemia}
\format{Um \code{data.frame} com 120 observações e 5 variáveis.

\describe{

\item{\code{rato}}{Número de identificação do rato.}

\item{\code{period}}{Período de avaliação (1, 2, 3 ou 4).}

\item{\code{trat}}{Droga quimioterápica utilizada (1, 2 ou 3).}

\item{\code{celubran}}{Quantidade de células brancas.}

\item{\code{celuverm}}{Quantidade de células vermelhas.}

\item{\code{celucanc}}{Número de colônias de células cancerosas.}

}}
\source{
PAULA (2004), Exercício 5.6.14, pág. 401.
}
\description{
Dados referentes a um experimento em que 30 ratos
    tiveram uma condição de leucemia induzida, sendo submetidos,
    posteriormente, a três drogas quimioterápicas. Foram coletadas de
    cada animal a quantidade de células brancas, a quantidade de
    células vermelhas e o número de colônias de células cancerosas,
    em três períodos diferentes.
}
\examples{

library(lattice)

data(PaulaEx5.6.14)
str(PaulaEx5.6.14)

xtabs(~period + trat, data = PaulaEx5.6.14)

xyplot(celucanc ~ period, groups = rato,
       type = c("p", "g", "a"), data = PaulaEx5.6.14)

}
\references{
Myers, R.H.; Montgomery, D. C. e Vining, G. G. (2002).
    Generalized Linear Models: With Applications in Engineering and
    the Sciences. John Wiley, New York.
}
\keyword{contagem}
