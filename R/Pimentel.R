#' @name PimentelEg4.2
#' @title Alimenta\enc{çã}{ca}o de Porcos
#' @description Experimento (fictício) de alimentação de porcos em que
#'     se usaram quatro rações (A, B, C, D), cada uma fornecida a cinco
#'     animais escolhidos ao acaso. A tabela apresenta os aumentos de
#'     peso observados.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{racoes}}{Fator de 4 níveis qualitativos, usado para
#'     identificar o tipo de ração.}
#'
#' \item{\code{ganhopeso}}{Aumento do peso dos porcos, observado em
#'     quilogramas.}
#'
#' }
#' @keywords DIC
#' @source PIMENTEL-GOMES (2009).
#' @examples
#'
#' data(PimentelEg4.2)
#' str(PimentelEg4.2)
#'
#' plot(PimentelEg4.2,
#'      xlab = "Rações",
#'      ylab = "Ganho de Peso")
#'
NULL

#' @name PimentelEg5.2
#' @title Competi\enc{çã}{ca}o de Variedades de Batatinha
#' @description Experimento de competição de variedades de batatinha
#'     feito pelo Engenheiro Agrônomo Oscar A. Garay em Balcare,
#'     Argentina. O experimento foi realizado em blocos casualizados.
#' @format Um \code{data.frame} com 32 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{variedade}}{Fator de 8 níveis qualitativos que são as
#'     variedades de batatinha.}
#'
#' \item{producao}{Produção de batatinha, em ton ha\eqn{^{-1}}, nas
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source PIMENTEL-GOMES (2009), Exemplo 5.2.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelEg5.2)
#' str(PimentelEg5.2)
#'
#' xyplot(producao ~ variedade,
#'        groups = bloco,
#'        data = PimentelEg5.2,
#'        type = "b",
#'        ylab = expression(Produção~(t~ha^{-1})),
#'        xlab = "Variedades de batatinha")
#'
NULL

#' @name PimentelEg6.2
#' @title Ensaio de Competi\enc{çã}{ca}o de Variedades de
#'     Cana-de-a\enc{çú}{cu}car
#' @description Experimento de competição de variedades de
#'     cana-de-açúcar no qual foram usadas cinco variedades dispostas
#'     em um delineamento quadrado latino 5 \eqn{\times} 5.
#' @format Um \code{data.frame} com 25 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as linhas do quadrado latino.}
#'
#' \item{\code{coluna}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as colunas do quadrado latino.}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos que são as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{prod}}{Dados de produção de cana-planta, em kg por
#'     parcela.}
#'
#' }
#' @keywords DQL
#' @source PIMENTEL-GOMES (2009), Exemplo 6.2, pág. 96.
#' @examples
#'
#' data(PimentelEg6.2)
#' str(PimentelEg6.2)
#'
#' library(lattice)
#'
#' xyplot(prod ~ varied,
#'        data = PimentelEg6.2,
#'        xlab = "Variedades de cana-de-açúcar",
#'        ylab = "Produção (kg/parcela)")
#'
#' levelplot(prod ~ linha + coluna,
#'           data = PimentelEg6.2, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts, ...)
#'               panel.text(x, y,
#'                          PimentelEg6.2$varied[subscripts],
#'                          cex = 0.8)
#'               panel.text(x, y, z, pos = 1)
#'           })
#'
NULL

#' @name PimentelEg7.3
#' @title Experimento Fatorial de Aduba\enc{çã}{ca}o Mineral e com
#'     Vinha\enc{ç}{c}a
#' @description Experimento fatorial, \eqn{2^{2}}, em que os fatores
#'     eram adubação mineral completa e adubação com vinhaça. As
#'     parcelas foram dispostas em blocos ao acaso.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{mineral}}{Fator de 2 níveis codificados que representa a
#'     adubação mineral completa, sendo que o valor 1 indica adubação e
#'     -1 indica ausência.}
#'
#' \item{\code{vinhaca}}{Fator de 2 níveis codificados que represetna a
#'     adubação com vinhaça, sendo que o valor 1 indica presença e -1
#'     ausência.}
#'
#' \item{\code{y}}{Resposta observada nas parcelas do experimento.}
#'
#' }
#' @keywords FAT2K
#' @source PIMENTEL-GOMES (2009), Exemplo 7.3, pág. 119.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelEg7.3)
#' str(PimentelEg7.3)
#'
#' xtabs(~mineral + vinhaca, data = PimentelEg7.3)
#'
#' xyplot(y ~ mineral | factor(vinhaca),
#'        groups = bloco, type = "o",
#'        data = PimentelEg7.3,
#'        xlab = "Níveis codificados de adubação mineral",
#'        ylab = "Resposta",
#'        strip = strip.custom(factor.levels =
#'                                 c("Sem Vinhaça",
#'                                   "Com Vinhaça")))
#'
NULL

#' @name PimentelEg7.4
#' @title Experimento de Aduba\enc{çã}{ca}o com Torta de Filtro e Adubo
#'     Mineral
#' @description Experimento fatorial 2\eqn{^{2}} em que os fatores eram
#'     adubo mineral e torta dos filtros de Oliver de usinas de açúcar.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos usado para
#'     controle local.}
#'
#' \item{\code{mineral}}{Fator de 2 níveis métricos codificados que
#'     representa a aplicação de adubo mineral, sendo que a variável
#'     assume 1, quando houver adubo mineral na parcela e -1 caso
#'     contrário.}
#'
#' \item{\code{torta}}{Fator de 2 níveis métricos codificados que
#'     representa a utilização de torta dos filtros de Oliver de usinas
#'     de açúcar, sendo que a variável assume 1, quando houver torta na
#'     parcela e -1 caso contrário.}
#'
#' \item{\code{y}}{Respoata medida no ensaio.}
#'
#' }
#' @keywords FAT2K
#' @source PIMENTEL-GOMES (2009), Exemplo 7.4, pág. 120.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelEg7.4)
#' str(PimentelEg7.4)
#'
#' xtabs(~mineral + torta, data = PimentelEg7.4)
#'
#' xyplot(y ~ mineral, groups = torta, data = PimentelEg7.4,
#'        type = c("p", "a"),
#'        xlab = "Adubo mineral",
#'        ylab = "Resposta",
#'        auto.key = list(columns = 2,
#'                        title = "Torta", cex.title = 1.1))
#'
NULL

#' @name PimentelEx5.8.4
#' @title Dados de Produ\enc{çã}{ca}o de Cana-planta em Ensaio de
#'     Variedades
#' @description Experimento em blocos casualizados realizado pela
#'     Cooperativa dos Usineiros do Oeste do Estado de São Paulo,
#'     referente à produção de cana-planta de um ensaio de variedades
#'     de cana.
#' @format Um \code{data.frame} com 28 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{variedade}}{Fator de 7 níveis qualitativos, que são as
#'     variedades cana-de-açúcar.}
#'
#' \item{\code{prod}}{Dados de produção de cana-planta.}
#'
#' }
#' @keywords DBC
#' @source PIMENTEL-GOMES (2009).
#' @examples
#'
#' library(lattice)
#'
#' xyplot(prod ~ variedade,
#'        groups = bloco,
#'        data = PimentelEx5.8.4,
#'        xlab = "Variedade",
#'        ylab = "Produção")
#'
NULL

#' @name PimentelEx5.8.5
#' @title Competi\enc{çã}{ca}o de Variedades de Mandioca
#' @description Experimento em blocos ao acaso, realizado pelo Instituto
#'     de Pesquisas Agronômicas do Leste (atual Centro Nacional de
#'     Pesquisa de Mandioca e Fruticultura da Embrapa), em Cruz das
#'     Almas, BA, referente a produção em uma competição de variedades
#'     de mandioca.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{variedade}}{Fator de 6 níveis qualitativos, que são os
#'     diferentes tipos de mandioca.}
#'
#' \item{\code{prod}}{Produção de mandioca, em t ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC
#' @source PIMENTEL-GOMES (2009).
#' @examples
#'
#' library(lattice)
#'
#' xyplot(prod ~ variedade,
#'        groups = bloco,
#'        data = PimentelEx5.8.5,
#'        xlab = "Variedade",
#'        ylab = "Produção")
#'
NULL

#' @name PimentelEx6.6.3
#' @title Efeito da Idade de Castra\enc{çã}{ca}o no Ganho de Peso de
#'     Su\enc{í}{i}nos
#' @description Ensaio de alimentação de suínos, no qual foi usado um
#'     quadrado latino de 4 x 4, com os resultados referentes aos ganhos
#'     de peso ao fim de 252 dias.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{leitegada}}{Fator de 4 níveis qualitativos, usado para
#'     identificar as 4 diferentes ninhadas de leitões, cada leitegada
#'     representa uma linha do quadrado latino de 4 x 4.}
#'
#' \item{\code{coluna}}{Fator de 4 níveis qualitativos, usado para
#'     identificar as colunas do quadrado latino de 4 x 4, essas colunas
#'     objetivam controlar a variação de peso dos leitões dentro de cada
#'     leitegada.}
#'
#' \item{\code{castracao}}{Fator de 4 níveis qualitativos, que são os
#'     diferentes tipos de tratamento, são eles: castração aos 7, 21 e
#'     56 dias de idade e a testemunha, que são animais não castrados.}
#'
#' \item{\code{peso}}{Ganho de peso, em kg, ao fim de 252 dias.}
#'
#' }
#' @keywords DQL
#' @source PIMENTEL-GOMES (2009), Exercício 6.6.3, página 110.
#' @examples
#'
#' data(PimentelEx6.6.3)
#' str(PimentelEx6.6.3)
#'
#' library(lattice)
#'
#' xyplot(peso ~ castracao,
#'        jitter.x = TRUE,
#'        data = PimentelEx6.6.3,
#'        xlab = "Castração",
#'        ylab = "Ganho de peso (kg)")
#'
#' levelplot(peso ~ leitegada + coluna,
#'           data = PimentelEx6.6.3, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts, ...)
#'               panel.text(x, y,
#'                          PimentelEx6.6.3$castracao[subscripts],
#'                          cex = 0.8)
#'               panel.text(x, y, z, pos = 1)
#'           })
#'
NULL

