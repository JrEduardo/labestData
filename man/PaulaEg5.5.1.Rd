% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Paula.R
\name{PaulaEg5.5.1}
\alias{PaulaEg5.5.1}
\title{Ensaio Cl\enc{í}{i}nico com Indiv\enc{í}{i}duos
    Epil\enc{é}{e}pticos}
\format{Um \code{data.frame} com 295 observações e 5 variáveis.

\describe{

\item{\code{indiv}}{Identificação do indivíduo.}

\item{\code{period}}{Período de observação (1 = antes do tratamento,
    2 = primeiro período após o tratamento, 3 = segundo período após
    o tratamento e 4 = terceiro período após o tratamento).}

\item{\code{seman}}{Número de semanas em cada período.}

\item{\code{ataq}}{Número de ataques em cada período.}

\item{\code{trat}}{Tratamento aplicado a cada indivíduo (placebo ou
    progabide).}

}}
\source{
PAULA (2004), Exemplo 5.5.1, pág. 379.
}
\description{
Dados apresentados em Diggle, Liang e Zeger (1994),
    referentes a um ensaio clínico com 59 indivíduos epilépticos,
    aleatorizados de modo que cada um recebesse uma droga
    antiepiléptica (progabide) ou placebo.  Os dados de cada
    indivíduo consistem do número de ataques epilépticos num período
    de oito semanas antes do tratamento, além do número de ataques em
    cada período de duas semanas, num total de quatro períodos após o
    tratamento. O interesse do estudo é verificar possível diminuição
    na taxa de ataques epilépticos.
}
\examples{

data(PaulaEg5.5.1)
str(PaulaEg5.5.1)

ftable(xtabs(~period + seman + trat, data = PaulaEg5.5.1))

library(lattice)

xyplot(ataq ~ period | trat, groups = indiv, data = PaulaEg5.5.1,
       type = c("p", "a"),
       xlab = "Período",
       ylab = "Número de ataques epilépticos")

}
\references{
Diggle, P. J.; Liang, K. Y. e Zeger, S. L. (1994).
    Analysis of Longitudinal Data. Oxford University Press.  Seção
    8.4.
}
\keyword{contagem}
\keyword{longitudinal}
