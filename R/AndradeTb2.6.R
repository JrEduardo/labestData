#' @name AndradeTb2.6
#' @title Estudo sobre Cultura de Feijão-de-Vagem
#' @description Estudo no qual procurou-se verificar a existência de
#'     associação entre hábito de crescimento e os portes da planta na
#'     cultura de feijão-de-vagem.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{H}}{Fator de 2 níveis qualitativos que são os hábitos de
#'     crescimento, sendo \code{3}: "indeterminado trepador"; e
#'     \code{4}: "indeterminado prostrado".}
#'
#' \item{\code{P}}{Fator de 3 níveis qualitativos que são os portes,
#'     sendo \code{Tr}: "trepador"; \code{EB}: "ereto na base"; e
#'     \code{Pr}: "prostrado".}
#'
#' }
#' @keywords contingência
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.6, pág. 74)
#' @examples
#'
#' data(AndradeTb2.6)
#' str(AndradeTb2.6)
#'
#' (tb <- xtabs(~H+P, data= AndradeTb2.6))
#'
#' mosaicplot(tb)
#'
#' barplot(t(tb), names.arg = c("Prostrado", "Trepador"),
#'         beside = TRUE,
#'         space = c(0.2, 1),
#'         col = c("darkturquoise", "lawngreen", "blue"),
#'         ylim = c(0, 30))
#' legend("topleft",
#'        legend = levels(AndradeTb2.6$P),
#'        fill = c("darkturquoise", "lawngreen", "blue"))
#'
NULL