#' @name PimentelPg142
#' @title Grupo de Experimentos Fatoriais de Aduba\enc{çã}{ca}o de
#'     Algod\enc{ã}{a}o
#' @description Grupo de experimentos de adubação de algodão, todos em
#'     delineamento inteiramente casualiado com 4 repetições cada. As
#'     combinações de NPK formam em ensaio fatorial com um tratamento
#'     adicional.
#' @format Um \code{data.frame} com 100 observações e 6 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de 5 níveis qualitativos que identifica da
#'     um dos experimentos.}
#'
#' \item{\code{rept}}{Inteiro de 4 níveis que indica as repetições dos
#'     tratamentos em cada experimento.}
#'
#' \item{\code{N}}{Fator de 3 níveis códificados que refere-se as doses
#'     de nitrogênio na composição do adubo, sendo que a variável assume
#'     0 quando não houver nitrogênio, 1 quando houver uma dose e 2
#'     quando houverem duas doses.}
#'
#' \item{\code{P}}{Fator de 2 níveis códificados que refere-se as doses
#'     de fósforo na composição do adubo, sendo que a variável assume
#'     0 quando não houver fósforo, 1 quando houver uma dose.}
#'
#' \item{\code{K}}{Fator de 3 níveis códificados que refere-se as doses
#'     de potássio na composição do adubo, sendo que a variável assume
#'     0 quando não houver potássio, 1 quando houver uma dose e 2
#'     quando houverem duas doses.}
#'
#' \item{\code{y}}{Variável resposta do experimento.}
#'
#' }
#' @details Esse experimento é um ensaio fatorial com um tratamento
#'     adicional, a testemunha, que é a combinção das doses zero de NPK,
#'     e a porção fatorial é a combinação das doses 1 e 2 de NK tendo o
#'     P fixo em 1.
#' @keywords GE FATADI
#' @source PIMENTEL-GOMES (2009), página 142.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg142)
#' str(PimentelPg142)
#'
#' # Fatorial incompleto ou fatorial completo 2 x 2 + 1 testemunha.
#' ftable(xtabs(~P + N + K, data = PimentelPg142))
#'
#' xyplot(y ~ interaction(N, P, K, drop = TRUE, sep = ""),
#'        groups = exper, data = PimentelPg142,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        auto.key = list(title = "Ensaio", cex.title = 1.1,
#'                        columns = 3),
#'        xlab = "Combinação de adubações NPK (níveis codificados)",
#'        ylab = "Resposta")
#'
NULL

#' @name PimentelPg185
#' @title Experimento em Blocos Incompletos do Tipo III
#' @description Experimento em blocos incompletos equilibrados, no qual
#'     temos \eqn{v = 5} tratamentos, \eqn{\lambda = 3}, \eqn{k = 3}
#'     parcelas por bloco, \eqn{r = 6} repetições e \eqn{b = 10} blocos,
#'     em que os blocos não podem ser agrupados em repetições ou grupos
#'     de repetições.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 10 níveis qualitativos, usado para
#'     controle local. Cada bloco tem tamanho 3.}
#'
#' \item{\code{trat}}{Fator de 5 níveis qualitativos que são os
#'     tratamentos estudados do experimento.}
#'
#' \item{y}{Variável resposta medida nas parcelas.}
#'
#' }
#' @keywords DBI
#' @source PIMENTEL-GOMES (2009), Página 185.
#' @examples
#'
#' data(PimentelPg185)
#' str(PimentelPg185)
#'
#' library(lattice)
#'
#' xyplot(y ~ trat,
#'        groups = bloc, type = "o",
#'        data = PimentelPg185,
#'        auto.key = list(title = "Blocos",
#'                        cex.title = 1.1, columns = 5),
#'        xlab = "Tratamento",
#'        ylab = "Resposta")
#'
NULL

#' @name PimentelPg267
#' @title Percentual de Sorgo na Ra\enc{çã}{ca}o para Desenvolvimento de
#'     Pintos
#' @description Ensaio de Torres e Pimentel-Gomes (1959) em que foram
#'     estudadas 4 rações para pintos dos dois sexos (machos e fêmeas),
#'     instalado um delineamento inteiramente casualizado com duas
#'     repetições. Cada parcela tinha inicialmente 13 aves, mas algumas
#'     morreram, de modo que, na pesagem final, com 4 semanas de idade,
#'     algumas parcelas contavam com 12 animais apenas.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{sexo}}{Fator de 2 níveis qualitativos, que refere-se ao
#'     sexo do animal: masculino (M) e eeminino (F).}
#'
#' \item{\code{sorgo}}{Fator de 4 níveis que representa o percentual de
#'     sorgo na ração: 0, 10, 20 e 30\% de sorgo na ração.}
#'
#' \item{\code{animais}}{Número de aves na parcela.}
#'
#' \item{\code{peso}}{Peso total das aves da parcela, em decagramas.}
#'
#' }
#' @keywords DIC FAT2
#' @source PIMENTEL-GOMES (2009), Página 267.
#'
#' Torres, A. P., Pimentel-Gomes, F. Substituição de subprodutos de
#'     trigo pelo sorgo moído na alimentação de pintos. Escola Superior
#'     de Agricultura "Luiz de Queiroz". Anais E.S.A. "Luiz de Queiroz"
#'     16:251-76, 1959.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg267)
#' str(PimentelPg267)
#'
#' xyplot(peso ~ sorgo, data = PimentelPg267,
#'        groups = sexo, type = c("a", "p"),
#'        auto.key = list(title = "Sexo", cex.title = 1,
#'                        columns = 2),
#'        ylab = "Peso Total (em decagramas)",
#'        xlab = "Percentual de sorgo na ração (%)")
#'
NULL

#' @name PimentelPg269
#' @title Influ\enc{ê}{e}ncia da Case\enc{í}{i}na Iodada na
#'     Nutri\enc{çã}{ca}o de Vacas Leiteiras
#' @description Ensaio realizado pelo Departamento de Produção Animal da
#'     Secretaria de Agricultura paulista, que teve por objetivo estudar
#'     a influência da caseína iodada na nutrição de vacas leiteiras.
#'     Consideram-se 4 tratamentos (doses de caseina iodada) e
#'     fizeram-se 3 repetições, em blocos casualizados com cada bloco
#'     contendo 4 parcelas, cada uma constituída por uma vaca. As vacas
#'     eram todas mestiças Flamengo \eqn{\times} Caracu e todas paridas
#'     em maio, junho ou julho de 1959. Os blocos foram organizados
#'     tendo em vista a produção de leite das vacas em um período
#'     pré-experimental de duas semanas, em que todas recebiam uma
#'     mesma ração. No primeiro bloco ficaram as vacas de maior
#'     produção, no segundo as 4 seguintes e no terceiro as de menor
#'     produção.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 3 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{caseina}}{Dosagem de caseína iodada, em gramas.}
#'
#' \item{\code{prod}}{Produção de leite das vacas, em kg, no período
#'     experimental de 8 semanas (de 20 de Outubro a 15 Dezembro de
#'     1959).}
#'
#' }
#'
#' A observação da testemunha (0 de caseina) no bloco 3 foi perdida. O
#'     valor correspondente foi estimado por métodos de imputação de
#'     parcela perdida discutido na seção 5.4 de PIMENTEL-GOMES (2009).
#' @keywords DBC
#' @source PIMENTEL-GOMES (2009), página 269.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg269)
#' str(PimentelPg269)
#'
#' xyplot(prod ~ caseina, data = PimentelPg269,
#'        groups = bloc, type = "o",
#'        auto.key = list(title = "Bloco", cex.title = 1.1,
#'                        columns = 3),
#'        ylab = "Produção de Leite (kg)",
#'        xlab = "Dose de Caseína Iodada (gramas)")
#'
#' # Parcela perdida que foi estimada.
#' subset(PimentelPg269, caseina == 0 & bloc == "3")
#'
#' i <- with(PimentelPg269, caseina == 0 & bloc == "3")
#' PimentelPg269$prod[i] <- NA
#'
NULL

