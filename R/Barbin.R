#' @name BarbinEx1
#' @title Altura de \emph{Pinus elliottii} aos 10 Anos de Idade
#' @description Os dados referem-se à altura (m) de \emph{Pinus
#'     elliottii}, var. \emph{elliottii}, com 10 anos de idade plantadas
#'     no espaçamento 2\eqn{\times}2,5 metros.
#' @format Um vetor com 50 elementos de valor numérico.
#' @keywords AAS
#' @source BARBIN (2013), Exercício 1, pág. 199.
#' @examples
#'
#' library(latticeExtra)
#' library(ggplot2)
#'
#' data(BarbinEx1)
#'
#' str(BarbinEx1)
#'
#' # Histograma + densidade com graphics.
#' ht <- hist(BarbinEx1, prob = TRUE, main = NULL, col = "orange",
#'            ylab = "Densidade de probabilidade",
#'            xlab = expression("Altura de árvores de"
#'                              ~italic("Pinus elliottii")))
#' lines(density(BarbinEx1))
#' rug(BarbinEx1)
#'
#' # Histograma + densidade com lattice.
#' histogram(BarbinEx1, breaks = ht$breaks, col = "orange",
#'           type = "density",
#'           ylab = "Densidade de probabilidade",
#'           xlab = expression("Altura de árvores de"
#'                             ~italic("Pinus elliottii")))
#'     latticeExtra::as.layer(densityplot(BarbinEx1,
#'                                        plot.points = FALSE,
#'                                        col = 1))
#'     latticeExtra::layer(panel.rug(x = x, col = 1))
#'
#' # Histograma + densidade com ggplot2.
#' ggplot()
#'     geom_histogram(mapping = aes(x = BarbinEx1, y = ..density..),
#'                    breaks = ht$breaks, fill = "orange", col = 1)
#'     geom_rug(mapping = aes(x = BarbinEx1), sides = "b")
#'     geom_density(mapping = aes(x = BarbinEx1, y = ..density..))
#'     labs(y = "Densidade de probabilidade",
#'          x = expression("Altura de árvores de"
#'                         ~italic("Pinus elliottii")))
#'
#' # Acumulada empírica.
#' plot(ecdf(BarbinEx1))
#' ecdfplot(BarbinEx1, col = 1)
#' qplot(BarbinEx1,
#'       ecdf(x = BarbinEx1)(BarbinEx1),
#'       geom = "step")
#'
NULL

#' @name BarbinEx13
#' @title Di\enc{â}{a}metro M\enc{é}{e}dio do Tronco de
#'     Esp\enc{é}{e}cies de Eucalipto
#' @description Diâmetro médio (cm), aos 5 anos de idade, de plantas
#'     úteis da parcela de um ensaio fatorial 2 \eqn{\times} 4, em
#'     blocos casualizados com 3 repetições, conduzido por H. A. Mello e
#'     outros, Mogi-Guaçu (1966-1971).
#' @format Um \code{data.frame} com 24 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{euca}}{Fator categórico, seus níveis são espécies de
#'     eucalipto.}
#'
#' \item{\code{dist}}{Fator que representa a distância ou espaçamento de
#'     plantio das plantas, em metros.}
#'
#' \item{\code{bloc}}{Fator que representa os blocos do experimento.}
#'
#' \item{\code{diam}}{Diâmetro médio (cm) das plantas úteis da parcela.}
#'
#' }
#' @keywords DBC FAT2
#' @source BARBIN (2013), Exercício 13, pág. 206.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx13)
#'
#' str(BarbinEx13)
#'
#' xyplot(diam ~ dist, groups = euca, data = BarbinEx13,
#'        type = c("p", "a"),
#'        xlab = "Distância entre ávores (m)",
#'        ylab = "Diâmetro da árvore (cm)",
#'        auto.key = list(columns = 2, cex.title = 1, font = 3,
#'                        title = expression("Espécies de"
#'                                           ~italic(Eucaliptus))))
#'
NULL

