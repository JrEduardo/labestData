#' @name DemetrioEg7.7
#' @title Produtividade de Cana-de-a\enc{çú}{cu}car sob N\enc{í}{i}veis
#'     de Pent\enc{ó}{o}xido de F\enc{ó}{o}sforo
#' @description Dados referentes a produtividade de cana-de-açúcar, em
#'     ton/ha, obtidos de um experimento delineado em blocos
#'     casualizados, com 6 repetições e 5 níveis de \eqn{P_2O_5}
#'     (pentóxido de fósforo). O conjunto de dados apresenta somente a
#'     soma das produtividades nos blocos para cada nível de
#'     \eqn{P_2O_5}.
#' @format Um \code{data.frame} de 5 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{nivel}}{Nível de \eqn{P_2O_5}, medido em kg/ha.}
#'
#' \item{\code{prod}}{Produtividade de cana-de-açúcar, medida em
#'     ton/ha.}
#'
#' }
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Exemplo 7.7 pág. 197.
#' @examples
#'
#' data(DemetrioEg7.7)
#' str(DemetrioEg7.7)
#'
#' library(lattice)
#'
#' xyplot(prod ~ nivel,
#'        data = DemetrioEg7.7,
#'        main = "Produtividade por Nível",
#'        xlab = "Nível",
#'        ylab = "Produtividade")
#'
NULL

#' @name DemetrioEx1.4.1.1
#' @title Alturas de Feij\enc{ã}{a}o
#' @description Dados de altura de feijão durante 7 semanas.
#' @format Um \code{data.frame} de 7 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade do feijão medida em semanas.}
#'
#' \item{\code{altura}}{Altura do feijão medida em centímetros (cm).}
#'
#' }
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 1.4.1.1 pág. 14.
#' @examples
#'
#' data(DemetrioEx1.4.1.1)
#' str(DemetrioEx1.4.1.1)
#'
#' library(lattice)
#'
#' xyplot(altura ~ idade,
#'        data = DemetrioEx1.4.1.1,
#'        xlab = "Idade",
#'        ylab = "Altura",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioEx1.4.1.2
#' @title Peso M\enc{é}{e}dio de Galinhas
#' @description Foi mensurado o peso médio e consumo de alimentos de 50
#'     galinhas para 10 linhagens \emph{White Leghorn}.
#' @format Um \code{data.frame} de 10 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{peso}}{Peso médio.}
#'
#' \item{\code{consumo}}{Consumo de alimentos.}
#'
#' }
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 1.4.1.2 pág. 14.
#' @examples
#'
#' data(DemetrioEx1.4.1.2)
#' str(DemetrioEx1.4.1.2)
#'
#' library(lattice)
#'
#' xyplot(consumo ~ peso, data = DemetrioEx1.4.1.2,
#'        xlab = "Peso",
#'        ylab = "Consumo",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioEx1.4.1.3
#' @title Absor\enc{çã}{ca}o de CO2 por Folhas de Trigo
#' @description Foi aplicado \eqn{CO_2} sobre folhas de trigo a uma
#'     temperatura de 35\eqn{^\circ}C. Mediu-se a quantia de \eqn{CO_2}
#'     absorvido pelas folhas.
#' @format Um \code{data.frame} de 11 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{co2}}{Concentração de \eqn{CO_2} aplicada sobre as folhas
#'     de trigo.}
#'
#' \item{\code{absorv}}{Quantia de \eqn{CO2} absorvida pelas folhas de
#'     trigo, medida em \eqn{cm^3/dm^2/hora.}}
#'
#' }
#'
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 1.4.1.3 pág. 14.
#' @examples
#'
#' data(DemetrioEx1.4.1.3)
#' str(DemetrioEx1.4.1.3)
#'
#' library(lattice)
#'
#' xyplot(absorv ~ co2, data = DemetrioEx1.4.1.3,
#'        xlab = "Aplicado",
#'        ylab = "Absorvido",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioEx1.4.1.4
#' @title Volume das Cerejeiras
#' @description Foram mensurados o diâmetro, a altura e o volume de 31
#'     cerejeiras com o objetivo de verificar a relação entre estas
#'     variáveis, tendo em vista a predição do volume de madeira em uma
#'     área de floresta.
#' @format Um \code{data.frame} de 31 linhas e 3 colunas, em que
#'
#' \describe{
#'
#' \item{\code{dia}}{Diâmetro da cerejeira a 4.5 pés do solo, medido em
#'     polegadas.}
#'
#' \item{\code{alt}}{Altura das cerejeiras, medida em pés.}
#'
#' \item{\code{vol}}{Volume das cerejeiras, medido em pés cúbicos.}
#'
#' }
#' @keywords RM
#' @source DEMÉTRIO; ZOCCHI (2011) (Exercício 1.4.1.4 pág. 14)
#' @examples
#'
#' data(DemetrioEx1.4.1.4)
#' str(DemetrioEx1.4.1.4)
#'
#' library(lattice)
#'
#' pairs(~ dia + alt + vol, data = DemetrioEx1.4.1.4,
#'       main = "Gráfico de Pares")
#'
#' xyplot(vol ~ dia, data = DemetrioEx1.4.1.4,
#'        xlab = "Diâmetro",
#'        ylab = "Volume",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioEx1.4.1.5
#' @title N\enc{ú}{u}mero de Ovos por Fol\enc{í}{i}culos Ovulados
#' @description Foi contado o número de ovos postos e o número de
#'     folículos ovulados.
#' @format Um \code{data.frame} de 14 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{ovo}}{Número de ovos.}
#'
#' \item{\code{foli}}{Número de folículos.}
#'
#' }
#'
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 1.4.1.5 pág. 15.
#' @examples
#'
#' data(DemetrioEx1.4.1.5)
#' str(DemetrioEx1.4.1.5)
#'
#' library(lattice)
#'
#' xyplot(foli ~ ovo, data = DemetrioEx1.4.1.5,
#'        xlab = "Número de ovos",
#'        ylab = "Número de folículos",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioEx1.4.2
#' @title Tempo de Irriga\enc{çã}{ca}o de Solo
#' @description Neste estudo foram medidos os tempos acumulados de
#'     irrigação e as correspondentes medidas de infiltração acumulada
#'     de água no solo. O objetivo do experimento era estimar as
#'     equações de infiltração acumulada em relação ao tempo acumulado e
#'     de velocidade de infiltração em relação ao tempo acumulado e à
#'     velocidade básica de infiltração.  Essas equações são importantes
#'     para determinar o tempo de irrigação para atingir uma determinada
#'     lâmina de água, pois é anti-econômico irrigar a uma velocidade
#'     maior à de infiltração.
#' @format Um \code{data.frame} de 15 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{tempo}}{Tempo acumulado de irrigação, medido em
#'     minutos.}
#'
#' \item{\code{infil}}{Infiltração acumulada de água no solo, medida
#'     em centímetros (cm).}
#'
#' }
#'
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 1.4.2 pág. 16.
#' @examples
#'
#' data(DemetrioEx1.4.2)
#' str(DemetrioEx1.4.2)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' xyplot(infil ~ tempo, data = DemetrioEx1.4.2,
#'        xlab = "Tempo",
#'        ylab = "Infiltração",
#'        type = c("p", "r"), col.line = 3)
#'
#' xyplot(infil ~ tempo, data = DemetrioEx1.4.2,
#'        xlab = "Tempo",
#'        ylab = "Infiltração",
#'        type = c("p", "r"), col.line = 3,
#'        scales = list(y = list(log = 10), x = list(log = 10)),
#'        yscale.components = yscale.components.log10ticks,
#'        xscale.components = xscale.components.log10ticks)
#'
NULL

