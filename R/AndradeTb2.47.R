#' @name AndradeTb2.47
#' @title Notas Médias de Aroma de Café Torrado e Moído
#' @description Um estudo sobre vida de prateleira de café torrado e
#'     moído foi realizado. Os testes sensoriais foram iniciados a
#'     partir do nono dia de estocagem e, depois, a intervalos de mais
#'     ou menos sete dias. Em cada uma das seis sessões de avaliação
#'     sensorial três amostras (pacotes) foram obtidas ao acaso. Seis
#'     provadores treinados avaliaram as três amostras simultaneamente,
#'     julgando o produto quanto ao aroma em uma escala descritiva de 1
#'     a 6 pontos: 6 = excelente; 5 = bom; 4 = aceitável; 3 = pouco
#'     aceitável; 2 = inaceitável e 1 = não bebível.
#' @format Um \code{data.frame} com 18 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{sessao}}{Fator de 6 níveis qualitativos, que são as
#'     sessões de avaliação.}
#'
#' \item{\code{tempo}}{Tempo de estocagem, em dias.}
#'
#' \item{\code{amostra}}{Fator de 3 níveis qualitativos, que são os
#'     diferentes pacotes.}
#'
#' \item{\code{result}}{Resultado médio da equipe de provadores para
#'     cada amostra.}
#'
#' }
#' @keywords DBC
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.47, pág. 149)
#' @examples
#'
#' data(AndradeTb2.47)
#' str(AndradeTb2.47)
#'
#' library(lattice)
#' 
#' graf1 <- xyplot(result ~ sessao,
#'                 groups = amostra,
#'                 data = AndradeTb2.47,
#'                 type = c("p", "r"),
#'                 auto.key = list(title = "Pacote",
#'                                 cex.title = 1.1,
#'                                 columns = 3),
#'                 xlab = "Seção de Avaliação",
#'                 ylab = "Resultado Médio da Equipe de Provadores")
#'
#' graf2 <- xyplot(result ~ tempo,
#'                 groups = amostra,
#'                 data = AndradeTb2.47,
#'                 type = c("p", "r"),
#'                 auto.key = list(title = "Pacote",
#'                                 cex.title = 1.1,
#'                                 columns = 3),
#'                 xlab = "Tempo de Estocagem (dias)",
#'                 ylab = "Resultado Médio da Equipe de Provadores")
#'
#' print(graf1, position = c(0, 0.5, 1, 1), more = TRUE)
#'
#' print(graf2, position = c(0, 0, 1, 0.5))
#'
NULL