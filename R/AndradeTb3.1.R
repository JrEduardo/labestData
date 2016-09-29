#' @name AndradeTb3.1
#' @title Mortalidade dos Residentes na Colônia Polonesa de Dom Pedro
#' @description Censo realizado nos domicílios da comunidade polonesa de
#'     Dom Pedro, próximo a Curitiba, para se estudar a mortalidade dos
#'     residentes na colônia. O estudo foi realizado sobre três gerações
#'     no final do século XIX.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{idade}}{Fator de 6 níveis qualitativos, que são as idades
#'     em anos completos, sendo: a = 0 a 1 ano; b = 2 a 4 anos; c = 5 a
#'     9 anos; d = 10 a 14 anos; e = 15 a 29 anos; g = mais de 29 anos.}
#'
#' \item{\code{sexo}}{Fator de 2 níveis qualitativos, que indica o
#'     gênero masculino ou feminino.}
#'
#' \item{\code{mort}}{Mortalidade dos residentes na colônia polonesa de
#'     Dom Pedro.}
#'
#' }
#' @keywords DBC
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 3.1, pág. 172)
#' @examples
#'
#' data(AndradeTb3.1)
#' str(AndradeTb3.1)
#'
#' library(lattice)
#'
#' xyplot(mort ~ idade,
#'        groups = sexo,
#'        data = AndradeTb3.1,
#'        auto.key = list(title = "Gênero",
#'                        cex.title = 1.1,
#'                        columns = 2),
#'        xlab = "Idade (anos completos)",
#'        ylab = "Mortalidade dos Residentes")
#'
NULL