#' @name DemetrioEx2.12.15
#' @title Dados Gen\enc{é}{e}ricos Simulados para Regress\enc{ã}{a}o
#'     Simples
#' @description Dados simulados para exercício analítico de estimação
#'     via método dos quadrados mínimos em diferentes modelos de
#'     regressão linear.
#' @format Um \code{data.frame} de 6 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Variável independente, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#'
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 2.12.15 pág. 63.
#' @examples
#'
#' data(DemetrioEx2.12.15)
#' str(DemetrioEx2.12.15)
#'
#' library(lattice)
#'
#' xyplot(y ~ x, data = DemetrioEx2.12.15,
#'        main = "x vs y",
#'        xlab = "x",
#'        ylab = "y",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioEx2.12.16
#' @title Calagem para a Sucess\enc{ã}{a}o Batata-triticale-milho
#' @description Neste experimento foram obtidos os valores para o teor
#'     de cálcio no solo e a porcentagem de tubérculos maduros com o
#'     objetivo de verificar a relação existente entre estas variáveis.
#' @format Um \code{data.frame} de 9 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{calcio}}{Teor de cálcio no solo, medido em
#'     \eqn{meq/100cm^{3}} (miliequivalente por 100 centímetros
#'     cúbicos).}
#'
#' \item{\code{tm}}{Porcentagem de tubérculos maduros.}
#'
#' }
#' @keywords RS RNL unitário
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 2.12.16 pág. 63.
#' @examples
#'
#' data(DemetrioEx2.12.16)
#' str(DemetrioEx2.12.16)
#'
#' library(lattice)
#'
#' xyplot(tm ~ calcio, data = DemetrioEx2.12.16,
#'        xlab = "Cálcio",
#'        ylab = "Porcentagem de tubérculos maduros")
#'
NULL

