#' @name DemetrioTb1.2
#' @title Irrigação em Batata
#' 
#' @description Este experimento refere-se a irrigação em batata
#'     plantada em terra roxa estruturada. Foram medidas as lâminas de
#'     água a diferentes distâncias do aspersor. O objetivo foi mensurar
#'     a produtividade, já que, no tipo de solo utilizado no experimento
#'     (solo argiloso), espera-se que o excesso de água diminua a
#'     produtividade.
#' 
#' @format Um \code{data.frame} com 12 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{lamina}}{Espessura da lâmina de água medida em
#'     milímetros (mm).}
#'     
#'     \item{\code{prod}}{Produtividade medida em toneladas de batatas
#'      por hectare (t/ha).}
#' 
#' }
#' 
#' @keywords batata aspersor produtividade
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 1.2 pág. 9)
#' 
#' @examples
#' 
#' library(lattice)
#' 
#' data(DemetrioTb1.2)
#' 
#' xyplot(prod ~ lamina, data = DemetrioTb1.2,
#'        main = "Produção VS Lâmina de Água",
#'        xlab = "Lâmina de água (mm)",
#'        ylab = "Produção (t/ha)",
#'        type = c("p", "r"), col.line = 3)
NULL