#' @name BarbinEx14
#' @title Produ\enc{çã}{ca}o de Milho em Ensaio Fatorial de NPK
#' @description Ensaio fatorial de adubação NPK, fatorial \eqn{2^3}, com
#'     resultados referentes à produção de milho (kg ha\eqn{^{-1}}),
#'     conduzido em delineamento de blocos casualizados em Limoeiro, PE.
#' @format Um \code{data.frame} com 24 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{N}}{Fator métrico com níveis codificados para adubação
#'     com nitrogênio.}
#'
#' \item{\code{P}}{Fator métrico com níveis codificados para adubação
#'     com fósforo.}
#'
#' \item{\code{K}}{Fator métrico com níveis codificados para adubação
#'     com potássio.}
#'
#' \item{\code{bloc}}{Fator que identifica os blocos do experimento.}
#'
#' \item{\code{prod}}{Produção de milho, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC FAT2K
#' @source BARBIN (2013), Exercício 14, pág. 206.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx14)
#'
#' str(BarbinEx14)
#'
#' xyplot(prod ~ as.factor(N) | as.factor(P),
#'        groups = K, data = BarbinEx14, type = c("p", "a"),
#'        xlab = "Nitrogênio",
#'        ylab = "Diâmetro da árvore (cm)",
#'        strip = strip.custom(strip.names = TRUE, var.name = "Fósforo"),
#'        auto.key = list(columns = 2, cex.title = 1,
#'                        title = "Potássio"))
#'
NULL

#' @name BarbinEx16
#' @title Efeito de Sistemas de Plantio na Produtividade de
#'     Cana-de-açúcar
#' @description Produtividade de cana-de-açúcar, cultivar CB-43-5,
#'     obtidos de dois sistemas de plantio nos dois primeiros cortes
#'     (cana planta e cana soca) em um ensaio de parcelas subdivididas
#'     em delineamento inteiramente casualizado. Os níveis de sistema de
#'     plantio (\code{sulc}) são aleatorizados às parcelas, segundo um
#'     delineamento inteiramente casualizado, portanto este é o fator da
#'     parcela. O corte é o fator da subparcela porque são medidas
#'     repetidas (no tempo, inclusive) na mesma unidade experimental.
#' @format Um \code{data.frame} com 40 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cort}}{Fator categórico em que os níveis indicam o
#'     primeiro (corte da cana planta) e o segundo (corte da planta
#'     soca) corte da cultura.}
#'
#' \item{\code{sulc}}{Fator categórico cujos níveis identificam o tipo
#'     de sistema de plantio: com sulco simples ou com sulco duplo. O
#'     espaçamento entre sulcos simples foi de 1,40 m e entre sulcos
#'     duplos foi de 0,60 \eqn{\times} 1,40 m.}
#'
#' \item{\code{rept}}{Identifica as repetições.}
#'
#' \item{\code{prod}}{Produtividade da cana-de-açúcar, em toneladas por
#'     hectare.}
#'
#' }
#' @keywords PS
#' @source BARBIN (2013), Exercício 16, pág. 208.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx16)
#'
#' str(BarbinEx16)
#'
#' xyplot(prod ~ sulc, groups = cort,
#'        data = BarbinEx16, type = c("p", "a"),
#'        xlab = "Sulco",
#'        ylab = "Produtividade de cana-de-açúcar (t/ha)",
#'        auto.key = list(columns = 2, cex.title = 1,
#'                        title = "Corte da cana"))
#'
#' xyplot(prod ~ cort, groups = interaction(sulc, rept),
#'        data = BarbinEx16, type = "b",
#'        xlab = "Corte",
#'        ylab = "Produtividade de cana-de-açúcar (t/ha)")
#'
NULL