#' @name DemetrioEx2.12.5
#' @title Dados Gen\enc{é}{e}ricos para Regress\enc{ã}{a}o Segmentada
#' @description Dados para exercício analítico, com o objetivo de obter
#'     as estimativas de mínimos quadrados dos parâmetros de um modelo
#'     de regressão linear segmentada.
#' @format Um \code{data.frame} de 5 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Variável independente, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#' @keywords RNL
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 2.12.5 pág. 60.
#' @examples
#'
#' data(DemetrioEx2.12.5)
#' str(DemetrioEx2.12.5)
#'
#' library(lattice)
#'
#' xyplot(y ~ x, data = DemetrioEx2.12.5,
#'        cex = 1.1, pch = 19,
#'        main = 'Regressão Segmentada',
#'        grid = TRUE,
#'        panel = function(x, y, ...) {
#'            # Regressão Segmentada com ponto de corte conhecido
#'            b <- DemetrioEx2.12.5$x[3]
#'            m0 <- lm(y ~ x + I(pmax(x - b, 0)),
#'                     data = DemetrioEx2.12.5)
#'            # Pontos que definem os dois segmentos
#'            cx <- c(0, b, 8)
#'            cy <- predict(m0, newdata = data.frame(x = cx))
#'            panel.xyplot(x, y, ...)
#'            panel.segments(cx[1], cy[1], cx[2], cy[2])
#'            panel.segments(cx[2], cy[2], cx[3], cy[3])
#'        })
#'
NULL

#' @name DemetrioEx5.4.2
#' @title Estudo F\enc{í}{i}sico Qu\enc{í}{i}mico de M\enc{é}{e}is
#'     Silvestres
#' @description Análise físico química de méis silvestres, produzidos
#'     por \emph{Apis mellifera} em 1999, provenientes de 94 localidades
#'     de São Paulo.
#' @format Um \code{data.frame} de 94 linhas e 3 colunas, em que
#'
#' \describe{
#'
#' \item{\code{condut}}{Condutividade elétrica, em \eqn{\mu}S.}
#'
#' \item{\code{N}}{Proporção de Nitrogênio proteico.}
#'
#' \item{\code{cinzas}}{Proporção de cinzas.}
#'
#' }
#' @keywords RM
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 5.4.2 pág. 169.
#' @examples
#'
#' data(DemetrioEx5.4.2)
#' str(DemetrioEx5.4.2)
#'
#' pairs(~ condut + N + cinzas, data = DemetrioEx5.4.2,
#'       main = "Gráfico de Pares")
#'
NULL

#' @name DemetrioEx5.4.5
#' @title Estudo sobre a Avalia\enc{çã}{ca}o Visual do Grau da
#'     Infesta\enc{çã}{ca}o de Plantas por Doen\enc{ç}{c}as
#' @description Dados referentes a avaliação visual (realizada por um
#'     pesquisador) e real do grau de infestação de folhas de amendoim.
#'
#'     A avaliação exige um treinamento específico para a cultura e a
#'     doença em questão. Por esse motivo, foram desenvolvidos programas
#'     computacionais que geram imagens de folhas com diferentes
#'     porcentagens de infestação para o pesquisador estimar visualmente
#'     e em seguida compara-se com as porcentagens reais.
#' @format Um \code{data.frame} de 10 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{visual}}{Estimativas visuais do pesquisador.}
#'
#' \item{\code{real}}{Valores reais do grau de infestação.}
#'
#' }
#'
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 5.4.5 pág. 165.
#' @examples
#'
#' data(DemetrioEx5.4.5)
#' str(DemetrioEx5.4.5)
#'
#' library(lattice)
#'
#' xyplot(visual ~ real, data = DemetrioEx5.4.5,
#'        xlab = "Real",
#'        ylab = "Visual",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioEx6.5.2
#' @title Dados Gen\enc{é}{e}ricos Simulados para Regress\enc{ã}{a}o
#'     Linear M\enc{ú}{u}ltipla
#' @description Dados simulados para exercício de análise de um modelo
#'     de regressão linear múltipla com 3 covariáveis.
#' @format Um \code{data.frame} de 5 linhas e 4 colunas, em que
#'
#' \describe{
#'
#' \item{\code{x1}}{Variável independente, sem interpretação.}
#'
#' \item{\code{x2}}{Variável independente, sem interpretação.}
#'
#' \item{\code{x3}}{Variável independente, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#' @keywords RM
#' @source DEMÉTRIO; ZOCCHI (2011) (Exercício 6.5.2 pág. 180)
#' @examples
#'
#' data(DemetrioEx6.5.2)
#' str(DemetrioEx6.5.2)
#'
#' pairs(~ x1 + x2 + x3 + y, data = DemetrioEx6.5.2,
#'       main = "Gráfico de Pares")
#'
NULL

