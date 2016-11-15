#' @name AndradeTb3.1
#' @title Mortalidade dos Residentes na Colônia Polonesa de Dom Pedro
#' @description Censo realizado nos domicílios da comunidade polonesa de
#'     Dom Pedro, próximo a Curitiba, para se estudar a mortalidade dos
#'     residentes na colônia. O estudo foi realizado sobre três gerações
#'     no final do século XIX, contabilizando 99 mortes.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{idade}}{Idades dos residentes, em anos completos
#'     categorizada em 6 níveis (0-1 ano; 2-4 anos; 5-9 anos; 10-14
#'     anos; 15-29 anos; e >29 anos).}
#'
#' \item{\code{sexo}}{Sexo dos residentes (masculino ou feminino).}
#'
#' \item{\code{mort}}{Número de mortes.}
#'
#' }
#' @keywords contingência
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 3.1, pág. 172)
#' @examples
#'
#' data(AndradeTb3.1)
#' str(AndradeTb3.1)
#'
#' (xt <- xtabs(mort ~ ., data = AndradeTb3.1))
#' mosaicplot(xt, cex.axis = 0.9, las = 2, main = "")
#'
#' library(lattice)
#' xyplot(mort ~ idade,
#'        groups = sexo,
#'        type = c("g", "o"),
#'        data = AndradeTb3.1,
#'        auto.key = list(title = "Gênero",
#'                        cex.title = 1.1,
#'                        lines = TRUE,
#'                        columns = 2),
#'        xlab = "Idade (anos completos)",
#'        ylab = "Mortalidade dos Residentes")
#'
NULL