#' @name BarbinEx17
#' @title Efeito do Espa\enc{ç}{c}amento na Produtividade de Laranjeira
#'     Val\enc{ê}{e}ncia
#' @description Dados de produtividade de laranja, em kg por planta, de
#'     um ensaio em blocos casualizados estudando o efeito do
#'     espaçamento de plantio de laranjeira Valência (clone novo) sobre
#'     \emph{trifoliata} realizado na Estação Experimental de Limeira
#'     (IAC, SP). As colheitas foram obtidas em 5 anos consecutivos,
#'     portanto, trata-se de um estudo longitudinal.
#' @format Um \code{data.frame} com 100 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{ano}}{Ano da colheita do pomar.}
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos do
#'     experimento.}
#'
#' \item{\code{espac}}{Fator categórico que representa os espaçamentos
#'     (m) utilizados para plantio das plantas.}
#'
#' \item{\code{prod}}{Produtividade de laranja, em kg por planta (média
#'     de duas plantas por parcela).}
#'
#' }
#' @keywords PS
#' @source BARBIN (2013), Exercício 17, pág. 209.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx17)
#'
#' str(BarbinEx17)
#'
#' with(BarbinEx17,
#'      addmargins(tapply(prod, list(espac, bloc, ano), FUN = sum)))
#'
#' xyplot(prod ~ espac | as.factor(ano), groups = bloc,
#'        data = BarbinEx17, type = c("p", "a"), as.table = TRUE,
#'        xlab = "Espaçamento de plantio (m x m)",
#'        ylab = "Produtividade de laranja (kg/planta)",
#'        auto.key = list(columns = 2, cex.title = 1,
#'                        title = "Blocos"))
#'
#' xyplot(prod ~ ano, groups = espac,
#'        data = BarbinEx17, type = c("p", "a"),
#'        xlab = "Ano da colheita",
#'        ylab = "Produtividade de laranja (kg/planta)",
#'        auto.key = list(corner = c(0.05, 0.95),
#'                        columns = 2, cex.title = 1,
#'                        title = "Espaçamentos (m x m)"))
#'
NULL

#' @name BarbinEx18
#' @title Altura de Plantas de Esp\enc{é}{e}cies de Eucalipto em
#'     V\enc{á}{a}rios Locais
#' @description Dados referentes à altura de plantas de eucalipto, com 3
#'     anos de idade, em ensaios inteiramente casualizados estudando o
#'     efeito da espécie de eucalipto em vários municípios (grupo de
#'     experimentos). Os ensaios foram conduzidos pelo Instituto
#'     Florestal, em Tupi/SP. Todos os ensaios receberam uma calagem e
#'     uma adubação completa.
#' @format Um \code{data.frame} com 100 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{loc}}{Fator categórico que representa os locais
#'     (municípios) onde foram feitos os ensaios.}
#'
#' \item{\code{espec}}{Fator categórico que representa as espécies de
#'     eucalipto.}
#'
#' \item{\code{rept}}{Números que identificam as repetições de cada
#'     espécie dentro de cada local.}
#'
#' \item{\code{alt}}{Altura (m) de plantas de eucalipto com 3 anos de
#'     idade.}
#'
#' }
#' @keywords GE
#' @source BARBIN (2013), Exercício 18, pág. 210.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx18)
#'
#' str(BarbinEx18)
#'
#' xyplot(alt ~ espec | loc,
#'        data = BarbinEx18, type = c("p", "a"), jitter.x = TRUE,
#'        as.table = TRUE,
#'        xlab = "Espécies de eucalipto",
#'        ylab = "Altura de plantas com 3 anos de idade (m)",
#'        scales = list(x = list(rot = 90)))
#'
NULL

#' @name BarbinEx3
#' @title Podrid\enc{ã}{a}o Mole de Manga em Fun\enc{çã}{ca}o do
#'     Tratamento T\enc{é}{e}rmico
#' @description Os dados referem-se as notas (médias de 6 frutos)
#'     atribuídas a podridão mole de manga (fruto) sob diferentes
#'     tratamentos térmicos, de um experimento inteiramente ao acaso
#'     realizado pelo Prof. Vladimir R. Sampaio, do Departamento de
#'     Horticultura, ESALQ-USP.
#' @format Um \code{data.frame} com 28 observações e 2 variáveis, em que
#' \describe{
#'
#' \item{\code{tterm}}{Fator categórico que indica o tratamento
#'     térmico.}
#'
#' \item{\code{nota}}{Nota atribuída a podridão mole de manga, valor
#'     resultante da média de 6 frutos avaliados.}
#'
#' }
#' @keywords DIC
#' @source BARBIN (2013), Exercício 3, pág. 119.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx3)
#'
#' str(BarbinEx3)
#'
#' xyplot(nota ~ tterm, data = BarbinEx3,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos térmicos",
#'        ylab = "Nota")
#'
NULL

