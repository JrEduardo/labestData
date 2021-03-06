% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Zimmermann.R
\name{ZimmermannTb7.4}
\alias{ZimmermannTb7.4}
\title{Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Arroz em Ensaio
    Reticulado Retangular}
\format{Um \code{data.frame} com 90 observações e 3 variáveis, em que

\describe{

\item{\code{rept}}{Fator categórico que representa as repetições do
    experimento. Cada repetições tem 6 blocos de tamanho 3,
    perfazendo 30 parcelas, uma para cada uma das
    cultivares/linhagens estudadas.}

\item{\code{bloco}}{Fator categórico que indentifica os blocos.}

\item{\code{cult}}{Fator categórico que identifica as
    cultivares/linhagens em competição.}

\item{\code{prod}}{Produção de grãos de arroz irrigado (ka
    ha\eqn{^{-1}}).}

}}
\source{
ZIMMERMANN (2004), Tabela 7.4, pág. 140.
}
\description{
Dados de um estudo sobre competição de cultivares e
    linhagens de arroz irrigado quanto a produtividade. O experimento
    foi conduzido em ensaio em reticulado retangular 5 \eqn{\times} 6
    (blocos de tamanho 5, 6 blocos por repetição), com três
    repetições.
}
\examples{

library(lattice)

data(ZimmermannTb7.4)
str(ZimmermannTb7.4)

xtabs(~bloc + rept, data = ZimmermannTb7.4)
xtabs(~cult + rept, data = ZimmermannTb7.4)

xyplot(prod ~ reorder(cult, prod),
       data = ZimmermannTb7.4, type = c("p", "a"),
       xlab = "Cultiavres",
       ylab = expression("Produção de grãos de arroz"~(kg~ha^{-1})))

}
\keyword{RET}
