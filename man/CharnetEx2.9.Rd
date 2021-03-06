% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Charnet.R
\name{CharnetEx2.9}
\alias{CharnetEx2.9}
\title{Notas de Candidatos ao Vestibular}
\format{Um \code{data.frame} com 2 colunas e 9 linhas, em que

\describe{

\item{\code{prova}}{Área da prova no vestibular.}

\item{\code{nota}}{Nota obtida no teste, em escala de 0 a 100.}

}}
\source{
CHARNET et al. (2008), Capítulo 2, exercício 9, pág. 47.
}
\description{
Notas de 9 candidatos ao vestibular nas provas de
    Matemática e Física.
}
\examples{

data(CharnetEx2.9)
str(CharnetEx2.9)

plot(CharnetEx2.9)

# Dados no formato largo (wide) para visualização dos pares
data.wide <- unstack(CharnetEx2.9, form = nota ~ prova)

plot(data.wide)
abline(a = 0, b = 1)

}
\keyword{RS}