#' @name DemetrioEx7.8.3
#' @title Alturas de Eucaliptos sob Aduba\enc{çã}{ca}o
#'     Pot\enc{á}{a}ssica
#' @description Dados referentes a um experimento de adubação, conduzido
#'     em casa de vegetação. Foram usadas 4 doses de Potássio (0, 30,
#'     60, 90 ppm), obtendo-se as alturas das árvores da espécie
#'     \emph{Eucalyptus grandis}, medidas em cm.
#' @format Um \code{data.frame} de 12 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{dose}}{Dose de potássio, medida em ppm.}
#'
#' \item{\code{altura}}{Altura da árvore, medida em centímetro (cm).}
#'
#' }
#' @keywords RS DIC
#' @source DEMÉTRIO; ZOCCHI (2011), Exercício 7.8.3 pág. 198.
#' @examples
#'
#' data(DemetrioEx7.8.3)
#' str(DemetrioEx7.8.3)
#'
#' library(lattice)
#'
#' xyplot(altura ~ dose, data = DemetrioEx7.8.3,
#'        main = "Altura vs Dose", xlab = "Dose", ylab = "Altura")
#'
NULL

#' @name DemetrioTb1.1
#' @title N\enc{í}{i}veis de F\enc{ó}{o}sforo no Solo ap\enc{ó}{o}s
#'     Plantio de Milho
#' @description Resultados de um experimento onde diferentes níveis de
#'     fósforo orgânico foram utilizados na preparação do solo para o
#'     plantio de milho. Após 38 dias, as plantas foram colhidas,
#'     mediu-se o novamente os níveis de fósforo e calculou-se o fósforo
#'     disponível para a planta em cada amostra de solo.
#' @format Um \code{data.frame} com 9 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{fo}}{Níveis de fósforo orgânico adicionado ao solo,
#'     mensurados em partes por milhão (ppm).}
#'
#' \item{\code{fd}}{Fósforo disponível no solo após a colheita do milho,
#'     mensurado em partes por milhão (ppm).}
#'
#' }
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 1.1 pág. 8.
#' @examples
#'
#' library(lattice)
#'
#' data(DemetrioTb1.1)
#' str(DemetrioTb1.1)
#'
#' xyplot(fd ~ fo, data = DemetrioTb1.1,
#'        xlab = "Fósforo orgânico",
#'        ylab = "Fósforo disponível",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioTb1.2
#' @title Irriga\enc{çã}{ca}o em Batata
#' @description Este experimento refere-se a irrigação em batata
#'     plantada em terra roxa estruturada. Foram medidas as lâminas de
#'     água a diferentes distâncias do aspersor. O objetivo foi mensurar
#'     a produtividade, já que, no tipo de solo utilizado no experimento
#'     (solo argiloso), espera-se que o excesso de água diminua a
#'     produtividade.
#' @format Um \code{data.frame} com 12 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{lamina}}{Espessura da lâmina de água medida em milímetros
#'     (mm).}
#'
#' \item{\code{prod}}{Produtividade medida em toneladas de batatas por
#'      hectare (t/ha).}
#'
#' }
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 1.2 pág. 9.
#' @examples
#'
#' library(lattice)
#'
#' data(DemetrioTb1.2)
#' str(DemetrioTb1.2)
#'
#' xyplot(prod ~ lamina, data = DemetrioTb1.2,
#'        xlab = "Lâmina de água (mm)",
#'        ylab = "Produção (t/ha)",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioTb1.3
#' @title Estudo da Constru\enc{çã}{ca}o de um Tensi\enc{ô}{o}metro
#' @description Estudo da construção de um tensiômetro de leitura
#'     direta. Neste estudo obteve-se os resultados de alturas da câmara
#'     no tensiômetro e tensão da água no solo.
#' @format Um \code{data.frame} com 9 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{altura}}{ Altura da câmara no tensiômetro medida
#'     em milímetros (mm). }
#'
#' \item{\code{tensao}}{ Tensão da água no solo medida em coloumb
#'     (mb) }
#'
#' }
#'
#' @keywords RS RNL
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 1.3 pág. 10; Ex 2.12.14
#'     pág. 62.
#' @examples
#'
#' library(lattice)
#'
#' data(DemetrioTb1.3)
#' str(DemetrioTb1.3)
#'
#' xyplot(tensao ~ altura, data = DemetrioTb1.3,
#'        xlab = "Altura do Tensiômetro",
#'        ylab = "Tensão da Água")
#'
#' xyplot(tensao ~ log(altura), data = DemetrioTb1.3,
#'        main = "Altura VS Tensão",
#'        xlab = expression(log~"(Altura do Tensiômetro)"),
#'        ylab = "Tensão da Água")
#'
NULL

