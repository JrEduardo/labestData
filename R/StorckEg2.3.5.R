#' @name StorckEg2.3.5
#' @title Rendimento de cultivares de alho
#' @description Dados de um experimento no delineamento quadrado latino,
#'     em que foram avaliados o rendimento (t/ha) de quatro cultivares
#'     (A, B, C e D) de alho. Na escolha do delineamento, o bloqueamento
#'     de linhas foi em razão da heterogeniedade da fertilidade entre 
#'     as curvas de nível (cada curva igual a uma linha) e o 
#'     bloqueamento de colunas foi devido à heterogeneidade entre os 
#'     tamanhos dos bulbos de alho (classes: florão, graúdo, mÉdio e 
#'     miúdo). 
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, 
#'     em que
#' 
#'
#' \describe{
#' 
#' \item{\code{filas}}{Fator que indica a fila (curva de fertilidade) do 
#'     cultivar (de 1 a 4).}
#'
#' \item{\code{col}}{Fator que indica a coluna (tamanho de bulbo) do 
#'     cultivar (de 1 a 4).}
#'
#' \item{\code{trat}}{Fator que indica o tipo de cultivar de alho 
#'     (A, B, C e D).}
#'
#' \item{\code{result}}{Rendimento (t/ha)}
#' }
#' @keywords DQL
#' @source Storck, L., & Garcia, B. C., & Lopes, S. J., & Estefanel, 
#'     V. (2011). Experimentação Vegetal (3th ed.). Santa Maria, RS: UFSM.
#'     (Tabela 2.3.5, pág 63.)
#' @examples
#'
#' data(StorckEg2.3.5)
#'
#' library(lattice)
#' xyplot(result~col|trat, data=StorckEg2.3.5,
#'        ylab="Rendimento",
#'        xlab="Coluna")
#' 
NULL
