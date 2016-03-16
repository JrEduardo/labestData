#' @name MingotiAnA5
#' @title Seleção de alunos para um programa de pós-graduação
#' @description Um programa de pós-graduação dividiu 62 candidatos do 
#'     ano anterior em 3 grupos: (I) candidatos aprovados, 
#'     (II) candidatos na lista de espera e (III) candidatos que não
#'     foram aprovados. Para a nova seleção, os responsáveis pensam em
#'     considerar a nota na prova de conhecimento técnico e nota 
#'     atribuída ao histórico escolar.      
#' @format Um \code{data.frame} com 62 observações e 4 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{cand}}{Número de identificação do funcionário.}
#'     
#' \item{\code{grupo}}{Nota atribuída ao funcionário no seu desempenho
#'     nas vendas, variando entre 20,38 a 27,70.}
#'     
#' \item{\code{nota}}{Nota atribuída ao funcionário no seu desempenho
#'     no lucro da empresa, variando entre 22,45 a 30,58.}
#'     
#' \item{\code{histor}}{Nota atribuída ao funcionário no seu desempenho
#'     na captação de novos clientes, variando entre 23,58 a 28,82.}
#'     
#' }
#' @keywords Análise discriminante
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 234)
#' @examples
#'
#' data(MingotiAnA5)
#' 
#' library(lattice)
#' 
#' da3 <- reshape(MingotiAnA5, direction = "long", varying = list(3:4),
#'               v.names = "notas", timevar = "atributo")
#'
#' xyplot(notas ~ atributo, groups = grupo, data = da3, 
#'       jitter.y = TRUE, type = c("p", "a"))
#'
NULL