#' @name DemetrioTb1.4
#' @title Concentra\enc{çã}{ca}o de F\enc{ó}{o}sforo
#' @description Dados referentes a medidas de concentrações de fósforo
#'     inorgânico e orgânico no solo, onde posteriormente mediu-se o
#'     conteúdo de fósforo nas plantas crescidas no local. O objetivo do
#'     experimento é estudar a relação existente entre o conteúdo de
#'     fósforo na planta e as duas fontes do elemento no solo.
#' @format Um \code{data.frame} com 18 linhas e 3 colunas, em que
#'
#' \describe{
#'
#' \item{\code{cfi}}{ Conteúdo de fósforo inorgânico no solo.}
#'
#' \item{\code{cfo}}{ Conteúdo de fósforo orgânico no solo.}
#'
#' \item{\code{conteudo}}{ Conteúdo de fósforo nas plantas crescidas no
#'     solo.}
#'
#' }
#' @keywords RM
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 1.4 pág. 11.
#' @examples
#'
#' data(DemetrioTb1.4)
#' str(DemetrioTb1.4)
#'
#' pairs(DemetrioTb1.4, main = "Dispersão em Pares")
#'
#' library(lattice)
#'
#' xyplot(conteudo ~ cfi, data = DemetrioTb1.4,
#'        xlab = "Fósforo Inorgânico",
#'        ylab = "Conteúdo na Planta",
#'        type = c("p", "r"), col.line = 3)
#'
#' xyplot(conteudo ~ cfo, data = DemetrioTb1.4,
#'        xlab = "Fósforo Orgânico",
#'        ylab = "Conteúdo na Planta",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioTb1.5
#' @title Valores de CTC Direta e Indireta
#' @description O experimento foi realizado em quatro blocos, sendo
#'     planejado para estudar o efeito da calagem sobre a CTC
#'     (Capacidade de Troca Catiônica) do solo medida por dois métodos
#'     diferentes. Os valores de CTC foram medidos 18 meses após a
#'     calagem incorporada ao solo, na profundidade de 5 a 10 cm,
#'     segundo a dose de calcário.
#' @format Um \code{data.frame} de 32 linhas e 4 colunas, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator que indica a qual bloco a amostra pertence,
#'     usado para controle de variação.}
#'
#' \item{\code{dose}}{Indica a dose de calcário usada na referida
#'     observação, medida em toneladas por hectare (t/ha).}
#'
#' \item{\code{metodo}}{Fator que indica o método para determinação da
#'     CTC, direto (1) ou indireto (0).}
#'
#' \item{\code{ctc}}{É o valor observado de CTC, medido em
#'     \eqn{mmol_{c}/kg}.}
#'
#' }
#' @details Na análise inicial do estudo do estudo foi detectada a
#'     presença de um dado discrepante (177,00) correspondente ao
#'     \code{bloco} I, \code{dose} 7,80 e \code{metodo} indireto. Em
#'     conversa com o pesquisador verificou-se que se tratava de um erro
#'     na transcrição dos dados e que o valor correto seria
#'     124,00. Neste conjunto de dados manteve-se o valor discrepante
#'     para efeitos didáticos.
#' @keywords RM dummy
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 1.5 pág. 12.
#' @examples
#'
#' data(DemetrioTb1.5)
#' str(DemetrioTb1.5)
#'
#' library(lattice)
#'
#' xyplot(ctc ~ dose | bloco, groups = metodo,
#'        data = DemetrioTb1.5,
#'        xlab = "Dose", ylab = "CTC",
#'        type = c("p", "r"),
#'        auto.key = list(space = "top", title = "Método"))
#'
#' # Corrigindo dado, conforme erro verificado pelo pesquisador
#' select <- with(DemetrioTb1.5, bloco == 1 & dose == 7.8 & metodo == 0)
#' DemetrioTb1.5$ctc[select] <- 124
#'
#' xyplot(ctc ~ dose | bloco, groups = metodo,
#'        data = DemetrioTb1.5,
#'        xlab = "Dose", ylab = "CTC",
#'        type = c("p", "r"),
#'        auto.key = list(space = "top", title = "Método"))
#'
NULL

#' @name DemetrioTb1.6
#' @title Resposta de Milho ao Fosfato
#' @description Neste estudo foram obtidos dados sobre a resposta da
#'     cultura do milho ao fosfato, produtividade na testemunha,
#'     porcentagem de saturação de bases e pH do solo. Como todas as
#'     variáveis computadas são aleatórias, o interesse principal é em
#'     estudar as correlações entre as variáveis observadas.
#' @format Um \code{data.frame} de 14 linhas e 4 colunas, em que
#'
#' \describe{
#'
#' \item{\code{milho}}{Dados de resposta da cultura do milho ao fosfato
#'     em porcentagem.}
#'
#' \item{\code{prod}}{Produtividade da cultura na parcela testemunha, em
#'     lb/acre.}
#'
#' \item{\code{satu}}{Saturação de bases em porcentagem.}
#'
#' \item{\code{ph}}{pH do solo.}
#'
#' }
#' @keywords RM
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 1.6 pág. 13.
#' @examples
#'
#' data(DemetrioTb1.6)
#' str(DemetrioTb1.6)
#'
#' pairs(~ milho + prod + satu + ph, data = DemetrioTb1.6,
#'       main = "Dispersão duas a duas")
#'
#' cor(DemetrioTb1.6)
#'
NULL

