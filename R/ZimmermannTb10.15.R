#' @name ZimmermannTb10.15
#' @title Adubação Após Pastagem em Cultivares de Arroz
#' @description Dados de um experimento conduzido em faixas, no
#'     delineamento de blocos ao acaso, para testar o efeito da
#'     aplicação de adubos em arroz após pastagem no qual foram
#'     utilizadas três cultivares. Nesta tabela constam os dados de de
#'     produção de arroz, em kg ha\eqn{^{-1}}, de duas dessas
#'     cultivares.
#' @format Um \code{data.frame} com 24 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica o
#'     bloco ao qual a observação pertence.}
#'
#' \item{\code{adub}}{Fator de níveis métricos que identifica a
#'     quantidade de adubação aplicada. Os níveis estão codificados na
#'     escala natural e não na escala real.}
#'
#' \item{\code{geno}}{Fator de níveis cateóricos que identifica o
#'    genótipo de arroz.}
#'
#' \item{\code{prod}}{Produção de arroz em kg ha\eqn{^{-1}}.}
#'
#' }
#' @details A formulação da adubação empregada no ensaio de cultivar de
#'     arroz teve a seguinte composição
#'
#' \tabular{rrrrrr}{
#'  Adub \tab N \tab P\eqn{_2}O\eqn{_5} \tab K\eqn{_2}O
#'     \tab Micros \tab Zn\cr
#'   1 \tab  6 \tab 30 \tab 27 \tab  45 \tab  2\cr
#'   2 \tab 12 \tab 60 \tab 54 \tab  90 \tab  4\cr
#'   3 \tab 18 \tab 90 \tab 81 \tab 135 \tab  6
#' }
#' @keywords DBC EF
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 10.15, pág. 210)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.15)
#'
#' str(ZimmermannTb10.15)
#'
#' xyplot(prod ~ adub | geno, groups = bloco, data = ZimmermannTb10.15,
#'        type = c("p", "a"),
#'        xlab = "Nível de adubação",
#'        ylab = expression("Produção de arroz"~(kg~ha^{-1})))
#'
NULL