#' @name PimentelPg382
#' @title M\enc{é}{e}todos de Enxertia no Pegamento de Mudas
#' @description Experimento com 3 métodos de enxertia em que haviam 200
#'     estacas para cada método e pegaram 180, 150 e 145 desses
#'     enxertos, respectivamente.
#' @format Um \code{data.frame} com 3 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{metod}}{Fator de 3 níveis qualitativos que são os métodos
#'     de enxertia das estacas.}
#'
#' \item{\code{morta}}{Quantidade de estacas mortas, ou seja, que não
#'     pegaram com a enxertia, de um total de 200 estacas.}
#'
#' \item{\code{viva}}{Quantidade de estacas vivas, ou seja, que pegaram
#'     com a enxertia, de um total de 200 estacas. A soma das vivas com
#'     as mortas é 200, portanto.}
#'
#' }
#' @keywords contingência
#' @source PIMENTEL-GOMES (2009), página 382.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg382)
#' str(PimentelPg382)
#'
#' barchart(morta + viva ~ metod, data = PimentelPg382,
#'          stack = TRUE, auto.key = TRUE,
#'          xlab = "Método de enxertia",
#'          ylab = "Quantidade de estacas")
#'
NULL

#' @name PimentelPg72
#' @title Ensaio de alimenta\enc{çã}{ca}o de Leitoas
#' @description Experimento realizado pelos técnicos Manoel Becker, Luís
#'     Paulin Neto, Geraldo Leme da Rocha e Benjamin Cintra, no qual
#'     dois tratamentos foram estudados (feno de alfafa e feno de
#'     quicuio), aplicados a 8 leitoas Duroc Jersey bem homogêneas.  A
#'     quatro leitoas, escolhidas por sorteio, foi fornecida a ração com
#'     feno de alfafa, e as quatro restantes, a ração com feno de
#'     quicuio. Por fim, foram observados os ganhos de peso no período
#'     experimental de três meses.
#' @format Um \code{data.frame} com 8 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{feno}}{Fator de 2 níveis qualitativos, que são os
#'     diferentes tipos de feno.}
#'
#' \item{\code{ganhopeso}}{Aumento do peso das leitoas, observado em
#'     quilogramas.}
#'
#' }
#' @keywords DIC
#' @source PIMENTEL-GOMES (2009).
#' @examples
#'
#' data(PimentelPg72)
#' str(PimentelPg72)
#'
#' library(lattice)
#'
#' xyplot(jitter(ganhopeso) ~ feno,
#'        data = PimentelPg72,
#'        xlab = "Tipo de Feno",
#'        ylab = "Ganho de Peso")
#'
NULL

#' @name PimentelPg91
#' @title Preparo com do solo na Produ\enc{çã}{ca}o de Milho
#' @description Experimento em blocos casualizados realizado pelo
#'     Engenheiro Agrônomo Duvilio Ometto, com 2 tratamentos (aradura
#'     profunda e aradura superficial) e 6 blocos com 2 repetições cada.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{aradura}}{Fator de 2 níveis qualitativos, que são os
#'     diferentes tipos de aradura.}
#'
#' \item{\code{bloco}}{Fator de 6 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de milho, em kg por parcela de
#'     200\eqn{m^{2}}.}
#'
#' }
#' @keywords DBC replicata
#' @source PIMENTEL-GOMES (2009).
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg91)
#' str(PimentelPg91)
#'
#' xtabs(~aradura + bloco, data = PimentelPg91)
#'
#' xyplot(prod ~ aradura,
#'        jitter.x = TRUE,
#'        groups = bloco,
#'        type = "o",
#'        data = PimentelPg91,
#'        xlab = "Aradura",
#'        ylab = "Produção")
#'
NULL

#' @name PimentelTb10.3.1
#' @title Experimento em Blocos Imcompletos do Tipo I
#' @description Experimento em blocos imcompletos equilibrados, no qual
#'     temos \eqn{v = 8} tratamentos, \eqn{\lambda = 1}, \eqn{k = 2}
#'     parcelas por bloco, \eqn{r = 7} repetições, \eqn{b = 28} blocos e
#'     \eqn{E = 55\%}, em que os blocos podem ser agrupados em
#'     repetições.
#' @format Um \code{data.frame} com 56 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator de 7 níveis qualitativos, que são as
#'     repetições do experimento. Cada repetição tem 4 blocos de tamanho
#'     2 e um parcela de cada variedade (8 parcelas).}
#'
#' \item{\code{trat}}{Fator de 8 níveis qualitativos que são os
#'     tratamentos estudados.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis qualitativos que identifica os
#'     blocos dentro de uma repetição. Os blocos tem tamanho 2.}
#'
#' \item{y}{Variável medida nas parcelas. Unidade de medida não
#'     fornecida.}
#'
#' }
#' @keywords DBI
#' @source PIMENTEL-GOMES (2009), Tabela 10.3.1, pág. 190.
#' @examples
#'
#' data(PimentelTb10.3.1)
#' str(PimentelTb10.3.1)
#'
#' library(lattice)
#'
#' xtabs(~trat + rept, data = PimentelTb10.3.1)
#' ftable(xtabs(~trat + bloc + rept, data = PimentelTb10.3.1))
#'
#' xyplot(y ~ trat,
#'        groups = bloc,
#'        auto.key = list(title = "Blocos",
#'                        cex.title = 1.1, columns = 4),
#'        data = PimentelTb10.3.1,
#'        xlab = "Variedade",
#'        ylab = "Resposta")
#'
NULL

#' @name PimentelTb10.4.1
#' @title Experimento em Blocos Imcompletos do Tipo II
#' @description Experimento em blocos imcompletos equilibrados, no qual
#'     temos \eqn{v = 7} tratamentos, \eqn{\lambda = 1}, \eqn{r = 6}
#'     repetições, \eqn{b = 21} blocos, em que os blocos são reunidos em
#'     grupos de duas repetições.
#' @format Um \code{data.frame} com 42 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{grup}}{Fator de 3 níveis qualitativos, que são os
#'     os grupos de blocos. Cada grupo tem 7 blocos de tamanho 2 e duas
#'     repetições de cada tratamento (14 parcelas).}
#'
#' \item{\code{bloc}}{Fator de 7 níveis qualitativos, usado para
#'     identificar os blocos em cada grupo. O bloco tem tamanho 2.}
#'
#' \item{\code{trat}}{Fator de 7 níveis qualitativos que são os
#'     tratamentos estudados.}
#'
#' \item{y}{Variável resposta do experimento medida nas parcelas.}
#'
#' }
#' @keywords DBI
#' @source PIMENTEL-GOMES (2009), Tabela 10.4.1, pág. 192.
#' @examples
#'
#' data(PimentelTb10.4.1)
#' str(PimentelTb10.4.1)
#'
#' library(lattice)
#'
#' xtabs(~trat + grup, data = PimentelTb10.4.1)
#' ftable(xtabs(~trat + grup + bloc, data = PimentelTb10.4.1))
#'
#' xyplot(y ~ trat,
#'        groups = grup,
#'        auto.key = list(title = "Grupo",
#'                        cex.title = 1.1, columns = 2),
#'        data = PimentelTb10.4.1,
#'        xlab = "Tratamento",
#'        ylab = "Resposta")
#'
NULL

#' @name PimentelTb10.6.1
#' @title Experimento do Tipo III com recupera\enc{çã}{ca}o da
#'     informa\enc{çã}{ca}o interblocos
#' @description Experimento em blocos incompletos equilibrados do Tipo
#'     III com recuperação da informação interblocos, conduzido por
#'     Fraga e Costa (1950). Neste experimento temos \eqn{b = v = 13},
#'     \eqn{k = r = 4}, \eqn{\lambda = 1} e os valores de \eqn{z}
#'     obtidos através de \eqn{z = \arcsin \left (\sqrt
#'     \frac{p}{100}\right)}, onde \eqn{p} é a porcentagem amostral de
#'     plantas sadias.
#' @format Um \code{data.frame} com 52 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 13 níveis qualitativos, usado para
#'     controle local. Cada bloco tem tamanho 4.}
#'
#' \item{\code{trat}}{Fator de 13 níveis qualitativos que são os
#'     tratamentos estudados do experimento.}
#'
#' \item{z}{Variável expressa como transformação da porcentagem \eqn{p}
#'     de plantas sadias, obtida através de \eqn{z = \arcsin \left(
#'     \sqrt \frac{p}{100}\right)}. Essa transformação é utilizada em
#'     dados de proporção para estabilizar a variância e assim atender o
#'     pressuposto de homocedasticidade da análise de variância.}
#'
#' }
#' @keywords DBI proporção unitário
#' @source PIMENTEL-GOMES (2009), Tabela 10.6.1, pág. 198.
#'
#' Fraga Jr., C. G., Costa, A. S. Análise de um experimento para combate
#'     de vira-cabeça do tomateiro. Bragantia, 10: 305--316, 1950.
#' @examples
#'
#' data(PimentelTb10.6.1)
#' str(PimentelTb10.6.1)
#'
#' library(lattice)
#'
#' xtabs(~trat + bloc, data = PimentelTb10.6.1)
#'
#' xyplot(z ~ trat,
#'        groups = bloc, jitter.x = TRUE,
#'        auto.key = list(title = "Blocos",
#'                        cex.title = 1, columns = 5),
#'        data = PimentelTb10.6.1,
#'        xlab = "Tratamentos",
#'        ylab = expression(arcsin * sqrt(p/100)))
#'
NULL

