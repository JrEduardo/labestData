#' @name PaulaEg1.12.2
#' @title Pacientes com Processo Infecioso Pulmonar
#' @description Um total de 175 pacientes com processo infecioso 
#'     pulmonar atendidos no hospital no período acima foram classificados
#'     por algumas variáveis. 
#'      
#' @format Um \code{data.frame} com 175 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{tipo}}{Tipo de tumor (maligno, benigno).}
#' 
#' \item{\code{idade}}{Idade do paciente (em anos).}
#' 
#' \item{\code{sexo}}{Sexo do paciente (masculino, feminino).}
#' 
#' \item{\code{hl}}{Intensidade da célula histiócitos-linfócitos (ausente, 
#'     discreta, moderada, intensa).}
#' 
#' \item{\code{ff}}{Intensidade da célula fibrose-frouxa (ausente, 
#'     discreta, moderada, intensa).}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.12.2, p?g. 85)
#'
#' @examples
#'
#' data(PaulaEg1.12.2)
#' 
#' str(PaulaEg1.12.2)
#' 
#' library(lattice)
#' bwplot(idade ~ hl | tipo, 
#'        data = PaulaEg1.12.2,
#'        ylab = "Idade",
#'        xlab = "Intensidade da célula histiócitos-linfócitos")
#' 
#' bwplot(idade ~ ff | tipo, 
#'        data = PaulaEg1.12.2,
#'        ylab = "Idade",
#'        xlab = "Intensidade da célula fibrose-frouxa")
#'        
#' barchart(table(PaulaEg1.12.2$tipo,PaulaEg1.12.2$hl), 
#' auto.key=list(space="top", columns=2, 
#'               cex.title=1,
#'               rectangles = TRUE, 
#'               points=FALSE))
#'
NULL