#' @name DemetrioTb10.2
#' @title Estudo em Plantas Nicotianas
#' @description Dados referentes ao comprimento do caule, do ramo e do
#'     caule basal de plantas do gênero Nicotiana.
#' @format Um \code{data.frame} de 18 linhas e 3 colunas, em que
#'
#' \describe{
#'
#' \item{\code{caule}}{Comprimento do caule.}
#'
#' \item{\code{ramo}}{Comprimento do ramo.}
#'
#' \item{\code{basal}}{Comprimento do caule basal.}
#'
#' }
#'
#' @keywords RM AnaFat
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 10.2 pág. 161; Exercício
#'     5.4.7 pág. 164.
#' @examples
#'
#' data(DemetrioTb10.2)
#' str(DemetrioTb10.2)
#'
#' pairs(~ caule + basal + ramo , data = DemetrioTb10.2)
#'
NULL

#' @name DemetrioTb2.10
#' @title Absor\enc{çã}{ca}o de CO2 por Folhas de Trigo
#' @description Dados provenientes de um ensaio inteiramente casualizado
#'     onde aplicou-se \eqn{CO_2} sobre folhas de trigo a uma
#'     temperatura de 35°C e mediu-se a quantia de \eqn{CO_2} absorvido
#'     pelas folhas.
#' @format Um \code{data.frame} de 17 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{co2}}{Concentração de \eqn{CO_2} aplicada sobre as folhas
#'     de trigo.}
#'
#' \item{\code{absorv}}{Quantia de \eqn{CO_2} absorvida pelas folhas de
#'     trigo, medida em \eqn{cm^3/dm^2/hora.}}
#'
#' }
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 2.10 pág. 65, Exercício
#'     1.4.1.3 pág. 14.
#' @examples
#'
#' data(DemetrioTb2.10)
#' str(DemetrioTb2.10)
#'
#' library(lattice)
#'
#' xyplot(absorv ~ co2, data = DemetrioTb2.10,
#'        xlab = "Aplicado",
#'        ylab = "Absorvido",
#'        type = c("p", "r"), col.line = 3)
#'
#' # Subconjunto do exercício 1.4.1.3
#' obs <- c(1, 2, 3, 5, 6, 7, 8, 11, 12, 16, 17)
#' DemetrioEx1.4.1.3 <- DemetrioTb2.10[obs, ]
#'
#' xyplot(absorv ~ co2, data = DemetrioEx1.4.1.3,
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioTb2.11
#' @title Radia\enc{çã}{ca}o Gama em Explantes de Abacaxis
#' @description Dados provenientes de um experimento inteiramente
#'     casualizado onde expuseram explantes de abacaxis a diferentes
#'     doses de radiação gama e, 45 dias após a irradiação, mensurou-se
#'     o peso destes explantes.
#' @format Um \code{data.frame} de 70 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{dose}}{Dose de radiação gama a qual os explantes de
#'     abacaxi foram expostos durante 45 dias.}
#'
#' \item{\code{absorv}}{Peso dos explantes de abacaxi após a irradiação,
#'     medido em gramas (g).}
#'
#' }
#'
#' @keywords RS DIC
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 2.11 pág. 66.
#' @examples
#'
#' data(DemetrioTb2.11)
#' str(DemetrioTb2.11)
#'
#' library(lattice)
#' # Estatísticas descritivas
#' with(DemetrioTb2.11, tapply(peso, dose, summary))
#'
#' with(DemetrioTb2.11, {
#'     mu <<- aggregate(peso, list(dose), mean)
#'     des <<- aggregate(peso, list(dose), sd)
#' })
#'
#' xyplot(peso ~ dose, data = DemetrioTb2.11,
#'        type = c("p", "r"), grid = TRUE,
#'        panel = function(x, y, ...) {
#'            panel.points(x = mu$G - 1, y = mu$x, pch = 15, col = 1)
#'            panel.arrows(x0 = mu$G - 1, y0 = mu$x - des$x,
#'                         x1 = mu$G - 1, y1 = mu$x + des$x,
#'                         code = 3, length = 0.05, angle = 90)
#'            panel.xyplot(x, y, ...)
#'            })
#'
NULL

