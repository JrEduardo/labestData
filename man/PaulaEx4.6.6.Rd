% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Paula.R
\name{PaulaEx4.6.6}
\alias{PaulaEx4.6.6}
\title{C\enc{â}{a}ncer Nasal em Trabalhadores de Refinaria de
    N\enc{í}{i}quel}
\format{Um \code{data.frame} com 72 observações e 5 variáveis.

\describe{

\item{\code{idade}}{Fator com quatro níveis referente à idade (em
    anos) do trabalhador no seu primeiro emprego, com níveis
    \code{<20}, \code{20-27}, \code{27.5-34.9} e \code{>35}.}

\item{\code{ano}}{Fator com quatro níveis referente ao ano do
    primeiro emprego (\code{<1910}, \code{1910-1914},
    \code{1915-1919} e \code{1920-1924}).}

\item{\code{tempo}}{Fator com cinco níveis que indica o tempo
    decorrido desde o primeiro emprego, em anos, categorizados nos
    níveis \code{0-19}, \code{20-39}, \code{30-39}, \code{40-49} e
    \code{>50}.}

\item{\code{ncasos}}{Número de casos de câncer nasal.}

\item{\code{tpessoas}}{Total de pessoas|ano de observação.}

}}
\source{
PAULA (2004), Exercício 4.6.6, pág. 343.
}
\description{
Dados provenientes de um estudo de seguimento em que se
    acompanhou trabalhadores de uma refinaria de níquel no País de
    Gales durante determinado período e avaliou-se o número de
    ocorrências de câncer nasal. O interesse do estudo é avaliar a
    associação entre a taxa anual de câncer nasal e as variáveis
    explicativas: idade no primeiro emprego, ano do primeiro emprego
    e tempo decorrido desde o primeiro emprego.
}
\examples{

data(PaulaEx4.6.6)
str(PaulaEx4.6.6)

# Número de observações em cada combinação das variáveis explicativas
# Para modelagem não será possível a estimação de algumas interações
ftable(PaulaEx4.6.6[, c("idade", "ano", "tempo")])

# Casos de câncer seccionados pelas variáveis explicativas
ftable(xtabs(ncasos ~ idade + ano + tempo, data = PaulaEx4.6.6))
xt <- xtabs((ncasos/tpessoas)*100 ~ ., data = PaulaEx4.6.6)
ftable(xt)
plot(xt)

library(lattice)

xyplot((ncasos/tpessoas) ~ tempo | ano,
       groups = idade,
       data = PaulaEx4.6.6,
       type = c("p", "g", "a"),
       auto.key = list(space = "right", cex.title = 1,
                       title = "Idade"))

# Retirando a observação que domina a escala do eixo y
index <- with(PaulaEx4.6.6, which.max(ncasos/tpessoas))
xyplot((ncasos/tpessoas) ~ tempo | ano,
       groups = idade,
       data = PaulaEx4.6.6[-index, ],
       type = c("p", "g", "a"),
       auto.key = list(space = "right", cex.title = 1,
                       title = "Idade"))

}
\references{
Breslow, N. E., Day, N. E. (1987). Statistical Methods in
    Cancer Research (vol. II). IARC Scientific Publications,
    International Agency for Research on Cancer, Lyon.
}
\keyword{contagem}