#' @name PimentelTb11.3.1
#' @title Experimento de Produ\enc{çã}{ca}o de Milho em L\enc{á}{a}tice
#'     Quadrado
#' @description Produção de milho em um experimento em delineamento
#'     reticulado quadrado triplo de 4 \eqn{times} 4 avaliando a 16
#'     híbridos de milho, em que \eqn{m = 3} repetições ortogonais e
#'     \eqn{k = 4} blocos de tamanho 4.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator de 3 níveis qualitativos, que são as 3
#'     repetições do quadrado triplo. Cada repetição tem 4 blocos de
#'     tamanho 4 e 1 repetição de cada tratamento que não ocorrem juntas
#'     nos blocos de uma mesma repetição.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis qualitativos, usado para
#'     controle local. Cada bloco tem tamanho 4.}
#'
#' \item{\code{hibr}}{Fator de 16 níveis qualitativos, que são os
#'     híbridos de milho.}
#'
#' \item{prod}{Produção de milho, em kg/parcela.}
#'
#' }
#' @keywords LAT RET
#' @source PIMENTEL-GOMES (2009), Tabela 11.3.1, pág. 215.
#' @examples
#'
#' data(PimentelTb11.3.1)
#' str(PimentelTb11.3.1)
#'
#' xtabs(~hibr + rept, data = PimentelTb11.3.1)
#' ftable(xtabs(~rept + bloc + hibr, data = PimentelTb11.3.1))
#'
#' library(lattice)
#'
#' xyplot(prod ~ hibr,
#'        groups = rept,
#'        type = c("p", "a"),
#'        auto.key = list(title = "Repetições",
#'                        cex.title = 1.1, columns = 3),
#'        data = PimentelTb11.3.1,
#'        xlab = "Híbridos de milho",
#'        ylab = "Produção (kg/parcela)")
#'
NULL

#' @name PimentelTb12.2.1
#' @title Experimento de Aduba\enc{çã}{ca}o com P\eqn{_2}O\eqn{_5} em
#'     Milho
#' @description Experimento de adubação de milho feito pelos engenheiros
#'     agrônomos Glauco Pinto Viegas e Erik Smith, em blocos ao acaso,
#'     para estudar o efeito da adubação na produtividade da cultura.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{P2O5}}{Fator de 5 níveis métricos que são as doses de
#'     \eqn{P_2O_5} em \eqn{kg ha^{-1}}.}
#'
#' \item{\code{prod}}{Produção de milho, em kg/parcela.}
#'
#' }
#' @keywords RS
#' @source PIMENTEL-GOMES (2009), Tabela 12.2.1, pág. 232.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb12.2.1)
#' str(PimentelTb12.2.1)
#'
#' xyplot(prod ~ P2O5,
#'        groups = bloco,
#'        data = PimentelTb12.2.1,
#'        auto.key = list(title = "Blocos", cex.title = 1,
#'                        columns = 4),
#'        ylab = "Produção (kg/parcela)",
#'        xlab = expression(Dosagem~de~P[2]*O[5]~(kg~ha^{-1})),
#'        panel = panel.superpose,
#'        degree = 2,
#'        panel.groups = function(x, y, col, col.symbol, degree, ...) {
#'            panel.xyplot(x, y, col = col.symbol, ...)
#'            xnew <- seq(min(x), max(x), length.out = 30)
#'            m0 <- lm(y ~ poly(x, degree = degree))
#'            ynew <- predict(m0, newdata = list(x = xnew))
#'            panel.lines(x = xnew, y = ynew, col = col.symbol)
#'        })
#'
#'
NULL

#' @name PimentelTb12.3.1
#' @title Temperaturas M\enc{á}{a}ximas M\enc{é}{e}dias em Piracicaba
#' @description Série de 15 anos das temperaturas máximas médias de
#'     Julho em Piracicaba-SP, em graus centígrados.
#' @format Um \code{data.frame} com 15 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ano}}{Variável que indica o ano em que foram registradas
#'     as temperaturas máximas médias do mês de Julho.}
#'
#' \item{\code{temperatura}}{Temperatura máxima média de Julho em graus
#'     centígrados.}
#'
#' }
#' @keywords RS TS
#' @source PIMENTEL-GOMES (2009), Tabela 12.3.1, pág. 236.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb12.3.1)
#' str(PimentelTb12.3.1)
#'
#' xyplot(temperatura ~ ano,
#'        data = PimentelTb12.3.1, type = "o",
#'        ylab = expression("Temperatura"~(degree*C)),
#'        xlab = "Ano")
#'
NULL

#' @name PimentelTb12.4.1
#' @title Produ\enc{çã}{ca}o de Cana em Fun\enc{çã}{ca}o do Teor de K do
#'     Solo
#' @description Experimento de produção de cana-de-açúcar em função do
#'     teor de K trocável do solo, em miliequivalentes de terra fina
#'     seca na estufa, onde a nutrição com potássio foi feita com
#'     150 kg ha\eqn{^{-1}} de \eqn{K_{2}O}.
#' @format Um \code{data.frame} com 15 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{K20}}{Teor de potássio (K) trocável do solo, feito com
#'     150kg ha\eqn{^{-1}} de \eqn{K_{2}O}.}
#'
#' \item{\code{prod}}{Aumento de produção de cana em t ha\eqn{^{-1}}.}
#'
#' }
#' @keywords RS
#' @source PIMENTEL-GOMES (2009), Tabela 12.4.1, pág. 238.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb12.4.1)
#' str(PimentelTb12.4.1)
#'
#' xyplot(prod ~ K2O,
#'        data = PimentelTb12.4.1,
#'        type = c("smooth", "p"),
#'        ylab = "Produção de Cana (em t/ha)",
#'        xlab = "Teor de K do solo")
#'
NULL

#' @name PimentelTb13.5.1
#' @title Grupo de Experimentos de Aduba\enc{çã}{ca}o de
#'     Cana-de-a\enc{çú}{cu}car
#' @description Conjunto de 38 ensaios fatoriais de \eqn{3^{3}} com N, P
#'     e K, em cana-de-açúçar, com dados de cana-planta e soca, obtidos
#'     por Strauss (1951). O nutriente foi aplicado nas doses de zero,
#'     60 e 120 \eqn{kg.ha^{-1}} de \eqn{P_2O_5}, só na cana-planta.
#' @format Um \code{data.frame} com 228 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{safra}}{Fator de 2 níveis qualitativos, que as safras da
#'     cana-planta e da cana-soca.}
#'
#' \item{\code{P}}{Fator de 3 níveis qualitativos, que são as doses de
#'     fósforo (P), em kg ha\eqn{^{-1}} de P\eqn{_2}O\eqn{_5}.}
#'
#' \item{\code{prod}}{Médias de produção nas parcelas de 38 ensaios de
#'     adubação de cana-de-açúcar.}
#'
#' \item{\code{ue}}{Inteiro que identifica a unidade experimental que
#'     foi medida na safra da planta-cana e cana-soca.}
#'
#' }
#' @keywords GE
#' @source PIMENTEL-GOMES (2009), Tabela 13.5.1, pág. 259.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb13.5.1)
#' str(PimentelTb13.5.1)
#'
#' xyplot(prod ~ P,
#'        groups = safra,
#'        auto.key = list(title = "Safra", cex.title = 1,
#'                        columns = 2),
#'        type = c("a", "p"),
#'        data = PimentelTb13.5.1,
#'        ylab = expression("Produção de cana-de-açúcar"~(ton~ha^{-1})),
#'        xlab = expression(P[2]*O[5]~(kg~ha^{-1})))
#'
#' da <- reshape2::dcast(data = PimentelTb13.5.1,
#'                       formula = ue ~ safra,
#'                       value.var = "prod")
#' str(da)
#'
#' da <- merge(da, PimentelTb13.5.1[, c("ue", "P")],
#'             by = "ue", all.x = TRUE, all.y = FALSE)
#'
#' xyplot(soca ~ planta, groups = P, data = da,
#'        type = c("p", "r"), aspect = "iso", grid = TRUE,
#'        xlab = "Produção da cana-planta",
#'        ylab = "Produção da cana-soca",
#'        auto.key = list(title = expression(P[2]*O[5]~(kg~ha^{-1})),
#'                        cex.title = 1.1, columns = 3))
#'
NULL