#' @name BarbinEx8
#' @title Controle Qu\enc{í}{i}mico do Damping-off em Eucalipto
#' @description Os dados referem-se à altura (cm) de mudas de
#'     \emph{E. saligna} Sm., de um ensaio inteiramente casualizado, de
#'     controle químico de "Damping-off" conduzido por Krugner (1971).
#' @format Um \code{data.frame} com 45 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{fung}}{Fator categórico que indica o fungicida usado:
#'     \code{Test} - Testemunha (sem fungicida), \code{Dithane} -
#'     Dithane M-45 e Thiran.}
#'
#' \item{\code{fumig}}{Fator categórico que indica o fumigante de solo
#'     usado: Vapan, \code{Brom} - Brometo de metila,
#'     Basamid, PNCB e \code{Test} - Testemunha (sem fumigante).}
#'
#' \item{\code{alt}}{Altura da muda (cm).}
#'
#' }
#' @keywords DBC
#' @source BARBIN (2013), Exercício 8, pág. 202.
#'
#'  Krugner, T. L. Controle químico do "damping-off" em
#'     eucalipto. Piracicaba, 1971. 60p. Dissertação (Mestrado) - Escola
#'     Superior de Agricultura "Luiz de Queiroz"/USP.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx8)
#'
#' str(BarbinEx8)
#'
#' xyplot(alt ~ fumig, groups = fung, data = BarbinEx8,
#'        type = c("p", "a"),
#'        xlab = "Fumigantes de solo",
#'        ylab = expression("Altura de mudas de"
#'                          ~italic("E. saligna")~(cm)),
#'        auto.key = list(columns = 3,
#'                        title = "Fungicidas", cex.title = 1.1))
#'
NULL

#' @name BarbinEx9
#' @aliases BarbinEx10
#' @title Ensaio de Competi\enc{çã}{ca}o de Clones de Laranja
#'     Pera-do-Rio
#' @description Ensaio de competição de 13 clones de laranja Pera-do-Rio
#'     onde foram obtidos os resultados de produção, em kg de frutos
#'     planta, para o ano de 1987, em que as plantas estavam com 16 anos
#'     de idade. O ensaio foi conduzido pelo Dr. Joaquim Teófilo Sobrino
#'     em delineamento de blocos ao acaso na Estação Experimental de
#'     Limeira, do IAC.
#' @format Um \code{data.frame} com 78 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clon}}{Fator categórico que identifica os clones de
#'     laranja.}
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos do
#'     ensaio.}
#'
#' \item{\code{plan}}{Fator que identifica de qual planta, de duas por
#'     parcela, corresponde a produção.}
#'
#' \item{\code{prod}}{Produção de frutos, em kg de frutos por planta.}
#'
#' }
#' @details O dataset \code{BarbinEx10} resulta de uma agregação dos
#'     dados do \code{BarbinEx9} que está disponível na seção Examples.
#' @keywords DBC
#' @source BARBIN (2013), Exercício 9, pág. 203.
#' @examples
#'
#' library(latticeExtra)
#'
#' data(BarbinEx9)
#'
#' str(BarbinEx9)
#'
#' xyplot(prod ~ reorder(clon, prod), data = BarbinEx9,
#'        groups = bloc, type = c("p", "a"),
#'        xlab = "Clones de laranja Pera-do-Rio",
#'        ylab = "Produção (kg de frutos/planta)",
#'        auto.key = list(columns = 3, title = "Bloco", cex.title = 1),
#'        scales = list(x = list(tck = c(1, 0))),
#'        xscale.components = function(...) {
#'                 ans <- xscale.components.default(...)
#'                 ans$bottom$ticks$tck <-
#'                     1.8 * (ans$bottom$ticks$at %% 2 + 0.25)
#'                 ans
#'        })
#'
#' BarbinEx10 <- aggregate(prod ~ bloc + clon,
#'                         data = BarbinEx9, FUN = mean)
#'
#' i <- with(BarbinEx10,
#'           c(which(clon == "Tardia CV4" & bloc == "I"),
#'             which(clon == "Paulo Rosa" & bloc == "II")))
#' BarbinEx10$prod[i] <- NA
#'
NULL

