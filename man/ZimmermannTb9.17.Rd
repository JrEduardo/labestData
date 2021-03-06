% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Zimmermann.R
\name{ZimmermannTb9.17}
\alias{ZimmermannTb9.17}
\title{\enc{É}{E}poca de Aplica\enc{çã}{ca}o de NK na
    Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Arroz}
\format{Um \code{data.frame} com 81 observações e 5 variáveis, em que

\describe{

\item{\code{epoc}}{Fator categórico que representa a época de
    aplicação dos nutrientes.}

\item{\code{pota}}{Fator categórico que representa a dose de potássio
    aplicada.}

\item{\code{nitr}}{Fator categórico que representa a dose de
    nitrogênio aplicada.}

\item{\code{bloc}}{Fator categórico que representa os blocos do
    experimento. Os blocos tinham tamanho \eqn{3^3 = 27}.}

\item{\code{prod}}{Produção de grão de arroz em (kg ha\eqn{^{-1}}).}

}}
\source{
ZIMMERMANN (2004), Tabela 9.17, pág. 182.
}
\description{
Dados de um estudo em ensaio fatorial 3 \eqn{\times} 3,
    referentes à produção de grãos de arroz, em kg ha\eqn{^{-1}}. O
    delineamento é o de blocos completos ao acaso, com três
    repetições. Foram testados os efeitos do nitrogênio, potássio e
    épocas de aplicação destes elementos na produtividade da soca do
    arroz irrigado.
}
\examples{

library(lattice)

data(ZimmermannTb9.17)
str(ZimmermannTb9.17)

ftable(xtabs(~nitr + pota + epoc, data = ZimmermannTb9.17))

xyplot(prod ~ nitr | epoc, data = ZimmermannTb9.17,
       groups = pota, type = c("p", "a"),
       as.table = TRUE,
       auto.key = list(title = "Potássio", cex.title = 1.1,
                       columns = 3),
       strip = strip.custom(strip.names = TRUE,
                            var.name = "Época",
                            sep = " : "),
       xlab = "Nitrogênio",
       ylab = expression("Produção de grãos de arroz"~(kg~ha^{-1})))

}
\keyword{FAT3K}