#' @name PimentelTb14.4.1
#' @title Produ\enc{çã}{ca}o de Leite em um Ensaio de
#'     Alimenta\enc{çã}{ca}o de Vacas
#' @description Experimento de nutrição de vacas, conduzido em períodos
#'     com 12 vacas distribuídas em 4 grupos de 3 vacas. Foram estudados
#'     3 tipos de alimentação para as vacas em um delineamento quadrado
#'     latino 3 \eqn{\times} 3 em cada grupo (linha = vaca, coluna =
#'     período). A variável resposta é a produção de leite das parcelas.
#' @format Um \code{data.frame} com 36 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{grupo}}{Fator de 4 níveis qualitativos, usado para
#'     controle local. Cada grupo tem 9 parcelas em um quadrado latino 3
#'     \eqn{\times}.}
#'
#' \item{\code{vaca}}{Fator de 3 níveis qualitativos, que são as vacas,
#' utilizado como linhas do quadrado latino de 3 \eqn{\times} 3. Ao todo
#'     são 12 vacas, 3 por grupo.}
#'
#' \item{\code{periodo}}{Fator de 3 níveis qualitativos, que são os
#'     períodos sucessivos de produção de leite, utilizado como colunas
#'     do quadrado latino de 3 \eqn{\times} 3.}
#'
#' \item{\code{trat}}{Fator de 3 níveis qualitativos, que são os
#'     tratamentos relacionados à alimentação das vacas.}
#'
#' \item{\code{prod}}{Produções de leite, em kg.}
#'
#' }
#' @keywords DQL
#' @source PIMENTEL-GOMES (2009), Tabela 14.4.1, pág. 272.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb14.4.1)
#' str(PimentelTb14.4.1)
#'
#' ftable(xtabs(~trat + vaca + grupo, data = PimentelTb14.4.1))
#'
#' xyplot(prod ~ trat,
#'        groups = grupo,
#'        type = c("a", "p"),
#'        auto.key = list(title = "Grupo",
#'                        cex.title = 1.1, columns = 4),
#'        data = PimentelTb14.4.1,
#'        ylab = "Produção de leite (kg)",
#'        xlab = "Tratamento de alimentação")
#'
NULL

#' @name PimentelTb14.5.1
#' @title Ensaio de Revers\enc{ã}{a}o na Produ\enc{çã}{ca}o de Leite
#' @description Experimento de reversão (switch-back) avaliando a
#'     produção de leite em função do nível de nutrição. Os fatores
#'     período, bloco e vaca são de blocagem. O tratamento estudado
#'     tinha 3 níveis. Sendo assim, 6 possibilidades existem: A-B-A,
#'     B-A-B, A-C-A, C-A-C, B-C-B, C-B-C. Cada uma delas foi atribuída a
#'     duas vacas.
#' @format Um \code{data.frame} com 36 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{periodo}}{Fator de 3 níveis qualitativos, que são os
#'     períodos sucessivos de produção de leite. No primeiro e terceiro
#'     período as vacas recebem o mesmo tratamento.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis qualitativos, usado para
#'     controle local (possivelmente mantém juntas vacas de mesma
#'     aptidão leiteira).}
#'
#' \item{\code{vaca}}{Fator que identifica as 12 vacas submetidas ao
#'     experimento. Cada vaca foi avaliada nos 3 períodos, sendo os
#'     tratamentos aplicados de forma 1-2-1, ou seja, o primeiro e
#'     último são iguais.}
#'
#' \item{\code{trat}}{Fator de 3 níveis qualitativos, que são os
#'     tratamentos utilizados no experimento.}
#'
#' \item{\code{prod}}{Produções de leite, em kg.}
#'
#' }
#' @keywords ER
#' @source PIMENTEL-GOMES (2009), Tabela 14.5.1, pág. 278.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb14.5.1)
#' str(PimentelTb14.5.1)
#'
#' ftable(xtabs(~vaca + trat, data = PimentelTb14.5.1))
#'
#' xyplot(prod ~ trat,
#'        groups = bloc,
#'        type = c("a", "p"),
#'        auto.key = list(title = "Bloco",
#'                        cex.title = 1.1, columns = 3),
#'        data = PimentelTb14.5.1,
#'        ylab = "Produção de Leite (em kg)",
#'        xlab = "Tratamento Utilizado")
#'
NULL

#' @name PimentelTb14.7.1
#' @title Experimento de Pastejo de Bovinos
#' @description Experimento fatorial que avaliou 2 cargas animais
#'     \eqn{\times} 3 espécies de braquiária, com 2 blocos casualizados
#'     e 8 grupos de novilhos, adaptados do artigo de Pimentel-Gomes et
#'     al. (1988).
#' @format Um \code{data.frame} com 48 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 2 níveis qualitativos, usado para
#'     controle local. Cada bloco tem 24 unidades experimentais.}
#'
#' \item{\code{grupo}}{Fator de 8 níveis qualitativos, que são os grupos
#'     homogêneos de novilhos.}
#'
#' \item{\code{carga}}{Fator de 2 níveis métricos que representa a carga
#'     animal, ou seja, o número médio de animais por hectare.}
#'
#' \item{\code{braquiaria}}{Fator de 3 níveis qualitativos, que são as
#'     espécies de braquiária.}
#'
#' \item{\code{peso}}{Peso dos animais, em kg.}
#'
#' }
#' @keywords DBC FAT2
#' @source PIMENTEL-GOMES (2009), Tabela 14.7.1, pág. 283.
#'
#' Pimentel-Gomes, F.; Nunes, S. G.; Gomes, M. de B; Curvo,
#'     J. B. E. Modificação na análise de variância de ensaions de
#'     pastejo com bovinos, considerando os blocos de
#'     animais. Pesq. Agro. Brasileira 23(9): 951-6, 1988.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb14.7.1)
#' str(PimentelTb14.7.1)
#'
#' ftable(xtabs(~braq + bloc + carga, data = PimentelTb14.7.1))
#'
#' xyplot(peso ~ braq, data = PimentelTb14.7.1,
#'        groups = carga, type = c("a", "p"),
#'        auto.key = list(title = "Carga (animal/ha)",
#'                        cex.title = 1, columns = 2),
#'        ylab = "Peso do animais (kg)",
#'        xlab = "Tipo de braquiária")
#'
NULL

#' @name PimentelTb16.2.1
#' @title Ensaio de Controle de Pragas do Feijoeiro
#' @description Ensaio de controle de pragas do feijoeiro, realizado
#'     pelo engenheiro agrônomo João Ferreira do Amaral. Nesse
#'     experimento, em 8 blocos casualizados, foram utilizados 5
#'     tratamentos. Além da produção do feijoeiro (g/parcela)
#'     determinou-se o número de plantas de cada parcela para que fosse
#'     corrigida a variação da produção final pela quantidade de plantas
#'     na parcela.
#' @format Um \code{data.frame} com 40 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 8 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{inset}}{Fator de 5 níveis qualitativos, que são os
#'     diferentes tipos de inseticidas, sendo um a testemunha e os
#'     demais produtos comerciais.}
#'
#' \item{\code{stand}}{Variável quantitativa, que refere-se ao número de
#'     plantas de cada parcela.}
#'
#' \item{\code{prod}}{Produção de feijão, em g/parcela.}
#'
#' }
#' @keywords DBC COV
#' @source PIMENTEL-GOMES (2009), Tabela 16.2.1, pág. 300.
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' data(PimentelTb16.2.1)
#' str(PimentelTb16.2.1)
#'
#' cex <- with(PimentelTb16.2.1, {
#'     std <- stand - min(stand)
#'     cex <- std/max(std)
#'     cex <- 0.5 + 1 * cex
#'     nums <- function(x) seq(min(x), max(x), length.out = 5)
#'     key <- list(text = list(formatC(nums(stand), digits = 1)),
#'                 points = list(cex = nums(cex), pch = 1),
#'                 title = "Plantas por parcela",
#'                 cex.title = 1.1,
#'                 columns = 5)
#'     return(list(cex = cex, key = key))
#' })
#'
#' xyplot(prod ~ inset, data = PimentelTb16.2.1,
#'        cex = cex$cex, key = cex$key,
#'        ylab = "Produção de feijão (g/parcela)",
#'        xlab = "Inseticidas")
#'
#' xyplot(prod ~ stand, data = PimentelTb16.2.1,
#'        groups = inset, type = c("p", "r"),
#'        auto.key = list(title = "Inseticidas", cex.title = 1.1,
#'                        columns = 2),
#'        ylab = "Produção de feijão (g/parcela)",
#'        xlab = "Plantas por parcela")
#'
NULL

#' @name PimentelTb16.3.1
#' @title Suscetibilidade de Variedades de Soja ao Ataque de
#'     Nemat\enc{ó}{o}ides
#' @description Experimento de Arruda (1952), em blocos casualizados, em
#'     que se compararam 21 variedades de soja para estudar sua
#'     suscetibilidade ao ataque de nematóides. Em cada parcela foram
#'     colocadas plantas da variedade Abura, bastante suscetível a
#'     nematóides cuja infestação seria proporcional à quantidade de
#'     nematoides do solo. Tanto as raízes das variedades estudadas como
#'     as da variedade padrão tiveram sua infestação avaliada a olho,
#'     com atribuição de notas de 0 (sem ataque aparente) a cinco (com
#'     infestação severa). Das variedades estudadas, apenas 15 foram
#'     registradas.
#' @format Um \code{data.frame} com 60 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{varied}}{Fator de 15 níveis qualitativos, que são as
#'     variedades de soja.}
#'
#' \item{\code{X}}{Média das notas para infestação nas plantas da
#'     variedade padrão, suscetível ao ataque de nematoide.}
#'
#' \item{\code{Y}}{Média das notas para infestação nas plantas das
#'     variedades estudadas.}
#'
#' }
#' @keywords DBC COV
#' @source PIMENTEL-GOMES (2009), Tabela 16.3.1, pág. 306.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb16.3.1)
#' str(PimentelTb16.3.1)
#'
#' PimentelTb16.3.1$varied <- with(PimentelTb16.3.1,
#'                                 reorder(varied, Y))
#'
#' cex <- with(PimentelTb16.3.1, {
#'     x <- X - min(X)
#'     cex <- x/max(x)
#'     cex <- 0.5 + 1 * cex
#'     nums <- function(x) seq(min(x), max(x), length.out = 5)
#'     key <- list(text = list(formatC(nums(x), digits = 1)),
#'                 points = list(cex = nums(cex), pch = 1),
#'                 title = "Nematóides nas cultivar suscestível",
#'                 cex.title = 1.1,
#'                 columns = 5)
#'     return(list(cex = cex, key = key))
#' })
#'
#' xyplot(Y ~ varied, data = PimentelTb16.3.1,
#'        cex = cex$cex, key = cex$key,
#'        ylab = "Nível de infestação de nematoides",
#'        xlab = "Variedade")
#'
NULL