#' @name DemetrioTb2.12
#' @title Produ\enc{çã}{ca}o de Ruibarbo
#' @description Dados de um experimento conduzido em delineamento de
#'     blocos ao acaso onde foi mensurada a produção de ruibarbos para
#'     enlatamento, considerando diferentes datas de colheita.
#' @format Um \code{data.frame} de 28 linhas e 3 colunas, em que
#'
#' \describe{
#'
#' \item{\code{data}}{Data de colheita dos ruibarbos. Obs.: Para
#'     utilizar o formato \code{\link{Date}} foi considerado o ano 1983
#'     (Date de publicação do livro que referencia os dados).}
#'
#' \item{\code{bloco}}{Fator que indica o bloco, para controle de
#'     variação, ao qual a observação pertence.}
#'
#' \item{\code{prod}}{Valor da produção de ruibarbo.}
#'
#' }
#' @keywords RS DBC
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 2.12 pág. 66-67.
#' @examples
#'
#' data(DemetrioTb2.12)
#' str(DemetrioTb2.12)
#'
#' library(lattice)
#'
#' # Estatísticas descritivas
#' with(DemetrioTb2.12, tapply(prod, data, summary))
#'
#' with(DemetrioTb2.12, {
#'     mu <<- aggregate(prod, list(data), mean)
#'     des <<- aggregate(prod, list(data), sd)
#' })
#'
#' xyplot(prod ~ data, data = DemetrioTb2.12,
#'        type = c("p", "r"), grid = TRUE,
#'        panel = function(x, y, ...) {
#'            panel.points(x = mu$G - 0.5, y = mu$x, pch = 15, col = 1)
#'            panel.arrows(x0 = mu$G - 0.5, y0 = mu$x - des$x,
#'                         x1 = mu$G - 0.5, y1 = mu$x + des$x,
#'                         code = 3, length = 0.05, angle = 90)
#'            panel.xyplot(x, y, ...)
#'            })
#'
NULL

#' @name DemetrioTb2.9
#' @title Dados Gen\enc{é}{e}ricos para Regress\enc{ã}{a}o Simples
#' @description Dados para exercício analítico, com o objetivo de
#'     estimar os parâmetros de forma pontual e intervalar, realizar a
#'     ANOVA, entre outros.
#' @format Um \code{data.frame} de 10 linhas e 2 colunas, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Variável independente, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 2.9 pág. 64.
#' @examples
#'
#' data(DemetrioTb2.9)
#' str(DemetrioTb2.9)
#'
#' library(lattice)
#'
#' xyplot(y ~ x, data = DemetrioTb2.9,
#'        main = "x vs y",
#'        xlab = "x",
#'        ylab = "y",
#'        type = c("p", "r"), col.line = 3)
#'
NULL

#' @name DemetrioTb3.5
#' @title Dados Gen\enc{é}{e}ricos para Regress\enc{ã}{a}o
#'     M\enc{ú}{u}ltipla
#' @description Dados para exercício de análise via modelo de regressão
#'     linear múltipla.
#' @format Um \code{data.frame} de 6 linhas e 3 colunas, em que
#'
#' \describe{
#'
#' \item{\code{x1}}{Variável explicativa, sem interpretação.}
#'
#' \item{\code{x2}}{Variável explicativa, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#' @keywords RM
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 3.5 pág. 99.
#' @examples
#'
#' data(DemetrioTb3.5)
#' str(DemetrioTb3.5)
#'
#' pairs(~ x1 + x2 + y , data = DemetrioTb3.5)
#'
NULL

#' @name DemetrioTb3.6
#' @title Dados Gen\enc{é}{e}ricos para Regress\enc{ã}{a}o
#'     M\enc{ú}{u}ltipla
#' @description Dados para exercício de análise via modelo de regressão
#'     linear múltipla com três variáveis explicativas.
#' @format Um \code{data.frame} de 14 linhas e 4 colunas, em que
#'
#' \describe{
#'
#' \item{\code{x1}}{Variável explicativa, sem interpretação.}
#'
#' \item{\code{x2}}{Variável explicativa, sem interpretação.}
#'
#' \item{\code{x3}}{Variável explicativa, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#' @keywords RM
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 3.6 pág. 99.
#' @examples
#'
#' data(DemetrioTb3.6)
#' str(DemetrioTb3.6)
#'
#' pairs(~ x1 + x2 + x3 + y , data = DemetrioTb3.6)
#'
NULL

#' @name DemetrioTb4.2
#' @title Sobreviv\enc{ê}{e}ncia de Ratos ap\enc{ó}{o}s Envenenamento
#' @description Os dados referem-se a tempos de sobrevivência de ratos
#'     após envenenamento com 4 tipos de venenos e 3 diferentes
#'     tratamentos.
#' @format Um \code{data.frame} de 48 linhas e 3 colunas, em que
#'
#' \describe{
#'
#' \item{\code{tempo}}{Tempo de sobrevivência.}
#'
#' \item{\code{tipo}}{Tipo de veneno.}
#'
#' \item{\code{trat}}{Tipo de tratamento aplicado (não descrito o que é
#'     o tratamento).}
#'
#' }
#' @keywords FAT2
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 4.2 pág. 132.
#' @examples
#'
#' data(DemetrioTb4.2)
#' str(DemetrioTb4.2)
#'
#' xtabs(~tipo + trat, data = DemetrioTb4.2)
#'
#' group <- with(DemetrioTb4.2, paste0(tipo, "-", trat))
#' boxplot(tempo ~ group, data = DemetrioTb4.2)
#'
NULL