#' @name BarbinPg104
#' @title Produ\enc{çã}{ca}o de Cultivares de Cana-de-a\enc{çú}{cu}car
#' @description Experimento em delineamento quadrado latino que avaliou
#'     a produção de cultivares de cana-de-açúcar.
#' @format Um \code{data.frame} com 25 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator de níveis categóricos que são as linhas do
#'     quadrado.}
#'
#' \item{\code{colun}}{Fator de níveis categóricos que são as colunas do
#'     quadrado.}
#'
#' \item{\code{cult}}{Fator de níveis categóricos que são as cultivares
#'     de cana-de-açúcar estudadas.}
#'
#' \item{\code{prod}}{Produção de cana-de-açúcar, em kg
#'     parcela\eqn{^{-1}}.}
#'
#' }
#' @keywords DQL
#' @source BARBIN (2013), pág. 104.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinPg104)
#'
#' str(BarbinPg104)
#'
#' xyplot(prod ~ cult, data = BarbinPg104,
#'        jitter.x = TRUE,
#'        col = with(BarbinPg104, as.integer(linha)),
#'        pch = with(BarbinPg104, as.integer(colun)),
#'        xlab = "Porta enxertos para laranjeira",
#'        ylab = "Número médio de frutos por planta")
#'
#' levelplot(prod ~ linha + colun,
#'           data = BarbinPg104, aspect = "iso",
#'           xlab = "Linha", ylab = "Coluna",
#'           lbl = as.character(BarbinPg104$cult),
#'           col.regions = colorRampPalette(colors = c("yellow", "blue")),
#'           panel = function(x, y, z, lbl, ...) {
#'               panel.levelplot(x, y, z, ...)
#'               panel.text(x = x, y = y, labels = lbl, pos = 3)
#'               panel.text(x = x, y = y,
#'                          labels = sprintf("%0.2f", z),
#'                          pos = 1, cex = 1)
#'           })
#'
NULL

#' @name BarbinPg114
#' @title Influ\enc{ê}{e}ncia do Aparelho e Operador na
#'     Medi\enc{çã}{ca}o de \enc{Á}{A}rvores
#' @description Dados de um experimento fatorial 5 \eqn{\times} 4, em
#'     delineamento de blocos casualizados, sobre e influência do
#'     aparelho e do operador na determinação de altura de árvores, aos
#'     7 anos de idade, de \emph{Eucaliptus saligna} (Simões,  Mello e
#'     Barbin, 1967).
#'
#'     Cinco aparelhos ou instrumentos de mensuração (hipsômetro de
#'     Blume-Leiss, hipsômetro de Haga, hipsômetro Weise, prancheta
#'     dendrométrica e trena) foram testados por 4 operadores resultando
#'     em 20 combinações. Diante de uma árvore era sorteado um número no
#'     universo de 1 a 20 que representava um operador \eqn{\times}
#'     aparelho. Cada operador com um aparelho efetuava duas medições
#'     consecutivas da mesma árvore (bloco) e a média era registrada. O
#'     sorteio continuava até as combinações fossem realizadas na
#'     árvore, então passava-se para a próxima árvore. Evidentemente, a
#'     medida feita com o trena ficava sempre para o final (testemunha).
#' @format Um \code{data.frame} com 200 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{apar}}{Fator de níveis categóricos que identifica os
#'     aparelhos utilizados pelos operadores para medição da altura
#'     total das árvores.}
#'
#' \item{\code{oper}}{Fator de níveis categóricos que identifica os
#'     operadores que utilizaram os aparelhos.}
#'
#' \item{\code{bloc}}{Fator de níveis categóricos que representa as
#'     árvores que foram medidas. Cada árvore funciona como um bloco
#'     onde todos os operadores x aparelhos foram empregados.}
#'
#' \item{\code{alt}}{Altura total da árvore (média de duas medidas
#'     consecutivas, em metros) determinada por cada aparelho ou
#'     instrumento de medida e operador.}
#'
#' }
#' @keywords DBC FAT2
#' @source BARBIN (2013), pág. 114.
#'
#' Simões, J. W., Mello, H. A., Barbin, D. (1967). Eficiência dos
#'     aparelhos e e influência do operador na medição de altura total
#'     de árvores. O Solo, Piracicaba, v.2, p.57-63.
#' @examples
#'
#' library(latticeExtra)
#'
#' data(BarbinPg114)
#'
#' str(BarbinPg114)
#'
#' xyplot(alt ~ oper | bloc, data = BarbinPg114,
#'        groups = apar, type = "b",
#'        as.table = TRUE,
#'        auto.key = list(space = "top", columns = 2,
#'                        title = "Aparelhos", cex.title = 1.1),
#'        strip = strip.custom(strip.names = TRUE,
#'                             sep = " ", var.name = "Árvore"),
#'        xlab = "Operadores",
#'        ylab = "Altura total (m)")
#'     layer(panel.abline(h = mean(y), lwd = 2))
#'
#' xyplot(alt ~ oper | apar, data = BarbinPg114,
#'        groups = bloc, type = "b",
#'        as.table = TRUE,
#'        auto.key = list(space = "right",
#'                        title = "Árvore", cex.title = 1.1),
#'        xlab = "Operadores",
#'        ylab = "Altura total (m)")
#'
NULL

