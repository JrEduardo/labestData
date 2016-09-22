#' @name AndradeTb2.29
#' @title Biometria Total do Camarão \emph{Macrobrachium Potiuna}
#' @description Biometria total, em milímetros, do Camarão de água doce
#'     \emph{Macrobrachium potiuna} (MÜLLER, 1880), da família
#'     \emph{Palaemonidae}.
#' @format Um \code{vetor} numérico com 36 observações.
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.29, pág. 110)
#'
#' @references COLOQUE A REFERENCIA DO MULLER (ATENTE-SE AO ESTILO DE
#'     REFERÊNCIA)
#' @examples
#'
#' data(AndradeTb2.29)
#' str(AndradeTb2.29)
#'
#' hist(AndradeTb2.29,
#'      labels = TRUE,
#'      prob = TRUE,
#'      main = NULL,
#'      col = "darkturquoise",
#'      ylim = c(0, 0.071),
#'      xlab = "Biometria Total (em mm)",
#'      ylab = "Densidade")
#'
#' lines(density(AndradeTb2.29), lwd = 2)
#'
NULL
