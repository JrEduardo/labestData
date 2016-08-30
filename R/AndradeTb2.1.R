#' @name AndradeTb2.1
#' @title Experimento de Competição de Híbridos de Milho
#' @description Um pesquisador instalou um experimento, na região de
#'     Chapecó, SC, para avaliação do comportamento de híbridos de
#'     milho.
#' @format Um \code{data.frame} com 32 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{hibr}}{Fator de 32 níveis qualitativos que são os
#'     híbridos de milho.}
#'
#' \item{\code{rm}}{Rendimento médio do híbrido de milho, em
#'     \eqn{kg.ha^{-1}}.}
#'
#' \item{\code{ciclo}}{Ciclo de vida do híbrido de milho, em dias.}
#'
#' \item{\code{ap}}{Altura da planta do híbrido de milho, em cm.}
#'
#' \item{\code{ae}}{Altura da espiga do híbrido de milho, em cm.}
#'
#' \item{\code{grao}}{Fator de 3 níveis qualitativos que indica o tipo
#'     de grão.}
#' 
#' \item{\code{resist}}{Fator de 4 níveis qualitativos que indica a
#'     resistência à ferrugem, sendo: r = resistente; mr = moderadamente
#'     resistente; ms = moderadamente susceptível; s = susceptível.}
#' 
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.1, pág. 62)
#' @examples
#'
#' library(lattice)
#' library(plyr)
#'
#' data(AndradeTb2.1)
#' str(AndradeTb2.1)
#'
#' graf1 <- xyplot(rm ~ hibr,
#'                 data = AndradeTb2.1,
#'                 type = c("p", "r"),
#'                 xlab = "Híbrido de Milho",
#'                 ylab = "Rendimento Médio (em kg/ha)")
#'
#' graf2 <- xyplot(ciclo ~ hibr,
#'                 data = AndradeTb2.1,
#'                 type = c("p", "r"),
#'                 xlab = "Híbrido de Milho",
#'                 ylab = "Ciclo (em dias)")
#'
#' graf3 <- xyplot(ap + ae ~ hibr,
#'                 data = AndradeTb2.1,
#'                 type = c("p", "r"),
#'                 xlab = "Híbrido de Milho",
#'                 ylab = "Alturas (em cm)",
#'                 auto.key = list(columns = 2))
#'
#' print(graf1, c(0, 0.66, 1, 1), more = TRUE)
#'
#' print(graf2, c(0, 0.33, 1, 0.66), more = TRUE)
#'
#' print(graf3, c(0, 0, 1, 0.33))
#'
#' d <- count(AndradeTb2.1$grao == "dentado")[[2]][2]
#'
#' sd <- count(AndradeTb2.1$grao == "semidentado")[[2]][2]
#'
#' s <- count(AndradeTb2.1$grao == "semiduro")[[2]][2]
#'
#' barplot(c(Dentado = d, Semidentado = sd, Semiduro = s),
#'         col = "darkturquoise",
#'         xlab = "Tipo de Grão",
#'         ylab = "Frequência")                
#'
#' r <- count(AndradeTb2.1$resist == "r")[[2]][2]
#'
#' mr <- count(AndradeTb2.1$resist == "mr")[[2]][2]
#'
#' ms <- count(AndradeTb2.1$resist == "ms")[[2]][2]
#'
#' s <- count(AndradeTb2.1$resist == "s")[[2]][2]
#'
#' barplot(c(R = r, mr = mr, MS = ms, S = s),
#'         col = "darkturquoise",
#'         xlab = "Resistência à Ferrugem",
#'         ylab = "Frequência")
#'
NULL