#' @name BarbinPg125
#' @title Aduba\enc{çã}{ca}o NPK no Cafeeiro
#' @description Experimento no o delineamento de blocos casualizados que
#'     estudou a combinação de nitrogênio, fósforo e potássio, cada um
#'     com dois níveis (fatorial \eqn{2^3}), na produção de café
#'     coco. Os níveis dos fertilizantes foram codificados para 0 e 1 e
#'     não foi informada as doses reais de cada um deles.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{N}}{Inteiro que codifica dois níveis de nitrogênio (0 e
#'     1).}
#'
#' \item{\code{P}}{Inteiro que codifica dois níveis de fósforo (0 e 1).}
#'
#' \item{\code{K}}{Inteiro que codifica dois níveis de potássio (0 e
#'     1).}
#'
#' \item{\code{bloc}}{Fator de níveis categóricos considerado para
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de café coco, em kg por parcela de 105
#'     metros quadrados (12 covas no espaçamento 3,5 \eqn{\times} 2,5
#'     m).}
#'
#' }
#' @keywords DBC FAT2K
#' @source BARBIN (2013), pág. 125).
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinPg125)
#'
#' str(BarbinPg125)
#'
#' xyplot(prod ~ as.factor(N) | as.factor(P), data = BarbinPg125,
#'        groups = K, type = c("p", "a"),
#'        auto.key = list(space = "top", columns = 2,
#'                        title = "Potássio (K)", cex.title = 1.1),
#'        strip = strip.custom(strip.names = TRUE,
#'                             sep = " ", var.name = "Fósforo (P)"),
#'        xlab = "Nitrogênio (N)",
#'        ylab = "Produção de café coco (kg)")
#'
NULL

#' @name BarbinPg137
#' @title Aduba\enc{çã}{ca}o NPK na Produ\enc{çã}{ca}o de
#'     Algod\enc{ã}{a}o Herb\enc{á}{a}ceo
#' @description Produção de algodão herbáceo de um ensaio de adubação
#'     NPK \eqn{3^3} com confundimento (grupo W) de dois graus de
#'     liberdade da interação tripla. Cada combinação NPK teve duas
#'     repetições por bloco e o ensaio foi conduzido por Cavalcanti
#'     (1977) em Pernambuco.
#' @format Um \code{data.frame} com 54 observações e 6 variáveis, em que
#'     \describe{
#'
#' \item{\code{N}}{Dose de nitrogênio (kg ha\eqn{^{-1}}) usada na
#'     adubação.}
#'
#' \item{\code{P}}{Dose de fósforo (kg ha\eqn{^{-1}}) usada na
#'     adubação.}
#'
#' \item{\code{K}}{Dose de potássio (kg ha\eqn{^{-1}}) usada na
#'     adubação.}
#'
#' \item{\code{bloc}}{Fator de níveis categóricos considerado para
#'     controle local.}
#'
#' \item{\code{rept}}{Número inteiro que identifica as repetições das
#'     celas experimentais dentro dos blocos.}
#'
#' \item{\code{prod}}{Produção de algodão herbáceo, em kg
#'     ha\eqn{^{-1}}.}
#'
#' }
#' @keywords FAT3K confundimento
#' @source BARBIN (2013), pág. 137.
#'
#' Cavalcanti, F. B. (1977). A adubação mineral na cultura do algodão
#'     (\emph{Gossypium hirsutum} L.) no Estado de
#'     Pernambuco. Dissertação de Mestrado, Escola Superior de
#'     Agricultura "Luiz de Queiroz"/USP, Piracicaba.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinPg137)
#'
#' str(BarbinPg137)
#'
#' x <- c("N", "P", "K")
#' forms <- unlist(lapply(mapply(FUN = combn,
#'                               m = 1:2,
#'                               MoreArgs = list(x = x)),
#'                        FUN = function(x) {
#'                            paste0("~",
#'                                   apply(x,
#'                                         MARGIN = 2,
#'                                         FUN = paste,
#'                                         collapse = "+"))
#'                        }))
#'
#' # A frequência das combinações simples e duplas.
#' sapply(forms, xtabs, data = BarbinPg137)
#'
#' xyplot(prod ~ as.factor(N) | as.factor(P), data = BarbinPg137,
#'        groups = K, type = c("p", "a"),
#'        auto.key = list(space = "top", columns = 3,
#'                        title = expression(
#'                            "Potássio"~(K * ", " * kg~ha^{-1})),
#'                        cex.title = 1.1),
#'        strip = strip.custom(strip.names = TRUE, sep = " = ",
#'                             var.name = expression(
#'                                 "Fósforo"~(P * ", " * kg~ha^{-1}))),
#'        xlab = expression("Nitrogênio"~(N * ", " * kg~ha^{-1})),
#'        ylab = expression(
#'            "Produção de algodão herbáceo"~(kg~ha^{-1})))
#'
NULL

