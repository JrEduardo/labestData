#' @name PaulaEg5.5.3
#' @title Ensaio cl\enc{í}{i}nico da pr\enc{é}{e}-exist\enc{ê}{e}ncia de placa dent\enc{á}{a}ria
#' @description Dados de um ensaio clínico realizado com 109 indivíduos, 
#'     distribuídos de forma aleatória para receberem um líquido
#'     tipo A (34 indivíduos), um líquido tipo B (36 indivíduos) ou um
#'     líquido controle (39 indivíduos). Placas dentárias foram 
#'     avaliadas e classificadas segundo um escore no início do 
#'     tratamento, após 3 e 6 meses.
#'     
#' @format Um \code{data.frame} com 323 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{volunt}}{Identificação do paciente voluntário.}
#' 
#' \item{\code{period}}{Momento de avaliação: (1 = início do tratamento,
#'    2 = após 3 meses e 3 = após 6 meses.}
#' 
#' \item{\code{trat}}{Tipo de tratamento (1 = placebo, 2 = líquido A e
#'     3 = líquido B.}
#' 
#' \item{\code{escore}}{Escore atribuído às placas dentárias.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exemplo 5.5.3, pág. 390)
#' 
#' @references Hadgu, A. e Koch, G. (1999). Application of generalized 
#' estimating equations to a dental randomized clinical trial. Journal 
#' of Biopharmaceutical Statistics 9, 161-178.
#' 
#' @examples
#' 
#' data(PaulaEg5.5.3)
#' 
#' require(lattice)
#' 
#' xyplot(escore ~ period | trat, groups = volunt,
#'       xlab = 'Período', ylab = 'Escore', type = c("p", "a"), 
#'       data = PaulaEg5.5.3)
#'       
NULL
