% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Charnet.R
\name{CharnetEx5.11}
\alias{CharnetEx5.11}
\title{Rela\enc{çã}{ca}o do Lucro de uma Loja e Gastos com
    Publicidade}
\format{Um \code{data.frame} com 2 colunas e 19 linhas, em que

\describe{

\item{\code{lucro}}{Lucro, em milhares de reais.}

\item{\code{gastos}}{Gasto em publicidade, em milhares de reais.}

}}
\source{
CHARNET et al. (2008), Capítulo 5, exercício 11, pág. 112;
    Capítulo 6, exercício 5, pág. 143.
}
\description{
Relação do lucro de uma loja de eletrônicos e seu gasto
    com publicidade num período de 19 meses.
}
\examples{

data(CharnetEx5.11)
str(CharnetEx5.11)

plot(lucro ~ gastos, data = CharnetEx5.11)
plot(lucro ~ gastos, data = CharnetEx5.11, log = "xy")

}
\keyword{RS}
