% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AndradeTb2.1.R
\name{AndradeTb2.1}
\alias{AndradeTb2.1}
\title{Competição de Híbridos de Milho}
\format{Um \code{data.frame} com 32 observações e 7 variáveis, em que

\describe{

\item{\code{hibr}}{Fator de 32 níveis qualitativos que são os
    híbridos de milho.}

\item{\code{rm}}{Rendimento médio do híbrido de milho, em
    \eqn{kg\ ha^{-1}}.}

\item{\code{ciclo}}{Ciclo de vida do híbrido de milho, em dias.}

\item{\code{ap}}{Altura da planta do híbrido de milho, em cm.}

\item{\code{ae}}{Altura da espiga do híbrido de milho, em cm.}

\item{\code{grao}}{Fator de 3 níveis qualitativos que indica o tipo
    de grão.}

\item{\code{resist}}{Fator de 4 níveis qualitativos que indica a
    resistência à ferrugem, sendo \code{r}: resistente; \code{mr}:
    moderadamente resistente; \code{ms}: moderadamente susceptível; e
    \code{s}: susceptível.}

}}
\source{
Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
    ciências agrárias e biológicas com noções de experimentação (2nd
    ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.1, pág. 62)
}
\description{
Um pesquisador avaliou, na região de Chapecó, SC, o
    comportamento de híbridos de milho mensurados pelo rendimento
    médio de milho, ciclo de vida, altura da planta e altura da
    espiga.
}
\examples{

library(lattice)

data(AndradeTb2.1)
str(AndradeTb2.1)

levels_resist <- c("Resistente", "Moderadamente Resistente",
                   "Moderadamente Susceptível", "Susceptível")

# Comportamento do rendimento médio
xyplot(rm ~ hibr | grao,
       groups = resist,
       type = "b",
       layout = c(NA, 1),
       data = AndradeTb2.1,
       auto.key = list(title = "Resistência à ferrugem",
                       cex.title = 1.1,
                       columns = 2,
                       text = levels_resist),
       ylab = "Rendimendo Médio (em kg/ha)",
       xlab = "Híbrido de Milho")

# Compartamento do ciclo de vida
xyplot(ciclo ~ hibr | grao,
       groups = resist,
       type = "b",
       layout = c(NA, 1),
       data = AndradeTb2.1,
       auto.key = list(title = "Resistência à ferrugem",
                       cex.title = 1.1,
                       columns = 2,
                       text = levels_resist),
       ylab = "Ciclo (em dias)",
       xlab = "Híbrido de Milho")

# Comportamento das alturas
library(latticeExtra)
useOuterStrips(
    xyplot(ap + ae ~ hibr | grao,
           groups = resist,
           type = "b",
           data = AndradeTb2.1,
           auto.key = list(title = "Resistência à ferrugem",
                           cex.title = 1.1,
                           columns = 2,
                           text = levels_resist),
           ylab = "Altura (em cm)",
           xlab = "Híbrido de Milho"),
    strip.left = strip.custom(factor.levels = c("Planta", "Espiga"))
    )

# Comportamento geral
vars <- c("Rendimento", "Ciclo de vida", "Altura planta", "Altura espiga")
useOuterStrips(
    xyplot(rm + ciclo + ap + ae ~ hibr | grao,
           groups = resist,
           data = AndradeTb2.1,
           type = "b",
           as.table = TRUE,
           xlab = "Híbrido de Milho",
           ylab = "",
           scales = list(y = "free", x = list(rot = 90)),
           auto.key = list(
               title = "Resistência à Ferrugem",
               cex.title = 1.1,
               columns = 2,
               text = levels_resist)
           ),
    strip.left = strip.custom(factor.levels = vars)
)

# Relação entre as variáveis de interesse
splom(~AndradeTb2.1[, c("rm", "ciclo", "ap", "ae")],
      type = c("p", "smooth"),
      data = AndradeTb2.1)

}
\keyword{AASM}