#' @name PimentelTb17.3.1
#' @title Produ\enc{çã}{ca}o de Lenha de Esp\enc{é}{e}cies de Eucaliptos
#' @description Grupo de dois experimentos com espécies de eucaliptos
#'     realizados pela Companhia Paulista de Estradas de Ferro
#'     (Pimentel-Gomes e Guimarães, 1958). Ambos os ensaios, localizados
#'     lado a lado no campo, tinham 10 espécies, em 5 blocos
#'     casualizados. Uma única espécie (\emph{Eucalyptus saligna})
#'     ocorria em ambos os experimentos.
#' @format Um \code{data.frame} com 100 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de 2 níveis qualitativos, usado para
#'     diferenciar os experimentos que foram instalados lado a lado.}
#'
#' \item{\code{bloc}}{Fator de 5 níveis qualitativos que identifica os
#'     blocos em cada experimento.}
#'
#' \item{\code{espec}}{Fator de 19 níveis qualitativos, que são as
#'     espécies de eucalipto.}
#'
#' \item{\code{prod}}{Produção de lenha, em metros cúbicos por parcela,
#'     com corte aos 8 anos de idade.}
#'
#' }
#' @keywords GE
#' @source PIMENTEL-GOMES (2009), Tabela 17.3.1, pág. 317.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb17.3.1)
#' str(PimentelTb17.3.1)
#'
#' ftable(xtabs(~exper + bloc + espec, data = PimentelTb17.3.1))
#'
#' xyplot(prod ~ espec,
#'        data = PimentelTb17.3.1,
#'        ylab = expression("Produção de lenha"~(m^3 ~ parcela^{-1})),
#'        xlab = "Espécies de eucalipto")
#'
NULL

#' @name PimentelTb17.4.1
#' @title Grupo de Ensaios de Variedades de Cana-de-a\enc{çú}{cu}car
#' @description Grupo de dois ensaios com variedades de cana-de-açúcar,
#'     realizado na Argentina por G. Kenning Voss. Os dados referem-se a
#'     um ensaio com 7 variedades de cana em 3 blocos, e outro com
#'     8 variedades em 4 blocos.
#' @format Um \code{data.frame} com 53 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de 2 níveis qualitativos que identifica os
#'     experimentos.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis qualitativos que identifica os
#'     blocos em cada experimento.}
#'
#' \item{\code{varied}}{Fator de 11 níveis qualitativos, que são as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{y}}{Variável resposta medida nas parcelas.}
#'
#' }
#' @keywords GE
#' @source PIMENTEL-GOMES (2009), Tabela 17.4.1, pág. 322.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb17.4.1)
#' str(PimentelTb17.4.1)
#'
#' PimentelTb17.4.1$bloc <- with(PimentelTb17.4.1,
#'                               interaction(bloc, exper, drop = TRUE))
#' ftable(xtabs(~varied + exper + bloc,
#'              data = PimentelTb17.4.1))
#'
#' xyplot(y ~ reorder(varied, y), data = PimentelTb17.4.1,
#'        groups = interaction(exper, bloc, drop = TRUE),
#'        type = c("a", "p"),
#'        auto.key = list(title = "Blocos",
#'                        cex.title = 1.1, columns = 4),
#'        ylab = "Resposta",
#'        xlab = "Variedades de cana-de-açúcar")
#'
NULL

#' @name PimentelTb18.2.1
#' @title Ensaio Fatorial com Tratamentos Adicionais de
#'     Aduba\enc{çã}{ca}o de Milho
#' @description Ensaio de adubação NPK de milho, fatorial de
#'     \eqn{3^{3}}, com confundimento de 2 graus de liberdade da
#'     interação tripla. A cada três blocos de 9 parcelas juntaram-se
#'     mais 5 com tratamentos adicionais combinando calcário e
#'     micronutrientes.
#' @format Um \code{data.frame} com 42 observações e 8 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 3 níveis qualitativos, usado para
#'     controle local. Os blocos tem 14 parcelas, 9 da porção fatorial e
#'     5 da porção adicional.}
#'
#' \item{\code{trat}}{Fator de 30 níveis qualitativos, que são os
#'     tratamentos aplicados em cada parcela, sendo que cada algarismo
#'     possui um significado diferente conforme sua posição: A posição 1
#'     indica os níveis de nitrogênio, a posição 2 indica os níveis de
#'     fósforo e a posição 3 indica os níveis de potássio. A letra C
#'     indica a adição de calcário e M a adição de micronutrientes.}
#'
#' \item{\code{N}}{Fator de níveis codificados que representa a dose de
#'     nitrogênio.}
#'
#' \item{\code{P}}{Fator de níveis codificados que representa a dose de
#'     fósforo.}
#'
#' \item{\code{K}}{Fator de níveis codificados que representa a dose de
#'     potássio.}
#'
#' \item{\code{calc}}{Fator de níveis codificados que indica a presença
#'     (1) ou ausência de calcário.}
#'
#' \item{\code{micro}}{Fator de níveis codificados que indica a presença
#'     (1) ou ausência de micronutrientes.}
#'
#' \item{\code{prod}}{Produção de milho, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords FAT3K FATADI confundimento
#' @source PIMENTEL-GOMES (2009), Tabela 18.2.1, pág. 330.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb18.2.1)
#' str(PimentelTb18.2.1)
#'
#' xtabs(~trat + bloc, data = PimentelTb18.2.1)
#'
#' xyplot(prod ~ N | factor(P), groups = K, data = PimentelTb18.2.1,
#'        layout = c(NA, 1), type = c("p", "a"),
#'        xlab = "Nitrogênio (codificado)",
#'        ylab = expression("Produção de milho"~(ka~ha^{-1})),
#'        auto.key = list(title = "Potássio (codificado)",
#'                        cex.title = 1.1, columns = 3),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Fósforo"))
#'
NULL

#' @name PimentelTb20.2.1
#' @title Ensaio Fatorial de Aduba\enc{çã}{ca}o de
#'     Cana-de-a\enc{çú}{cu}car
#' @description Ensaio fatorial, de \eqn{3^{2}}, de adubação de
#'     cana-de-açúcar com P e K, em 6 blocos casualizados.
#' @format Um \code{data.frame} com 9 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{P}}{Variável que indica os níveis de Fósforo (P) em cada
#'     parcela.}
#'
#' \item{\code{K}}{Variável que indica os níveis de Potássio (K) em cada
#'     parcela.}
#'
#' \item{\code{totais}}{Produção total nos 6 blocos, em ton
#'     ha\eqn{^{-1}}. Valores individuais não disponíveis.}
#'
#' }
#' @keywords FAT3K
#' @source PIMENTEL-GOMES (2009), Tabela 20.2.1, pág. 369.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb20.2.1)
#' str(PimentelTb20.2.1)
#'
#' xyplot(totais ~ P, data = PimentelTb20.2.1,
#'        groups = K, type = "o",
#'        auto.key = list(title = "Níveis de Potássio (K)",
#'                        cex.title = 1.1, columns = 3),
#'        ylab = "Totais de tratamentos (ton/ha)",
#'        xlab = "Níveis de fósforo (P)")
#'
NULL

#' @name PimentelTb21.5.1
#' @title Porcentagem de Plantas Doentes
#' @description Ensaio inteiramente casualizado para avaliar a
#'     porcentagem de plantas doentes em um experimento de tomateiros
#'     onde foi estudado um fator de 3 níveis. Para análise dos
#'     resultados pode-se considerar o de Kruskal-Wallis.
#' @format Um \code{data.frame} com 12 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de 3 níveis qualitativos, que são os
#'     tratamentos.}
#'
#' \item{\code{doentes}}{Porcentagem de plantas doentes em um ensaio de
#'     tomateiros.}
#'
#' }
#' @keywords DIC unitário
#' @source PIMENTEL-GOMES (2009), Tabela 21.5.1, pág. 384.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb21.5.1)
#' str(PimentelTb21.5.1)
#'
#' xyplot(doentes ~ trat,
#'        data = PimentelTb21.5.1,
#'        type = c("a", "p"),
#'        ylab = "Porcentagem de plantas doentes",
#'        xlab = "Tratamento")
#'
NULL

