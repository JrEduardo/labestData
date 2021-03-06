% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Charnet.R
\name{CharnetEx8.1}
\alias{CharnetEx8.1}
\title{Influ\enc{ê}{e}ncia da Publicidade e Capital Investido no
    Lucro Anual}
\format{Um \code{data.frame} com 3 colunas e 12 linhas, em que

\describe{

\item{\code{lucro}}{Lucro anual, em 100 mil reais.}

\item{\code{capi}}{Capital investido no ano, em 100 mil reais.}

\item{\code{publi}}{Gasto com publicidade no ano, em 100 mil reais.}

}}
\source{
CHARNET et al. (2008), Capítulo 8, exercício 1, pág. 195,
    Capítulo 9, exercício 6, pág. 230.
}
\description{
Influência das variáveis capital investido (\code{capi})
    e gasto em publicidade (\code{publi}) no lucro anual
    (\code{lucro}) de 12 empresas observadas.
}
\examples{

data(CharnetEx8.1)
str(CharnetEx8.1)

plot(CharnetEx8.1)
lm(lucro ~ ., data = CharnetEx8.1)

}
\keyword{RM}