#' @name DemetrioTb4.5
#' @title Dados Simulados para Regress\enc{ã}{a}o Linear Simples e
#'     Polinomial
#' @description Dados simulados para exercício de ajuste de modelos de
#'     regressão linear simples e polinomial. São simulados, para uma
#'     mesma covariável (x), quatro diferentes variáveis de interesse
#'     (y).
#' @format Um \code{data.frame} de 9 linhas e 5 colunas, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Variável explicativa, sem interpretação.}
#'
#' \item{\code{y1}}{Variável dependente, sem interpretação.}
#'
#' \item{\code{y2}}{Variável dependente, sem interpretação.}
#'
#' \item{\code{y3}}{Variável dependente, sem interpretação.}
#'
#' \item{\code{y4}}{Variável dependente, sem interpretação.}
#'
#' }
#' @keywords RS
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 4.5 pág. 137.
#' @examples
#'
#' data(DemetrioTb4.5)
#' str(DemetrioTb4.5)
#'
#' # Relação da covariável com cada uma das variáveis resposta
#' par(mfrow = c(1, ncol(DemetrioTb4.5) - 1))
#' for (i in 2:ncol(DemetrioTb4.5)) {
#'     plot(DemetrioTb4.5[, c(1, i)])
#'     lines(lowess(DemetrioTb4.5[, c(1, i)]), col = 2)
#' }
#'
#' # Gráfico de dispersão por pares, apresenta também a relação entre as
#' # variáveis resposta
#' pairs(~ x + y1 + y2 + y3 + y4 , data = DemetrioTb4.5,
#'      main = "Dispersão duas a duas")
#'
NULL

#' @name DemetrioTb5.1
#' @title Resposta da Cultura de Milho ao Fosfato
#' @description Dados referentes a um estudo sobre a resposta da cultura
#'     do milho em função da quantidade de fosfato, porcentagem de
#'     saturação de bases e sílica em solos ácidos.
#'
#'     Neste estudo a variável resposta, que está em porcentagem, foi
#'     medida como a diferença entre as produções que receberam fosfato
#'     e as que não receberam, dividida pelas produções das parcelas que
#'     receberam fosfato, e multiplicado por 100.  Considerando-se esses
#'     dados, foi obtida a variável produtividade das parcelas que
#'     receberam fosfato, dada por \eqn{Y_1 = X_1(1 + \frac{Y}{100})}.
#' @format Um \code{data.frame} de 14 linhas e 4 colunas, em que
#'
#' \describe{
#'
#' \item{\code{resp}}{Resposta da cultura do milho ao fosfato, medida em
#'     porcentagem.}
#'
#' \item{\code{prod}}{Produtividade na testemunha, medida em libra por
#'     acre (lb/acre).}
#'
#' \item{\code{sat}}{Porcentagem de saturação de bases.}
#'
#' \item{\code{silica}}{Sílica (pH do solo).}
#'
#' }
#' @keywords RM
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 5.1 pág. 157; Exercício 5.4.7
#'     pág. 161; Exercício 5.4.7 pág. 167.
#' @examples
#'
#' data(DemetrioTb5.1)
#' str(DemetrioTb5.1)
#'
#' pairs(~ resp + prod + sat + silica , data = DemetrioTb5.1)
#'
NULL

#' @name DemetrioTb7.1
#' @title Produ\enc{çã}{ca} de Milho em Fun\enc{çã}{ca}o da
#'     Aduba\enc{çã}{ca}o
#' @description Os dados referem-se a produções de milho, em kg/parcela,
#'     de um experimento casualizado em blocos de adubação com
#'     diferentes doses de \eqn{P_2O_5}.
#' @format Um \code{data.frame} de 20 linhas e 3 colunas, em que
#'
#' \describe{
#'
#' \item{\code{dose}}{Dose de \eqn{P_2O_5}.}
#'
#' \item{\code{bloco}}{Bloco ao qual a observação pertence, para
#'     controle local de variação.}
#'
#' \item{\code{sat}}{Valor da produção de milho, medido em kg/parcela.}
#'
#' }
#' @keywords DBC RS
#' @source DEMÉTRIO; ZOCCHI (2011), Tabela 7.1 pág. 195.
#' @examples
#'
#' data(DemetrioTb7.1)
#' str(DemetrioTb7.1)
#'
#' library(lattice)
#'
#' xyplot(producao ~ dose, groups = bloco, data = DemetrioTb7.1,
#'        xlab = "Dose", ylab = "Produção")
#'
NULL
