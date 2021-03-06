% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Paula.R
\name{PaulaEg1.12.4}
\alias{PaulaEg1.12.4}
\title{Desenvolvimento de Massa Tumoral em Ratos}
\format{Um \code{data.frame} com 204 observações e 4 variáveis.

\describe{

\item{\code{grupo}}{Grupo de passagem (0 a 28).}

\item{\code{massat}}{Presença de massa tumoral (sim ou não).}

\item{\code{caq}}{Caquexia (sim ou não).}

\item{\code{tempo}}{Tempo de sobrevivência (em dias).}

}}
\source{
PAULA (2004), Eg 1.12.4, pág. 90.
}
\description{
Estudo realizado para avaliar a influência da série
    (passagem do tumor) na morte (caquexia) de certa espécie de rato.
    Um total de 204 animais teve tumor inoculado num determinado
    momento da série. Para cada animal, além do grupo de passagem,
    foram observadas as variáveis presença de massa tumoral, caquexia
    e o tempo de observação.
}
\examples{

data(PaulaEg1.12.4)
str(PaulaEg1.12.4)

library(lattice)

xyplot(tempo ~ grupo | massat,
       groups = caq,
       data = PaulaEg1.12.4,
       type = c("p", "smooth"),
       xlab = "Grupo",
       ylab = "Tempo",
       auto.key = list(space = "top", columns = 2,
                       title = "Presença de caquexia", cex.title = 1,
                       lines = TRUE, points = FALSE))

bwplot(tempo ~ massat | caq, pch = "|",
       data = PaulaEg1.12.4,
       ylab = "Tempo",
       xlab = "Presença de massa tumoral")

}
\keyword{MLG}