#' @name BarbinPg156
#' @title Aplica\enc{çã}{ca}o de Aduba\enc{çã}{ca}o Fosfatada na
#'     Produ\enc{çã}{ca}o de Milho
#' @description Dados de um ensaio de adubação fosfatada em milho,
#'     realizado no esquema de parcelas subdivididas em delineamento de
#'     blocos ao acaso, que avaliou o efeito da forma de aplicação da
#'     adubação (cova, sulco ou lanço) e da dose de fósforo na produção
#'     de milho.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{aplic}}{Fator categórico cujos níveis são a forma de
#'     aplicação da adubação fosfatada.}
#'
#' \item{\code{adub}}{Fator métrico cujos níveis representam a
#'     quantidade de adubação fosfatada, em kg ha\eqn{^{-1}}, feita com
#'     \eqn{\textrm{P}_2 \textrm{O}_5}.}
#'
#' \item{\code{bloc}}{Fator de níveis categóricos cujos níveis
#'     representam os blocos do experimento.}
#'
#' \item{\code{prod}}{Produção de milho (kg ha\eqn{^{-1}}).}
#'
#' }
#' @keywords PS
#' @source BARBIN (2013), pág. 156.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinPg156)
#'
#' str(BarbinPg156)
#'
#' xyplot(prod ~ adub | aplic, data = BarbinPg156,
#'        groups = bloc, type = "o",
#'        as.table = TRUE,
#'        xlab = expression(
#'            "Dose de adubação fosfatada"~(kg~P[2]*O[5]~ha^{-1})),
#'        ylab = expression("Produção de milho"~(kg~ha^{-1})))
#'
NULL

#' @name BarbinPg167
#' @title Produ\enc{çã}{ca}o de Porta-enxertos para Laranjeira em
#'     V\enc{á}{a}rias Safras
#' @description Dados de produção de laranja de um ensaio de competição
#'     de porta-enxertos para laranjeira Valência realizado na Estação
#'     Experimental de Limeira, em delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 90 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{anos}}{Fator métrico cujos níveis são os anos em que
#'     foram feitas as colheitas do experimento.}
#'
#' \item{\code{penx}}{Fator categórico cujos níveis são os
#'     porta-enxertos utilizados para o cultivo de laranja.}
#'
#' \item{\code{bloc}}{Fator categórico cujos níveis são os blocos do
#'     experimento.}
#'
#' \item{\code{prod}}{Produção (kg/planta) obtida pela média de duas
#'     plantas por parcela.}
#'
#' }
#' @keywords PS
#' @source BARBIN (2013), pág. 167.
#' @examples
#'
#' library(latticeExtra)
#'
#' data(BarbinPg167)
#'
#' str(BarbinPg167)
#'
#' xyplot(prod ~ anos, data = BarbinPg167,
#'        groups = penx, type = c("p", "a"), lwd = 2,
#'        auto.key = list(columns = 2,
#'                        title = "Porta-enxertos", cex.title = 1.1),
#'        as.table = TRUE,
#'        xlab = "Safras",
#'        ylab = expression("Produção de laranja"~(kg~planta^{-1})))
#'     layer(panel.xyplot(groups = with(BarbinPg167,
#'                                      interaction(bloc, penx)),
#'                        type = "a", lty = 2,
#'                        lwd = 1, col = "gray50", ...))
#'
NULL