#' @name PimentelTb5.3.1
#' @title Teor de Colesterol no Sangue
#' @description Pesquisa sobre o efeito do óleo de milho no teor de
#'     colesterol do sangue, realizada em sete pacientes tomados como
#'     blocos, cujos dados foram obtidos pelo médico Dr. Ben Hur
#'     C. Paiva.
#' @format Um \code{data.frame} com 14 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{periodo}}{Fator de 2 níveis qualitativos, usado para
#'     comparar o teor de colesterol no sangue antes e depois do uso do
#'     óleo de milho.}
#'
#' \item{\code{paciente}}{Variável utilizada para identificar os 7
#'     pacientes.}
#'
#' \item{\code{colesterol}}{Teor de colesterol no sangue em mg por
#'     100g.}
#'
#' }
#' @keywords AASP
#' @source PIMENTEL-GOMES (2009).
#' @examples
#'
#' library(lattice)
#'
#' xyplot(colesterol ~ periodo,
#'        groups = paciente,
#'        data = PimentelTb5.3.1,
#'        type = "p",
#'        xlab = "Período",
#'        ylab = "Teor de Colesterol")
#'
NULL

#' @name PimentelTb6.3.1
#' @title Experimento de Aduba\enc{çã}{ca}o Mineral e Verde em
#'     Cana-de-a\enc{çú}{cu}car
#' @description Experimento de adubação de cana da Usina Monte Alegre,
#'     com fertilizantes minerais e adubos verdes. O delineamento
#'     utilizado foi um quadrado latino de 6 x 6.
#' @format Um \code{data.frame} com 36 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linhas}}{Fator de 6 níveis qualitativos, usado para
#'     identificar as linhas do quadrado latino de 6 x 6.}
#'
#' \item{\code{colunas}}{Fator de 6 níveis qualitativos, usado para
#'     identificar as colunas do quadrado latino de 6 x 6.}
#'
#' \item{\code{adub}}{Fator de 6 níveis qualitativos, que são os 6
#'     diferentes tipos de tratamento provenientes da combinação de
#'     calcário, crotalária e adubação mineral. A variável assume os
#'     valores 0 ou 1, sendo que 0 representa ausência e 1 representa
#'     presença de cada um dos fatores. A primeira posição representa a
#'     presença ou ausência de calcário, a segurança posição representa
#'     a presença ou ausência de crotalária (adubo verde), e a terceira
#'     posição, caso exista, representa a presença ou ausência de adubo
#'     mineral.}
#'
#' \item{\code{prod}}{Totais de açúcar provável, em kg por parcela.}
#'
#' }
#' @details Considerando que a composição do fator adubação é dada por 3
#'     fatores combinados (calcário, crotalária e adubo mineral), ao
#'     transformar os digitos nos níveis desses fatores, tem-se na
#'     realidade um experimento fatorial incompleto no qual não existem
#'     os níveis de de adução mineral para o nível sem crotalária.
#' @keywords DQL incompleto
#' @source PIMENTEL-GOMES (2009), Tabela 6.3.1, página 99.
#' @examples
#'
#' data(PimentelTb6.3.1)
#' str(PimentelTb6.3.1)
#'
#' aggregate(prod ~ adub, data = PimentelTb6.3.1, FUN = sum)
#'
#' library(lattice)
#'
#' xyplot(prod ~ adub,
#'        data = PimentelTb6.3.1,
#'        xlab = "Combinação calcário-crotalária-adubo",
#'        ylab = "Produção (kg/parcela)")
#'
#' levelplot(prod ~ linhas + colunas,
#'           data = PimentelTb6.3.1, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts, ...)
#'               panel.text(x, y,
#'                          PimentelTb6.3.1$adub[subscripts],
#'                          cex = 0.8)
#'               panel.text(x, y, z, pos = 1)
#'           })
#'
#' # Decompondo os digitos para formas os níveis dos fatores
#' # constituintes.
#' L <- strsplit(as.character(PimentelTb6.3.1$adub), split = "")
#' t(sapply(L, FUN = function(x) {
#'     if (length(x) <= 2) c(x, NA) else x
#' }))
#'
NULL

#' @name PimentelTb7.2.1
#' @title Experimento Fatorial Sobre Aduba\enc{çã}{ca}o NPK na
#'     Produ\enc{çã}{ca}o de Milho
#' @description Resultados da produção de milho em um experimento
#'     com fatorial \eqn{2^{3}} dos fatores presentes na adubação
#'     minenal (NPK) em delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 32 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{N}}{Fator de 2 níveis codificados que representa a
#'     aplicação de nitrogênio.}
#'
#' \item{\code{P}}{Fator de 2 níveis codificados que representa a
#'     aplicação de fósforo.}
#'
#' \item{\code{K}}{Fator de 2 níveis codificados que representa a
#'     aplicação de potássio.}
#'
#' \item{\code{prod}}{Produção de milho, em ton ha\eqn{^{-1}}.}
#'
#' }
#' @keywords FAT2K
#' @source PIMENTEL-GOMES (2009), Tabela 7.2.1, página 115.
#' @examples
#'
#' data(PimentelTb7.2.1)
#' str(PimentelTb7.2.1)
#'
#' unique(PimentelTb7.2.1[, 2:4])
#'
#' library(lattice)
#'
#' xyplot(prod ~ N | factor(P), groups = K, data = PimentelTb7.2.1,
#'        type = c("p", "a"),
#'        xlab = "Níveis codificados de nitrogênio",
#'        ylab = expression("Produção de milho"~(ton~ha^{-1})),
#'        strip = strip.custom(strip.names = TRUE, var.name = "P"),
#'        auto.key = list(title = "K", cex.title = 1.1, columns = 2))
#'
NULL

#' @name PimentelTb7.6.1
#' @title Experimento Fatorial Com Confunfimento de Aduba\enc{çã}{ca}o
#'     em Cana-de-a\enc{çú}{cu}car
#' @description Experimento fatorial, de 3\eqn{^{3}}, de adubação de
#'     cana com NPK, feito por Strauss (1951), com confundimento (grupo
#'     W) de dois graus de liberdade da interação tripla N \eqn{\times}
#'     P \eqn{\times} K. Foi usado o confundimento correspondente aos
#'     blocos, e foram feitas duas repetições para os 27 tratamentos.
#' @format Um \code{data.frame} com 54 observações e 6 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 3 níveis qualitativos, usado para
#'     controle local e acomodar o confundimento de dois graus de
#'     liberdade.}
#'
#' \item{\code{rept}}{Inteiro com 2 níveis que indica as duas repetições
#'     realizadas de cada tratamento dentro de cada bloco.}
#'
#' \item{\code{N}}{Fator de 3 níveis codificados que representa a dose
#'     de nitrogênio usada na adubação.}
#'
#' \item{\code{P}}{Fator de 3 níveis codificados que representa a dose
#'     de fośforo usada na adubação.}
#'
#' \item{\code{K}}{Fator de 3 níveis codificados que representa a dose
#'     de potássio usada na adubação.}
#'
#' \item{\code{prod}}{Produção de cana-de-açúcar, em t.ha\eqn{^{-1}}.}
#'
#' }
#' @details Foi constatado que o livro tem um erro de tipografia na
#'     tabela com os dados pois no bloco W1 existem duas ocorrências do
#'     tratamento 202 sendo que a última deveria ser 220. Foi feita a
#'     inclusão desses dados no pacote com essa correção.
#' @keywords FAT3K confundimento
#' @source PIMENTEL-GOMES (2009), Tabela 7.6.1, pág. 126.
#'
#' Straus, F. Esperimentos de adubação na zona canavieira de
#'     Pernambuco. In: Terceira Reunião Brasileira de Ciência do
#'     Solo. Anais... t.1 p.336-443, 1951.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb7.6.1)
#' str(PimentelTb7.6.1)
#'
#' xtabs(~N + P + K, data = PimentelTb7.6.1)
#'
#' xyplot(prod ~ N | factor(P), groups = K, data = PimentelTb7.6.1,
#'        type = c("p", "a"), as.table = TRUE,
#'        xlab = "Nível codificado de nitrogênio",
#'        ylab = "Produção de cana-de-açúcar (t/ha)",
#'        auto.key = list(title = "Potássio", cex.title = 1.1,
#'                        columns = 3),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Fósforo"))
#'
NULL

#' @name PimentelTb7.8.1
#' @title Acidez de Variedades de Mangas em Fun\enc{çã}{ca}o da
#'     \enc{É}{E}poca
#' @description Experimento fatorial, de 6 \eqn{\times} 3 \eqn{\times}
#'     3, referente a acidez de 6 variedades de mangas, em 3 meses do
#'     ano e em 3 anos agrícolas sucessivos reproduzidos de um trabalho
#'     de Simão (1960).
#' @format Um \code{data.frame} com 54 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{mes}}{Fator de 3 níveis qualitativos ordenados que
#'     representam 3 meses do ano: Novembro (N), Dezembro (D) e Janeiro
#'     (J).}
#'
#' \item{\code{ano}}{Fator de 3 níveis métricos, que representam 3
#'     anos consecutivos: 1957, 1958 e 1959.}
#'
#' \item{\code{varied}}{Fator de 6 níveis qualitativos que são as 6
#'     variedades de manga.}
#'
#' \item{\code{acidez}}{Acidez das mangas. A escala de medida não foi
#'     informada.}
#'
#' }
#' @keywords PSS
#' @source PIMENTEL-GOMES (2009), Tabela 7.8.1, pág. 132.
#'
#' Simão, S. Estudo da planta e dos frutos da mangueira (\emph{Magnifera
#'     indica} L.). Piracicaba, 1960. Tese.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb7.8.1)
#' str(PimentelTb7.8.1)
#'
#' xyplot(acidez ~ mes | factor(ano), groups = varied,
#'        data = PimentelTb7.8.1,
#'        as.table = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Variedades", cex.title = 1.1,
#'                        columns = 3),
#'        xlab = "Meses do ano",
#'        ylab = "Acidez do fruto")
#'
NULL

