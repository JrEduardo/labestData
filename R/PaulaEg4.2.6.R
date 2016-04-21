#' @name PaulaEg4.2.6
#' @title Perfis de Clientes de uma Loja nas Áreas de uma Cidade
#' @description Dados apresentados em Neter et al. (1996) sobre um
#'     estudo do perfil dos clientes em determinada loja oriundos de 110
#'     áreas de uma cidade. O interesse do estudo é relacionar o número
#'     esperado de clientes em cada área com as demais cinco variáveis
#'     explicativas mensuradas.
#' @format Um \code{data.frame} com 110 observações e 6 variáveis.
#'     \describe{
#' 
#' \item{\code{nclien}}{Número de clientes da loja na área.}
#' 
#' \item{\code{ndomic}}{Número de domicílios na área (em mil).}
#' 
#' \item{\code{renda}}{Renda média anual da área (em mil USD).}
#' 
#' \item{\code{idade}}{Idade média dos domicílios (em anos).}
#' 
#' \item{\code{distac}}{Distância entre a área e o concorrente mais
#'     próximo (em milhas).}
#' 
#' \item{\code{distal}}{Distância entre a área e a loja (em milhas).}
#'
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (0.0 pág. 000)
#'
#' @references Neter, J., Kutner, M. H., Nachtsheim, C. J., Wasserman,
#'     W. (1996). Applie Linear Regression Models (3tr ed.). Irwin,
#'     Illinois.
#' @examples
#'
#' data(PaulaEg4.2.6)
#' 
#' str(PaulaEg4.2.6)
#' 
#' library(lattice)
#' splom(PaulaEg4.2.6, type = c("p", "smooth"), lwd = 2)
#'
NULL
