#' @name DemetrioEx5.4.5
#' @title Estudo sobre a Avalia\enc{çã}{ca}o Visual do Grau da Infesta\enc{çã}{ca}o de
#'     Plantas por Doen\enc{ç}{c}as
#' 
#' @description Dados referentes a avaliação visual (realizada por um
#'     pesquisador) e real do grau de infestação de folhas de amendoim.
#'     
#'     A avaliação exige um treinamento específico para a cultura e
#'     a doença em questão. Por esse motivo, foram desenvolvidos
#'     programas computacionais que geram imagens de folhas com 
#'     diferentes porcentagens de infestação para o pesquisador estimar
#'     visualmente e em seguida compara-se com as porcentagens reais.
#' 
#' @format Um \code{data.frame} de 10 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{visual}}{Estimativas visuais do pesquisador.}
#'     
#'     \item{\code{real}}{Valores reais do grau de infestação.}
#'     
#' }
#' 
#' @keywords RS
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 5.4.5 pág. 165)
#' 
#' @examples 
#' 
#' data(DemetrioEx5.4.5)
#' 
#' library(lattice)
#' 
#' xyplot(visual ~ real, data = DemetrioEx5.4.5,
#'      main = "Real vs Visual",
#'      xlab = "Real",
#'      ylab = "Visual",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL
