#' @name StorckEg2.3.5
#' @title Rendimento de Cultivares de Alho
#' @description Dados de um experimento no delineamento quadrado latino
#'     em que foram avaliados os rendimentos (t/ha) de quatro cultivares
#'     de alho. Na escolha do delineamento, o bloqueamento de linhas foi
#'     em razão da heterogeniedade da fertilidade entre as curvas de
#'     nível (cada curva igual a uma linha) e o bloqueamento de colunas
#'     foi devido à heterogeneidade entre os tamanhos dos bulbos de
#'     alho.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{fila}}{Fator que indica a fila ou curva nível,
#'     considerada para blocar a fertilidade do solo que muda entre as
#'     curvas de nível.}
#'
#' \item{\code{col}}{Fator que bloca o tamanho do bulbo de alho (florão,
#'     graudo, médio e miúdo) usado para o plantio.}
#'
#' \item{\code{trat}}{Fator categórico que representa as cultivares de
#'     alho.}
#'
#' \item{\code{rend}}{Rendimento, em toneladas por hectare.}
#'
#' }
#' @keywords DQL
#' @source STORCK et al. (2011), Tabela 2.3.5, pág. 63.
#' @examples
#'
#' library(lattice)
#'
#' data(StorckEg2.3.5)
#' str(StorckEg2.3.5)
#'
#' xyplot(rend ~ cult, data = StorckEg2.3.5,
#'        xlab = "Cultivares", ylab = "Rendimento")
#'
NULL

#' @name StorckTb101
#' @title Grupo de Experimentos de Competi\enc{çã}{ca}o de Cultivares de
#'     Milho
#' @description Grupo de experimentos, avaliando 6 cultivres de milho,
#'     conduzidos em 4 locais (4 ambientes) da região central d Rio
#'     Grande do Sul, no delineamento de blocos ao acaso com 4
#'     repetições. Foi avaliado o rendimento de grãos.
#' @format Um \code{data.frame} com 96 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{loc}}{Fator categórico que representa os locais
#'     (ambientes) de instalação dos experimentos.}
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares de
#'     milho.}
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos em cada
#'     um dos locais.}
#'
#' \item{\code{result}}{Rendimento de grãos, em kg por parcela.}
#'
#' }
#' @keywords GE
#' @source STORCK et al. (2011), Tabela 101, pág. 182.
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb101)
#' str(StorckTb101)
#'
#' xyplot(prod ~ cult | loc, groups = bloc, data = StorckTb101,
#'        type = "o", as.table = TRUE,
#'        xlab = "Cultivares",
#'        ylab = "Rendimento de grãos (kg/parcela)")
#'
NULL

#' @name StorckTb2
#' @title Peso das Plantas 30 ap\enc{ó}{o}s a Semeadura
#' @description Experimento referente ao peso das plantas aos 30 dias
#'     após a semeadura.
#' @format data.frame com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais que são os tratamento
#'     aplicados.}
#'
#' \item{rep}{Número inteiro que identifica as repetições de cada
#'     tratamento.}
#'
#' \item{peso}{Peso das plantas 30 dias após a semeadura.}
#'
#' }
#' @keywords DIC
#' @source STORCK et al. (2011), Tabela 2, pág. 21.
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb2)
#' str(StorckTb2)
#'
#' xyplot(peso ~ trat,
#'        data = StorckTb2,
#'        ylab = "Peso das plantas",
#'        xlab = "Tratamentos")
#'
NULL

#' @name StorckTb56
#' @title Experimento Bifatorial em Delineamento de Blocos Casualizados
#' @description Resultados (kg/parcela) em um experimento bifatorial 3
#'     \eqn{\times} 4 no delineamento de blocos ao acaso.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{espec}}{Fator de 3 níveis que representa espécies.}
#'
#' \item{\code{manejo}}{Fator de 4 níveis que representa formas de
#'     manejo.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis que são os blocos.}
#'
#' \item{\code{result}}{Resultados de produção (kg/parcela).}
#'
#' }
#' @keywords DBC FAT2
#' @source STORCK et al. (2011), Tabela 56, pg 134.
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb56)
#' str(StorckTb56)
#'
#' xyplot(prod ~ manejo, groups = espec, data = StorckTb56,
#'        type = c("p", "a"),
#'        xlab = "Tipos de manejo",
#'        ylab = "Produção (kg/parcela)",
#'        auto.key = list(title = "Espécie", cex.title = 1.1,
#'                        columns = 3))
#'
NULL

#' @name StorckTb60
#' @title Experimento Bifatorial em Delineamento de Blocos Ao Acaso
#' @description Resultados fictícios (kg/parcela) de um experimento
#'     bifatorial 4 \eqn{\times} 3, no delineamento de blocos ao acaso,
#'     com 4 repetições.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa 4 cultivares de
#'     milho.}
#'
#' \item{\code{manejo}}{Fator cetegórico que representa 3 formas de
#'     manejo. }
#'
#' \item{\code{bloc}}{Fator categórico que representa 4 blocos.}
#'
#' \item{\code{result}}{Resultados (kg/parcela) medido em cada parcela.}
#'
#' }
#' @keywords DBC FAT2
#' @source STORCK et al. (2011), Tabela 60, pág. 138.
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb60)
#' str(StorckTb60)
#'
#' xyplot(prod ~ cult, groups = manejo, data = StorckTb60,
#'        type = c("p", "a"),
#'        xlab = "Tipos de manejo",
#'        ylab = "Produção (kg/parcela)",
#'        auto.key = list(title = "Manejo", cex.title = 1.1,
#'                        columns = 3))
#'
NULL