#' @name PimentelTb7.9.1
#' @title Experimento de Aduba\enc{çã}{ca}o NPK no Cafeeiro
#' @description Experimento fatorial 2 \eqn{\times} 2 \eqn{\times} 2 de
#'     adubação NPK no cafeeiro feito por Malavolta et al. (1958). Foram
#'     contados os galhos secos de 4 pés de café por parcela. Dos
#'     números obtidos extraiu-se a raiz quadrada, portanto, para ter a
#'     variável original de contagem tem-se que elevar aos valores ao
#'     quadrado.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 6 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{N}}{Fator de 2 níveis codificados que representa a dose
#'     de nitrogênio aplicada, sendo que a variável assume 1, quando
#'     houver nitrogênio na composição do adubo e -1 caso contrário.}
#'
#' \item{\code{P}}{Fator de 2 níveis codificados que representa a dose
#'     de fósforo aplicada, sendo que a variável assume 1, quando houver
#'     fósforo na composição do adubo e -1 caso contrário.}
#'
#' \item{\code{K}}{Fator de 2 níveis codificados que representa a dose
#'     de potássio aplicada, sendo que a variável assume 1, quando
#'     houver potássio na composição do adubo e -1 caso contrário.}
#'
#' \item{\code{quad}}{Raiz quadrada do número de galhos secos de 4 pés
#'     de café por parcela.}
#'
#' }
#' @keywords FAT2K contagem
#' @source PIMENTEL-GOMES (2009), Tabela 7.9.1, pág. 137.
#'
#' Malavolta, E.; Pimentel-Gomes, F.; Coury, T. Estudos sobre a
#'     alimentação mineral do cafeeiro (\emph{Coffea arabica} L.,
#'     Variedade Bourbon Vermelho). Piracicaba, 1958.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb7.9.1)
#' str(PimentelTb7.9.1)
#'
#' ftable(xtabs(~N + P + K, data = PimentelTb7.9.1))
#'
#' xyplot(quad ~ N | factor(P), groups = K, data = PimentelTb7.9.1,
#'        type = c("p", "a"),
#'        xlab = "Nível codificado de nitrogênio",
#'        ylab = "Raízes quadradas do número de galhos secos",
#'        auto.key = list(title = "Potássio", cex.title = 1.1,
#'                        columns = 2),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Fósforo"))
#'
NULL

#' @name PimentelTb8.3.1
#' @title Grupo de Ensaios de Batatinha na Prov\enc{í}{i}ncia de Buenos
#'     Aires
#' @description Grupo de ensaios de competição de variedades de
#'     batatinha, realizados pelo engenheiro agrônomo Oscar A. Garay, da
#'     Estação Experimental de Balcarce, Argentina, instalados em
#'     localidades da região batateira da Província de Buenos Aires.
#'     Cada um deles tinha 4 repetições e 8 variedades em blocos
#'     casualizados. Os dados, no entanto, não são os valores
#'     individuais mas os totais das produções das variedades em cada
#'     experimento, somando as parcelas de todos os blocos. Os quadrados
#'     médios dos resíduos de cada experimento estão disponíveis no
#'     atributo objeto.
#' @format Um \code{data.frame} com 56 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de 8 níveis qualitativos que são as
#'     variedades de batatinha.}
#'
#' \item{\code{exper}}{Fator de 7 níveis qualitativos que refere-se aos
#'     experimentos conduzidos em diferentes localidades na região
#'     batateira da Província de Buenos Aires.}
#'
#' \item{\code{totais}}{Totais de variedades em cada experimento,
#'     resultado da soma da produção (t/ha) das parcelas de cada um dos
#'     blocos.}
#'
#' }
#'
#' O atributo \code{qmr} é um vetor com os quadrados médios residuais da
#'     análise de variância de cada experimento, segundo um modelo para
#'     o delineamento de blocos casualizados. Um exemplo de como são dos
#'     dados individuais está em \code{\link{PimentelEg5.2}}, que
#'     refere-se ao experimento número 3 com todas as observações.
#' @keywords GE
#' @seealso \code{\link{PimentelEg5.2}}.
#' @source PIMENTEL-GOMES (2009), Tabela 8.3.1, pág. 147.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb8.3.1)
#' str(PimentelTb8.3.1)
#' attr(PimentelTb8.3.1, "qmr")
#'
#' ord <- with(PimentelTb8.3.1, order(exper, varied))
#' PimentelTb8.3.1 <- PimentelTb8.3.1[ord, ]
#'
#' xyplot(totais ~ varied,
#'        groups = exper, type = "o",
#'        data = PimentelTb8.3.1,
#'        xlab = "Variedades de batatinha",
#'        ylab = "Totais das variedades",
#'        auto.key = list(title = "Experimentos", cex.title = 1,
#'                        columns = 4))
#'
NULL

#' @name PimentelTb9.2.1
#' @title Produ\enc{çã}{ca}o de Adubos Verdes e Milho
#' @description Experimento com 8 tratamentos (7 adubos verdes e milho)
#'     em blocos ao acaso, com 4 repetições, realizado em dois anos
#'     sucessivos nas mesmas parcelas.
#' @format Um \code{data.frame} com 64 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ano}}{Fator de 2 níveis qualitativos, que diferencia os
#'     dois anos sucessivos, tratados como subparcelas.}
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{cultura}}{Fator de 8 níveis qualitativos, que são os
#'     diferentes tipos de cultura, variando entre adubos verdes e
#'     milho.}
#'
#' \item{\code{prod}}{Produção de adubos verdes e milho medidos em kg de
#'     matéria verde por parcela.}
#'
#' }
#' @keywords GE
#' @source PIMENTEL-GOMES (2009), Tabela 9.2.1, pág. 166.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb9.2.1)
#' str(PimentelTb9.2.1)
#'
#' xyplot(prod ~ cultura,
#'        groups = ano, type = c("p", "a"),
#'        data = PimentelTb9.2.1,
#'        scales = list(x = list(rot = 90)),
#'        auto.key = list(title = "Ano", cex.title = 1.1,
#'                        columns = 2),
#'        xlab = "Culturas",
#'        ylab = "Produção de matéria verde (kg/parcela)")
#'
NULL

#' @name PimentelTb9.3.1
#' @title Experimento de Aduba\enc{çã}{ca}o de Variedades de
#'     Cana-de-a\enc{çú}{cu}car
#' @description Experimento com 5 variedades de cana-de-açúcar, em
#'     delineamento quadrado latino de 5 x 5, sendo cada parcela
#'     dividida em duas subparcelas, uma sem adubo e outra com adubação
#'     mineral completa.
#' @format Um \code{data.frame} com 50 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as linhas do quadrado latino de 5 x 5.}
#'
#' \item{\code{coluna}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as colunas do quadrado latino de 5 x 5.}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos que são as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{adub}}{Fator de 2 níveis codificados do tipo binário, que
#'     indica a presença (1) ou ausência (0) de adubação mineral
#'     completa.}
#'
#' \item{\code{prod}}{Produção de de cana-de-açúcar em kg por
#'     subparcela.}
#'
#' }
#' @keywords PS DQL
#' @source PIMENTEL-GOMES (2009), Tabela 9.3.1.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb9.3.1)
#' str(PimentelTb9.3.1)
#'
#' xyplot(prod ~ varied,
#'        groups = adub, type = c("p", "a"),
#'        data = PimentelTb9.3.1,
#'        xlab = "Variedades",
#'        ylab = "Produção (kg/parcela)",
#'        auto.key = list(title = "Adubação", cex.title = 1.1,
#'                        columns = 2))
#'
NULL

#' @name PimentelTb9.4.1
#' @title Brix de Variedades de Mangueira em Faces Diferentes da Planta
#' @description Experimento que mediu o grau brix de frutos de 5
#'     variedades de mangueira, colhidos de 3 pés por variedade. De cada
#'     pé foram coletados 4 frutos, um em cada lado da planta voltado
#'     para os pontos cardeais (N, S, L e O). Este ensaio pode ser
#'     considerado como em parcelas subdivididas, sendo cada parcela uma
#'     mangueira, e as subparcelas são as 4 faces de cada árvore,
#'     correspondentes aos 4 pontos cardeais.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{direcao}}{Fator de 4 níveis qualitativos que são os 4 os
#'     pontos cardeais Norte, Sul, Leste e Oeste.}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos que são as
#'     variedades de mangueira.}
#'
#' \item{\code{brix}}{Brix do fruto da magueira (unidade de medida não
#'     informada).}
#'
#' }
#' @keywords PS
#' @source PIMENTEL-GOMES (2009), Tabela 9.4.1, pág. 175.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb9.4.1)
#' str(PimentelTb9.4.1)
#'
#' xyplot(brix ~ varied,
#'        groups = direcao, type = c("p", "a"),
#'        data = PimentelTb9.4.1,
#'        xlab = "Variedades",
#'        ylab = "Brix",
#'        auto.key = list(title = "Direção", cex.title = 1.1,
#'                        columns = 2))
#'
NULL
