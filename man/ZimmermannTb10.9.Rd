% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Zimmermann.R
\name{ZimmermannTb10.9}
\alias{ZimmermannTb10.9}
\title{\enc{É}{E}poca de Plantio e Manejo de Inseticida em Cultivares
    de Arroz}
\format{Um \code{data.frame} com 48 observações e 5 variáveis, em que

\describe{

\item{\code{epoca}}{Fator de níveis categóricos que indica a época do
    plantio.}

\item{\code{inset}}{Fator de níveis numéricos que representa a
    aplicação (1) ou não (0) de Fipronil.}

\item{\code{genot}}{Fator de níveis nominais que identifica o
    genótipo de arroz.}

\item{\code{bloco}}{Fator de níveis nominais que identifica o bloco
    ao qual a observação pertence.}

\item{\code{peso}}{Peso de 100 espiguetas de arroz, em gramas.}

}}
\source{
ZIMMERMANN (2004), Tabela 10.9, pág. 205.
}
\description{
Dados de um em delineamento de blocos completos ao
    acaso, em parcelas subdivididas. O experimento avaliou o efeito
    de 2 épocas de plantio e aplicação (ou não) do inseticida
    Fipronil em três cultivares de arroz. As épocas de plantio foram
    implantadas nas parcelas principais, o inseticida nas subparcelas
    e os genótipos nas sub-parcelas. Os resultados são dados de peso
    de 100 espiguetas de arroz, em gramas.
}
\examples{

library(lattice)

data(ZimmermannTb10.9)
str(ZimmermannTb10.9)

ftable(xtabs(~genot + epoca + inset, data = ZimmermannTb10.9))

xyplot(peso ~ genot | epoca, groups = inset,
       data = ZimmermannTb10.9,
       type = c("p", "a"),
       xlab = "Genótipo de arroz",
       ylab = "Peso de 100 espiguetas (g)")

}
\keyword{PSS}