#' @name StorckTb67
#' @title Efeito da Dose de NPK na Produ\enc{çã}{ca}o de Cultivares de
#'     Milho
#' @description Resultados ficitícios (kg/parcela) de um experimento
#'     bifatorial 3 \eqn{\times} 5 no delineamento de blocos ao acaso
#'     com 4 repetições.
#' @format Um \code{data.frame} com 60 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa 3 cultivares de
#'     trigo.}
#'
#' \item{\code{dose}}{Fator métrico que representa 5 doses equidistantes
#'     de NPK, em kg ha\eqn{^{-1}}.}
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos.}
#'
#' \item{\code{prod}}{Produção (kg parcela\eqn{^{-1}}) nas unidades
#'     experimentais.}
#'
#' }
#' @keywords DBC FAT2
#' @source STORCK et al. (2011), Tabela 67, pág. 144.
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb67)
#' str(StorckTb67)
#'
#' xyplot(prod ~ dose, data = StorckTb67,
#'        groups = cult, type = c("p", "a"),
#'        xlab = "Dose de NPK (kg/ha)",
#'        ylab = "Produção (kg/parcela)",
#'        auto.key = list(title = "Cultivar", cex.title = 1.1,
#'                        columns = 3))
#'
NULL

#' @name StorckTb74
#' @aliases StorckTb88
#' @title \enc{É}{E}poca e Densidade de Semeadura na Produ\enc{çã}{ca}o
#'     de Milho
#' @description Resultados ficitícios de um experimento fatorial 3
#'     \eqn{\times} 5 no delineamento de blocos ao acaso, com arranjo
#'     dos fatores em parcela subdividida, que estudou o efeito da época
#'     e densidade de semeadura na produção de milho. O fator época de
#'     semeadura foi casualizado às parcelas de cada bloco e a densidade
#'     de semeadura casualizado às subparcelas dentro de um mesmo nível
#'     de época de semeadura.
#' @format Um \code{data.frame} com 75 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{epoc}}{Fator categórico que representa 3 épocas de
#'     semeadura de milho.}
#'
#' \item{\code{dens}}{Fator métrico que representa 5 densidades de
#'     semeadura: 30, 35, 40, 45 e 50 mil plantas ha\eqn{^{-1}}.}
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos.}
#'
#' \item{\code{result}}{Produção (kg/parcela).}
#'
#' }
#' @details Este é um experimento que poderia ter sido feito em arranjo
#'     fatorial sem ser com parcelas subdivididas. No entanto,
#'     aumentaria o número de vizinhanças entre parcelas de época
#'     diferente já que a casualização seria de \eqn{3 \times 5 = 15}
#'     tratamentos em cada bloco. Isso iria complicar a semeadura
#'     mecanizada pois o trator iria manobrar sobre as parcelas da época
#'     1 quando fosse semear as parcelas da época 2. Por essa razão o
#'     experimento em parcelas subdivididas é considerado. Não foi
#'     portanto uma verdadeira restrição de casualização (como acontece
#'     com camadas do solo ou tempo) mas sim uma dificuldade logística.
#' @keywords DIC PS
#' @source STORCK et al. (2011), Tabela 74, pág. 150 e Tabela 88,
#'     pág. 168.
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb74)
#' str(StorckTb74)
#'
#' xyplot(prod ~ dens, groups = epoc, data = StorckTb74,
#'        type = c("p", "a"),
#'        xlab = expression("Densidade de plantio" ~
#'                              (""%*% mil ~ plantas~ha^{-1})),
#'        ylab = "Produção (kg/parcela)",
#'        auto.key = list(title = "Época de semeadura", cex.title = 1.1,
#'                        columns = 3))
#'
NULL

#' @name StorckTb8
#' @title Experimento no Delimeamento Inteiramente Casualizado Com Um
#'     Fator
#' @description Dados referentes a um experimento conduzido no
#'     delineamento inteiramente casualizado. Não há expicação prática
#'     para as variáveis do experimento.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator com seis níveis que representam os
#'     tratamentos aplicados.}
#'
#' \item{\code{rept}}{Inteiro que representa as repetições de cada
#'     tratamento.}
#'
#' \item{\code{res}}{Representa a variável resposta observada.}
#'
#' }
#' @keywords DIC
#' @source STORCK et al. (2011), Tabela 8, pág. 33.
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb8)
#' str(StorckTb8)
#'
#' xyplot(res ~ trat, data = StorckTb8, jitter.x = TRUE,
#'        xlab = "Tratamentos", ylab = "Resposta")
#'
NULL