#' @name BarbinPg177
#' @title Altura de Prog\enc{ê}{e}nies de \emph{E. grandis} em
#'     Tr\enc{ê}{e}s Locais
#' @description Dados de experimento que mediu a altura (m) de árvores
#'     seis progênies de \emph{Eucaliptus grandis} em experimentos
#'     instalados em 3 locais sob o delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 72 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{prog}}{Fator categóricos cujos níveis são progênies de
#'     \emph{Eucaliptus grandis}.}
#'
#' \item{\code{bloc}}{Fator categórico cujos níveis identificam os
#'     blocos do experimento.}
#'
#' \item{\code{local}}{Fator categóricos cujos níveis são os locais onde
#'     os experimentos foram instalados.}
#'
#' \item{\code{alt}}{Altura média de 25 plantas por parcela (m) aos 7
#'     anos de idade.}
#'
#' }
#' @keywords GE
#' @source BARBIN (2013), pág. 177.
#' @examples
#'
#' library(latticeExtra)
#'
#' data(BarbinPg177)
#'
#' str(BarbinPg177)
#'
#' xyplot(alt ~ prog | local, data = BarbinPg177,
#'        groups = bloc, type = "o",
#'        as.table = TRUE,
#'        xlab = "Progênies",
#'        ylab = "Altura de plantas (m)")
#'
NULL

#' @name BarbinPg25
#' @title Enraizamento de Estacas de P\enc{ê}{e}ssego
#' @description Dados adaptados de Zambão, Sampaio e Barbin (1982), onde
#'     foram comparadas quatro cultivares de pêssego quando ao
#'     enraizamento de estacas. Experimento foi instalado em
#'     delineamento inteiramente casualizado.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis categóricos que representa as
#'     cultivares de pêssego estudadas.}
#'
#' \item{\code{estac}}{Número de estacas enraizadas. Total de estacas
#'     plantadas foi 20 em cada parcela.}
#'
#' }
#'
#' O atributo \code{missings} é um vetor com números que indicam a
#'     posição das observações consideradas perdidas para se ilustrar a
#'     análise do experimento com número não igual de repetições.
#' @keywords DIC
#' @source BARBIN (2013), pág. 25.
#'
#' Sambão, J. C., Sampaio, V. R., Barbin, D. (1982). Enraizamento de
#'     estacas herbáceas de pessegueiro (\emph{Prunus persica}
#'     L.). Anais da E.S.A. "Luiz de Queiróz", Piracicaba, v.39,
#'     1039-1045.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinPg25)
#'
#' str(BarbinPg25)
#'
#' xyplot(estac ~ cult, data = BarbinPg25, jitter.x = TRUE,
#'        xlab = "Cultivares de pêssego",
#'        ylab = "Número de estacas enraizadas do total de 20")
#'
NULL

#' @name BarbinPg72
#' @title Produ\enc{çã}{ca}o de Laranjeira sob Diferentes Porta-enxertos
#' @description Dados de produção de laranjeira aos 12 anos de idade sob
#'     diferentes porta-enxertos. O experimento foi instalado em
#'     delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 27 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{portenx}}{Fator de níveis categóricos que distingue os
#'     porta-enxertos usados para laranjeira.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica os
#'     blocos do experimento.}
#'
#' \item{\code{prod}}{Produção, em número médio de frutos por planta.}
#'
#' }
#'
#' O atributo \code{missings} é um vetor com o número das observações
#'     consideradas como perdidas para ilustrar como fazer a análise do
#'     experimento desbalanceado.
#' @keywords DBC
#' @source BARBIN (2013), pág. 72.
#'
#' Teófilo Sobrinho, J. (1972). Comportamento da laranjeira valência
#'     (\emph{Citrus sinensis} L., Osbeck) sob diferentes
#'     porta-enxertos. Tese (Doutorado). Escola Superior de Agricultura
#'     "Luíz de Queiróz"/USP, Piracicaba.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinPg72)
#'
#' str(BarbinPg72)
#'
#' xyplot(portenx ~ prod, data = BarbinPg72,
#'        jitter.x = TRUE, groups = bloco, type = "o",
#'        xlab = "Porta enxertos para laranjeira",
#'        ylab = "Número médio de frutos por planta")
#'
NULL
