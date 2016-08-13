#' @name ZimmermannTb10.15
#' @title Aduba\enc{çã}{ca}o Ap\enc{ó}{o}s Pastagem em Cultivares de Arroz
#' @description Dados de um experimento conduzido em faixas, no
#'     delineamento de blocos ao acaso, para testar o efeito da
#'     aplicação de adubos em arroz após pastagem no qual foram
#'     utilizadas três cultivares. Nesta tabela constam os dados de de
#'     produção de arroz, em kg ha\eqn{^{-1}}, de duas dessas
#'     cultivares.
#' @format Um \code{data.frame} com 24 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica o
#'     bloco ao qual a observação pertence.}
#'
#' \item{\code{adub}}{Fator de níveis métricos que identifica a
#'     quantidade de adubação aplicada. Os níveis estão codificados na
#'     escala natural e não na escala real.}
#'
#' \item{\code{geno}}{Fator de níveis cateóricos que identifica o
#'    genótipo de arroz.}
#'
#' \item{\code{prod}}{Produção de arroz em kg ha\eqn{^{-1}}.}
#'
#' }
#' @details A formulação da adubação empregada no ensaio de cultivar de
#'     arroz teve a seguinte composição
#'
#' \tabular{rrrrrr}{
#'  Adub \tab N \tab P\eqn{_2}O\eqn{_5} \tab K\eqn{_2}O
#'     \tab Micros \tab Zn\cr
#'   1 \tab  6 \tab 30 \tab 27 \tab  45 \tab  2\cr
#'   2 \tab 12 \tab 60 \tab 54 \tab  90 \tab  4\cr
#'   3 \tab 18 \tab 90 \tab 81 \tab 135 \tab  6
#' }
#' @keywords DBC EF
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 10.15, pág. 210)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.15)
#'
#' str(ZimmermannTb10.15)
#'
#' xyplot(prod ~ adub | geno, groups = bloco, data = ZimmermannTb10.15,
#'        type = c("p", "a"),
#'        xlab = "Nível de adubação",
#'        ylab = expression("Produção de arroz"~(kg~ha^{-1})))
#'
NULL

#' @name ZimmermannTb10.20
#' @title Nitrog\enc{ê}{e}nio, Irriga\enc{çã}{ca}o e Preparo do Solo para Feijoeiro
#' @description Dados de um experimento conduzido em faixas, no
#'     delineamento de blocos ao acaso, com duas repetições e parcelas
#'     divididas. Se testaram, nas faixas horizontais, as lâminas de
#'     água aplicada em irrigação por aspersão, nas faixas verticais as
#'     formas de preparo de solo e nas subparcelas, doses de
#'     nitrogênio. Os dados são de massa de 100 grãos de feijão, sem
#'     unidade de medida.
#' @format Um \code{data.frame} com 72 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{\code{lam}}{Fator de níveis categóricos que identifica a lâmina
#'    de água aplicada ou intensidade de irrigação.}
#'
#' \item{\code{nit}}{Fator de níveis categóricos que identifica a dose
#'     de nitrogênio aplicada.}
#'
#' \item{\code{solo}}{Fator de níveis categóricos que identifica a forma
#'     de preparação do solo.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica o
#'     bloco.}
#'
#' \item{\code{massa}}{Massa de 100 grãos de feijão, sem unidade de
#'     medida.}
#'
#' }
#' @keywords DBC PSS EF
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 10.20, pág 213)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.20)
#'
#' str(ZimmermannTb10.20)
#'
#' ftable(xtabs(~solo + nit + lam, data = ZimmermannTb10.20))
#'
#' xyplot(massa ~ lam | solo, groups = nit,
#'        data = ZimmermannTb10.20,
#'        type = c("p", "a"), as.table = TRUE,
#'        auto.key = list(title = "Níveis de nitrgênio",
#'                        cex.title = 1.1, columns = 3),
#'        strip = strip.custom(strip.names = TRUE, var.name = "Solo"),
#'        xlab = "Lâmina de irrigação",
#'        ylab = "Massa de 100 grãos de feijão")
#'
NULL

#' @name ZimmermannTb10.6
#' @title Doses de Fungicida para Brusone na Cultura do Arroz
#' @description Dados de um experimento com dois fatores, em
#'     delineamento de parcelas divididas em blocos ao acaso. O
#'     experimento avaliou o efeito de 3 doses do fungicida Fongorene
#'     (0, 400 e 800 gramas por 100 kg) em cultivares de arroz. Mediu-se
#'     a percentagem de área foliar lesionada por brusone em cinco
#'     datas, e depois calculou-se a área sob a curva do progresso da
#'     doença (ASCPD). Os dados estão transformados em logaritmo.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que indica a cultivar do arroz.}
#'
#' \item{\code{bloco}}{Fator categórico que identifica o bloco ao qual a
#'     observação pertence.}
#'
#' \item{\code{dose}}{Fator métrico que representa a dose usada do
#'     fungicida, em gramas por hectare.}
#'
#' \item{\code{ascpd}}{Logarítimo da área sob a curva de progresso da
#'     doença.}
#'
#' }
#' @keywords PS DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 10.6, pág. 201)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.6)
#'
#' str(ZimmermannTb10.6)
#'
#' xyplot(ascpd ~ dose, groups = cult, data = ZimmermannTb10.6,
#'        type = c("p", "a"),
#'        xlab = expression("Doses de inseticida"~(g~100~kg^{-1})),
#'        ylab = "Logaritmo da área sob a curva de progresso da doença")
#'
NULL

#' @name ZimmermannTb10.9
#' @title \enc{É}{E}poca de Plantio e Manejo de Inseticida em Cultivares de Arroz
#' @description Dados de um em delineamento de blocos completos ao
#'     acaso, em parcelas subdivididas. O experimento avaliou o efeito
#'     de 2 épocas de plantio e aplicação (ou não) do inseticida
#'     Fipronil em três cultivares de arroz. As épocas de plantio foram
#'     implantadas nas parcelas principais, o inseticida nas subparcelas
#'     e os genótipos nas sub-parcelas. Os resultados são dados de peso
#'     de 100 espiguetas de arroz, em gramas.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{epoca}}{Fator de níveis categóricos que indica a época do
#'     plantio.}
#'
#' \item{\code{inset}}{Fator de níveis numéricos que representa a
#'     aplicação (1) ou não (0) de Fipronil.}
#'
#' \item{\code{genot}}{Fator de níveis nominais que identifica o
#'     genótipo de arroz.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que identifica o bloco
#'     ao qual a observação pertence.}
#'
#' \item{\code{peso}}{Peso de 100 espiguetas de arroz, em gramas.}
#'
#' }
#' @keywords PSS DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 10.9, pág. 205)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.9)
#'
#' str(ZimmermannTb10.9)
#'
#' ftable(xtabs(~genot + epoca + inset, data = ZimmermannTb10.9))
#'
#' xyplot(peso ~ genot | epoca, groups = inset,
#'        data = ZimmermannTb10.9,
#'        type = c("p", "a"),
#'        xlab = "Genótipo de arroz",
#'        ylab = "Peso de 100 espiguetas (g)")
#'
NULL

#' @name ZimmermannTb11.1
#' @title Espa\enc{ç}{c}amento e Densidade de Plantio na Produ\enc{çã}{ca}o de Arroz
#' @description Dados de um experimento fatorial \eqn{2^3}, com
#'     confundimento total da interação dupla. O ensaio foi conduzido em
#'     dois blocos ao acaso de tamanho 4 dentro de quatro repetições, em
#'     que cada uma continha um par de blocos (8 parcelas). Os fatores
#'     estudados foram: densidades de plantio de 50 e 90 sementes por
#'     metro, espaçamentos entre linhas de 35cm e 50cm e fator presença
#'     ou ausência de adubação nitrogenada em cobertura. A variável
#'     resposta é a produtividade de grãos, em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 32 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator categórico que identifica a repetição. Cada
#'     repetição contém um par de blocos de tamanho 4.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica o
#'     bloco em cada repetição.}
#'
#' \item{\code{densi}}{Fator codificado que representa a densidade de
#'     plantio (50 e 90).}
#'
#' \item{\code{espac}}{Fator codificado que representa o espaçamento
#'     entre as linhas de semeadura (35 e 50 cm).}
#'
#' \item{\code{adub}}{Fator codificado que indica a presença ou não de
#'     adubação nitrogenada (1 e 0).}
#'
#' \item{\code{prod}}{Produção de arroz, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @seealso \code{\link{ZimmermannTb11.7}}. Os ensaios
#'     \code{ZimmermannTb11.1} e \code{ZimmermannTb11.7} possuem os
#'     mesmos valores observados da resposta e fatores estudados, o que
#'     muda é a estrutura de confundimento utilizada, com modificação do
#'     tamanho dos blocos para que isso fosse ilustrado. O primeiro tem
#'     2 blocos de tamanho 4 em cada repetição e o segundo tem 4 blocos
#'     de tamanho 2. Essa modificação dos dados é artificial e foi feita
#'     para fins didáticos. Não se deve alterar o delineamento de dados
#'     reais para conduzir as análises.
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 11.1, pág. 221)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.1)
#'
#' str(ZimmermannTb11.1)
#'
#' xyplot(prod ~ factor(densi) | factor(adub), groups = espac,
#'        data = ZimmermannTb11.1,
#'        type = c("p", "a"),
#'        xlab = "Densidade de semeadura",
#'        ylab = expression ("Produção de Arroz"~(kg~ha^{-1})),
#'        auto.key = list(title = "Espaçamento", cex.title = 1.1,
#'                        columns = 2),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Adubação"))
#'
NULL

#' @name ZimmermannTb11.10
#' @title Espa\enc{ç}{c}amento Entre Linhas e Densidade no Plantio de Feij\enc{ã}{a}o
#' @description Dados de um experimento fatorial \eqn{3^2}, com a
#'     cultura do feijoeiro testando espaçamento entre linhas de plantio
#'     (0.45, 0.6 e 0.75 m) e densidade de plantio (7, 10 e 13 sementes
#'     por metro). Os dados se referem à cultivar Jalo
#'     Precoce. Adotou-se o delineamento de blocos ao acaso com
#'     confundimento parcial de 2 graus de liberdade da interação
#'     densidade com espaçamento. Os resultados são de altura de
#'     plantas, em centímetros.
#' @format Um \code{data.frame} com 36 observações e 6 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator categórico que identifica a repetição. Cada
#'     repetição tinha 3 blocos de tamanho 3.}
#'
#' \item{\code{bloco}}{Fator categórico que identifica o bloco em cada
#'     repetição.}
#'
#' \item{\code{espac}}{Fator de níveis codificados que identifica o
#'     espaçamento utilizado (0.45, 0.6 e 0.75 m).}
#'
#' \item{\code{dens}}{Fator de níveis codificados que identifica a
#'    densidade de plantio utilizada (7, 10 e 13 sementes por metro).}
#'
#' \item{\code{altura}}{Altura de plantas, em cm.}
#'
#' }
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 231)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.10)
#'
#' str(ZimmermannTb11.10)
#'
#' ftable(xtabs(~espac + dens + rept, data = ZimmermannTb11.10))
#' ftable(xtabs(~espac + dens + interaction(rept, bloco),
#'              data = ZimmermannTb11.10))
#'
#' xyplot(altura ~ factor(espac) | rept, groups = dens,
#'        data = ZimmermannTb11.10, as.table = TRUE,
#'        type = c("p", "a"),
#'        xlab = "Níveis de espaçamento",
#'        ylab = "Altura de plantas (cm)",
#'        auto.key = list(title = "Densidade", cex.title = 1.1,
#'                        columns = 3),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Repetição"))
#'
NULL

#' @name ZimmermannTb11.13
#' @title Absor\enc{çã}{ca}o e Transloca\enc{çã}{ca}o de Zinco em Arroz de Terras Altas
#' @description Dados de um experimento fatorial \eqn{3^3}, com
#'     confundimento parcial de 2 graus de liberdade da interação dupla.
#'     O estudo é sobre a absorção e translocação de zinco em arroz de
#'     terras altas sob a influência de fósforo e calcário num
#'     delineamento de blocos ao acaso organizado em repetições.
#'     Utilizou-se o grupo Z de Yates para fazer o confundimento. Os
#'     dados são de produção de grãos, em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 81 observações e 6 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator categórico que identifica as repetições. Cada
#'     repetição tem 3 blocos de tamanho 9.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica os
#'     blocos em cada repretição.}
#'
#' \item{\code{zinco}}{Fator de níveis codificados que indica o nível de
#'     zinco aplicado: 0, 5 e 10 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{fosf}}{Fator de níveis codificados que indica o nível de
#'     fósforo aplicado: 0, 50 e 100 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{calc}}{Fator de níveis codificados que indica o nível de
#'     calcário aplicado: 0, 1.5 e 3 kg ton ha\eqn{^{-1}}.}
#'
#' \item{\code{prod}}{Produtividade de grãos, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 11.13, pág. 234)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.13)
#'
#' str(ZimmermannTb11.13)
#'
#' ftable(xtabs(~fosf + calc + zinco,
#'              data = ZimmermannTb11.13))
#'
#' ftable(xtabs(~fosf + calc + zinco +
#'                  interaction(bloco, rept),
#'              data = ZimmermannTb11.13))
#'
#' xyplot(prod ~ factor(fosf) | factor(calc),
#'        data = ZimmermannTb11.13, as.table = TRUE,
#'        groups = zinco, type = c("p", "a"),
#'        xlab = "Fósforo",
#'        ylab = expression("Produção de grãos"~(kg~ha^{-1})),
#'        auto.key = list(title = "Zinco", cex.title = 1.1,
#'                        columns = 3),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Calcário"))
#'
NULL

#' @name ZimmermannTb11.19
#' @title Produtividade de arroz irrigado em ensaio fatorial com confundimento
#' @description Dados de um experimento fatorial \eqn{2^5}, com
#'     confundimento da interação de quinta ordem.
#'     Estudou-se o efeito dos cinco principais problemas da cultura: controle de
#'     invasoras, adubação, irrigação, controle de doenças e
#'     cultivar. A interação de quarta ordem (5 fatores) foi
#'     confundida com blocos.  Os dados da produtividade do arroz estão
#'     em kg/ha.
#' @format Um \code{data.frame} com 32 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator categórico que identifica o bloco.}
#'
#' \item{\code{irri}}{Fator codificado que representa a irrigação:
#'     permanente e interminentente.}
#'
#' \item{\code{adub}}{Fator codificado que representa a adubação: 30 e
#'     60 kg de N ha\eqn{^{-1}}.}
#'
#' \item{\code{cult}}{Fator codificado que representa a cultivar de
#'     arroz: IAC 435 e IR 841-63-5-I-9-33.}
#'
#' \item{\code{doen}}{Fator codificado que representa o controle das
#'     doenças: sem controle e controle com aplicação de Manzate.}
#'
#' \item{\code{inva}}{Fator codificado que representa o controle das
#'     plantas invasoras: aplicação de Stan F-34 e Ronstar.}
#'
#' \item{\code{prod}}{Produtividade de arroz irrigado (kg
#'     ha\eqn{^{-1}}).}
#'
#' }
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 11.19, pág. 237)
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' data(ZimmermannTb11.19)
#' str(ZimmermannTb11.19)
#'
#' ftable(xtabs(~irri + cult + adub + doen + inva,
#'              data = ZimmermannTb11.19))
#'
#' useOuterStrips(
#'     xyplot(prod ~ factor(irri) | factor(inva) + factor(doen),
#'            data = ZimmermannTb11.19,
#'            groups = interaction(cult, adub, sep = ":"),
#'            type = c("p", "a"),
#'            xlab = "Irrigação",
#'            ylab = expression("Produtividade"~(kg~ha^{-1})),
#'            auto.key = list(title = "Cultivar:Adubação",
#'                            cex.title = 1.1,
#'                            columns = 4)),
#'     strip = strip.custom(strip.names = TRUE,
#'                          var.name = "Invasora"),
#'     strip.left = strip.custom(strip.names = TRUE,
#'                               var.name = "Doença"))
#'
NULL

#' @name ZimmermannTb11.7
#' @title Espa\enc{ç}{c}amento, Densidade e Nitrog\enc{ê}{e}nio na Produ\enc{çã}{ca}o de Arroz
#' @description Dados de um experimento fatorial \eqn{2^3}, com
#'     confundimento de duas das interações simples. Referem-se à
#'     produtividade de grãos, em kg ha\eqn{^{-1}}. O ensaio foi
#'     conduzido em 4 blocos ao acaso de tamanho 2 dentro de quatro
#'     repetições, em que cada uma continha 4 blocos (8 parcelas). Os
#'     fatores foram: densidades de plantio de 50 e 90 sementes por
#'     metro, espaçamentos entre linhas de 35cm e 50cm e fator presença
#'     ou ausência de adubação nitrogenada em cobertura.
#' @format Um \code{data.frame} com 32 observações e 7 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator categórico que identifica a repetição. Cada
#'     repetição contém quatro blocos de tamanho 2.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica o
#'     bloco em cada repetição.}
#'
#' \item{\code{dens}}{Fator codificado que representa a densidade de
#'     plantio (50 e 90).}
#'
#' \item{\code{espac}}{Fator codificado que representa o espaçamento
#'     entre as linhas de semeadura (35 e 50 cm).}
#'
#' \item{\code{adub}}{Fator codificado que indica a presença ou não de
#'     adubação nitrogenada (1 e 0).}
#'
#' \item{\code{prod}}{Produção de arroz, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @seealso \code{\link{ZimmermannTb11.1}}. Os ensaios
#'     \code{ZimmermannTb11.1} e \code{ZimmermannTb11.7} possuem os
#'     mesmos valores observados da resposta e fatores estudados, o que
#'     muda é a estrutura de confundimento utilizada, com modificação do
#'     tamanho dos blocos para que isso fosse ilustrado. O primeiro tem
#'     2 blocos de tamanho 4 em cada repetição e o segundo tem 4 blocos
#'     de tamanho 2. Essa modificação dos dados é artificial e foi feita
#'     para fins didáticos. Não se deve alterar o delineamento de dados
#'     reais para conduzir as análises.
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 11.7, pág 226)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.7)
#'
#' str(ZimmermannTb11.7)
#'
#' ftable(xtabs(~adub + espac + dens + bloco, data = ZimmermannTb11.7))
#'
#' xyplot(prod ~ factor(dens) | factor(adub), groups = espac,
#'        data = ZimmermannTb11.7,
#'        type = c("p", "a"),
#'        xlab = "Densidade de semeadura",
#'        ylab = expression ("Produção de Arroz"~(kg~ha^{-1})),
#'        auto.key = list(title = "Espaçamento", cex.title = 1.1,
#'                        columns = 2),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Adubação"))
#'
NULL

#' @name ZimmermannTb12.1
#' @title Produtividade de Gr\enc{ã}{a}os de Arroz Irrigado
#' @description Dados do Ensaio 1 de um experimento em DIC, que estudou
#'     a produtividade de grãos de arroz em lavoura conduzida com
#'     inundação contínua durante todo o ciclo. O experimento teve seis
#'     repetições e sete tratamentos.
#' @format Um \code{data.frame} com 42 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{geno}}{Fator de níveis nominais. Tratamento aplicado em
#'      arroz irrigado.}
#'
#' \item{\code{rept}}{Número inteiro que identifica as repetições de
#'     cada tratamento.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz irrigado. A unidade de
#'     medida não é conhecida.}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 249)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.1)
#'
#' str(ZimmermannTb12.1)
#'
#' xyplot(prod ~ geno, data = ZimmermannTb12.1,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Produção de grãos de arroz irrigado")
#'
#' aggregate(prod ~ geno, data = ZimmermannTb12.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name ZimmermannTb12.13
#' @title Propor\enc{çã}{ca}o de Insetos Infectados
#' @description Dados do ensaio 1 de um experimento em DBC que estudou a
#'     patogenicidade de fungos ao percevejo do grão de arroz. A
#'     testemunha sem infecção (1) era o tratamento comum entre os dois
#'     experimentos. Os dados se referem à proporção de percevejos
#'     infectados, medida transformada pelo arco seno da raiz quadrada
#'     da proporção.
#' @format Um \code{data.frame} com 35 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis nominais. Tratamento aplicado em
#'     arroz.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{asinprop}}{Arco seno da raíz quadrada
#'     (\eqn{\arcsin(\sqrt{p})}) da proporção (em radianos) de insetos
#'     infectados.}
#'
#' }
#' @keywords DBC proporção
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tab 12.13, pág 255)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.13)
#'
#' str(ZimmermannTb12.13)
#'
#' xyplot(asinprop ~ trat , groups = bloco, data = ZimmermannTb12.13,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Tratamentos",
#'        ylab = "Arco seno da raíz da proporção de insetos infectados")
#'
#' aggregate(asinprop ~ trat, data = ZimmermannTb12.13,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name ZimmermannTb12.14
#' @title Propor\enc{çã}{ca}o de insetos infectados
#' @description Dados do ensaio 2 de um experimento em DBC que estudou a
#'     patogenicidade de fungos as percevejo do grão de arroz. A
#'     testemunha sem infecção (1) era o tratamento comum entre os dois
#'     experimentos. Os dados se referem à proporção de percevejos
#'     infectados, transformada pelo arco seno da raiz quadrada da
#'     proporção.
#' @format Um \code{data.frame} com 35 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis nominais. Tratamento aplicado em
#'     arroz.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{asinprop}}{Arco seno da raíz quadrada
#'     (\eqn{\arcsin(\sqrt{p})}) da proporção (em radianos) de insetos
#'     infectados.}
#'
#' }
#' @keywords DBC proporção
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 255)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.14)
#'
#' str(ZimmermannTb12.14)
#'
#' xyplot(asinprop ~ trat , groups = bloco, data = ZimmermannTb12.14,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Tratamentos",
#'        ylab = "Arco seno da raíz da proporção de insetos infectados")
#'
#' aggregate(asinprop ~ trat, data = ZimmermannTb12.14,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name ZimmermannTb12.19
#' @title Produtividade de feij\enc{ã}{a}o em ensaio de competi\enc{çã}{ca}o de cultivares
#' @description Dados do ensaio 1 de um experimento em DBC de competição
#'     de cultivares de feijão do grupo preto. Este ensaio foi realizado
#'     no município de Senador Canedo (GO). Houveram três cultivares
#'     testemunhas e mais seis em cada ensaio.  Cada experimento foi
#'     conduzido no período de inverno, sob irrigação por aspersão. Os
#'     dados são relativos à produtividade de grãos, em kg/ha.
#' @format Um \code{data.frame} com 36 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Identifica a cultivar de
#'     feijão.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{prod}}{Produtividade de grãos em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 12.19, pág 258)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.19)
#'
#' str(ZimmermannTb12.19)
#'
#' xyplot(prod ~ cult, data = ZimmermannTb12.19,
#'        groups = bloco, type = "b",
#'        xlab = "Tratamentos",
#'        ylab = "Produtividade de grãos",
#'        scales = list(x = list(rot = 90)))
#'
#' aggregate(prod ~ cult, data = ZimmermannTb12.19,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name ZimmermannTb12.2
#' @title Estudo sobre produtividade de gr\enc{ã}{a}os de arroz irrigado
#' @description Dados do Ensaio 2 de um experimento em DIC, que estudou
#'     a produtividade de grãos de arroz em lavoura conduzida com
#'     inundação contínua até a fase de diferenciação do primórdio
#'     floral e drenada após esta fase. O experimento teve seis
#'     repetições e sete tratamentos.
#' @format Um \code{data.frame} com 42 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{geno}{Fator de níveis nominais. Genótipo do arroz
#'      irrigado.}
#'
#' \item{rept}{Número inteiro que identifica as repetições de cada
#'     tratamento.}
#'
#' \item{prod}{Produção de grãos de arroz irrigado.  A unidade de medida
#'     não é conhecida.}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 12.2, pág 249)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.2)
#'
#' str(ZimmermannTb12.2)
#'
#' xyplot(prod ~ geno, data = ZimmermannTb12.2,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Produção de grãos de arroz irrigado")
#'
#' aggregate(prod ~ geno, data = ZimmermannTb12.2,
#'          FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL

#' @name ZimmermannTb12.20
#' @title Produtividade de Gr\enc{ã}{a}os de Cultivares de Feij\enc{ã}{a}o
#' @description Dados do ensaio 2 de um experimento em DBC de competição
#'     de cultivares de feijão do grupo preto. Este ensaio foi realizado
#'     no município de Santo Antonio de Goiás (GO). Houveram três
#'     cultivares testemunhas e mais seis em cada ensaio.  Cada
#'     experimento foi conduzido no período de inverno, sob irrigação
#'     por aspersão. Os dados são relativos à produtividade de grãos, em
#'     kg/ha.
#' @format Um \code{data.frame} com 36 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. dentifica a cultivar de
#'     feijão.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{prod}}{Produtividade de grãos em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 258)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.20)
#'
#' xyplot(prod ~ cult , groups = bloco, data = ZimmermannTb12.20,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Produtividade de grãos")
#'
#' aggregate(prod ~ cult, data = ZimmermannTb12.20,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL

#' @name ZimmermannTb12.26
#' @title Produtividade de Arroz para Resist\enc{ê}{e}ncia a Insetos
#' @description Ensaio 1 de um experimento em DQL, que avaliou a
#'     resistência a insetos em seis cultivares de arroz, sendo uma
#'     delas comum ao ensaio 2. Os dados são de produtividade de
#'     espiguetas, em gramas.
#' @format Um \code{data.frame} com 36 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis numéricos. Indica em que linha do
#'      quadrado a unidade experimental está.}
#'
#' \item{coluna}{Fator de níveis numéricos. Indica em que coluna do
#'      quadrado a unidade experimental está.}
#'
#' \item{cult}{Indica a cultivar.}
#'
#' \item{prod}{Produção de espiguetas, em gramas.}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 261)
#' @examples
#'
#' library(lattice)
#' library(reshape)
#'
#' data(ZimmermannTb12.26)
#' str(ZimmermannTb12.26)
#'
#' cast(ZimmermannTb12.26, linha ~ coluna, value = "cult")
#' cast(ZimmermannTb12.26, linha ~ coluna, value = "prod")
#'
#' levelplot(prod ~ linha + coluna,
#'           data = ZimmermannTb12.26, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts, ...)
#'               panel.text(x, y, ZimmermannTb12.26$cult[subscripts],
#'                          cex = 0.8)
#'               panel.text(x, y, z, pos = 1)
#'           })
#'
#' xyplot(prod ~ cult, data = ZimmermannTb12.26, type = c("p", "a"),
#'        xlab = "Cultivares",
#'        ylab = expression("Produtividade de espiguetas"~(g)))
#'
NULL

#' @name ZimmermannTb12.27
#' @title Produtividade de Arroz para Resist\enc{ê}{e}ncia a Insetos
#' @description Ensaio 2 de um experimento em delineamento quadrado
#'     latino, que avaliou a resistência a insetos em seis cultivares de
#'     arroz, sendo uma delas comum ao ensaio 1. Os dados são de
#'     produtividade de espiguetas, em gramas.
#' @format Um \code{data.frame} com 36 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis nominais. Indica em que linha do
#'      quadrado latino a unidade experimental está.}
#'
#' \item{coluna}{Fator de níveis nominais. Indica em que coluna do
#'     quadrado latino a unidade experimental está.}
#'
#' \item{cult}{Fator de níveis nominais que representam as cultivares
#'     de arroz.}
#'
#' \item{prod}{Produção de espiguetas, em gramas.}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 12.27, pág 262)
#' @examples
#'
#' library(lattice)
#' library(reshape)
#'
#' data(ZimmermannTb12.27)
#' str(ZimmermannTb12.27)
#'
#' cast(ZimmermannTb12.27, linha ~ coluna, value = "cult")
#' cast(ZimmermannTb12.27, linha ~ coluna, value = "prod")
#'
#' levelplot(prod ~ linha + coluna,
#'           data = ZimmermannTb12.27, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts, ...)
#'               panel.text(x, y, ZimmermannTb12.27$cult[subscripts],
#'                          cex = 0.8)
#'               panel.text(x, y, z, pos = 1)
#'           })
#'
#' xyplot(prod ~ cult, data = ZimmermannTb12.27, type = c("p", "a"),
#'        xlab = "Cultivares",
#'        ylab = expression("Produtividade de espiguetas"~(g)))
#'
NULL

#' @name ZimmermannTb12.32
#' @title Competi\enc{çã}{ca}o de Cultivares de Feij\enc{ã}{a}o
#' @description Dados de um estudo em delineamento de blocos completos com 
#'     quatro repetições. O experimento foi um ensaio de competição de
#'     cultivares e linhagens de feijão, em cultivos irrigado e de sequeiro.
#'     São apresentadas na tabela a média nos ensaios irrigados, nos de sequeiro
#'     e geral. 
#' @format Um \code{data.frame} com 13 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{geno}}{Fator de níveis nominais. Identifica o genótipo repetição 
#'     da observação.}
#'
#' \item{\code{irrigados}}{Médias nos ensaios irrigados.}
#' 
#' \item{\code{sequeiro}}{Médias nos ensaios de sequeiro.}
#'
#' \item{\code{geral}}{Média geral.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 12.32, pág 264)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.32)
#'
#' str(ZimmermannTb12.32)
#'
#' xyplot(geral ~ geno, data = ZimmermannTb12.32,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Genótipo",
#'        ylab = "Média Geral",
#'        main = "Competição de Cultivares de Feijão",
#'        scales = list(x = list(rot = 90)))
NULL

#' @name ZimmermannTb12.33
#' @title Competi\enc{çã}{ca}o de Cultivares de Feij\enc{ã}{a}o
#' @description Dados de um estudo em delineamento de blocos completos com 
#'     quatro repetições. O experimento foi um ensaio de competição de
#'     cultivares e linhagens de feijão, em cultivos irrigado e de sequeiro.
#'     São apresentadas na tabela o total nos ensaios irrigados, nos de sequeiro
#'     e geral. 
#' @format Um \code{data.frame} com 13 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{geno}}{Fator de níveis nominais. Identifica o genótipo repetição 
#'     da observação.}
#'
#' \item{\code{irrigados}}{Totais nos ensaios irrigados.}
#' 
#' \item{\code{sequeiro}}{Totais nos ensaios de sequeiro.}
#'
#' \item{\code{geral}}{Total geral.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 12.33, pág 265)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.33)
#'
#' str(ZimmermannTb12.33)
#'
#' xyplot(geral ~ geno, data = ZimmermannTb12.33,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Genótipo",
#'        ylab = "Total Geral",
#'        main = "Competição de Cultivares de Feijão",
#'        scales = list(x = list(rot = 90)))
NULL

#' @name ZimmermannTb12.7
#' @title \enc{Á}{A}rea Sob a Curva do Progresso de Brusone
#' @description Dados do ensaio 1 de um experimento que avaliou as
#'     cultivares para a área foliar atacada por brusone
#'     (\emph{Pyricularia Orizae} L.) em diferentes datas e se calculou
#'     área sob a curva do progresso da doença. Este primeiro
#'     experimento foi semeado na densidade de oitenta sementes por
#'     metro. Os dados foram transformados por logaritmo natural,
#'     procurando-se uma maior homogeneização das variâncias.
#' @format Um \code{data.frame} com 18 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Indica a cultivar.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{aacpd}}{Logaritmo natural da área sob a curva de
#'     progresso da doença. A unidade de medida não é conhecida.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 12.7, pág 251)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.7)
#'
#' str(ZimmermannTb12.7)
#'
#' xyplot(aacpd ~ cult , groups = bloco, data = ZimmermannTb12.7,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Logaritmo da área sob a curva de progresso da doença")
#'
#' aggregate(aacpd ~ cult, data = ZimmermannTb12.7,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name ZimmermannTb12.8
#' @title \enc{Á}{A}rea Sob a Curva do Progresso de uma doen\enc{ç}{c}a
#' @description Dados do ensaio 1 de um experimento que avaliou as
#'     cultivares para a área foliar atacada por brusone
#'     (\emph{Pyricularia Orizae} L.) em diferentes datas e se calculou
#'     área sob a curva do progresso da doença. Este primeiro
#'     experimento foi semeado na densidade de duzentas sementes por
#'     metro. Os dados foram transformados por logaritmo natural,
#'     procurando-se uma maior homogeneização das variâncias.
#' @format Um \code{data.frame} com 18 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Indica a cultivar.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{aacpd}}{Logaritmo natural da área sob a curva de
#'     progresso da doença. A unidade de medida não é conhecida.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 252)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.8)
#'
#' str(ZimmermannTb12.8)
#'
#' xyplot(aacpd ~ cult, groups = bloco, data = ZimmermannTb12.8,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Área sob a curva do progresso da doença")
#'
#' aggregate(aacpd ~ cult, data = ZimmermannTb12.8,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name ZimmermannTb13.1
#' @title \enc{Í}{I}ndice de \enc{Á}{A}rea de Folhar e Idade das Plantas
#' @description Em um plantio de feijão com a cultivar Jalo Precoce
#'     foram coletadas plantas em dias sequenciais (Idades), e o índice
#'     de área foliar (IAF) foi medido.
#' @format Um \code{data.frame} com 8 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{\code{idade}}{Variável métrica que a idade das plantas.}
#'
#' \item{\code{IAF}}{Índice de área foliar.}
#'
#' \item{\code{x2}}{IAF elevada ao quadrado.}
#'
#' \item{\code{y2}}{Idade elevada ao quadrado.}
#'
#' \item{\code{xy}}{Produto entre idade e IAF.}
#'
#' }
#' @keywords REG
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 13.1, pág 272)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb13.1)
#' str(ZimmermannTb13.1)
#'
#' splom(ZimmermannTb13.1, type = c("p", "smooth"))
NULL

#' @name ZimmermannTb14.3
#' @title Estande de Plantas e Produtividade de Cultivares de Feij\enc{ã}{a}o
#' @description Dados de um ensaio de competição de cultivares de feijão
#'     onde foram registrados a produtivididade, bem como o estande por
#'     área útil, para sete cultivares de arroz. O experimento foi feito
#'     em delineamento de blocos completos ao acaso e a informação de
#'     estande foi medida para explicar parte da variação em
#'     produtividade das parcelas, já maior estande favorece maior
#'     produtividade.
#' @format Um \code{data.frame} com 28 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos.}
#'
#' \item{\code{cult}}{Fator categórico que identifica as cultivares de
#'     feijão.}
#'
#' \item{\code{stand}}{Estande de plantas na área útil da parcela.}
#'
#' \item{\code{prod}}{Produtividade, em kg ha\eqn{^{-1}}}
#'
#' }
#' @seealso \code{\link{ZimmermannTb4.4}} contém dados referentes ao
#'     mesmo ensaio, porém com mais cultivares e sem a informação de
#'     estande.
#' @keywords DBC COV
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 14.3, pág 293)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb14.3)
#' str(ZimmermannTb14.3)
#'
#' cex <- with(ZimmermannTb14.3, {
#'     x <- stand - min(stand)
#'     x <- 0.5 + 1 * x/max(x)
#'     L <- cbind(cex = fivenum(x), labels = fivenum(stand))
#'     return(list(cex = x, legend = L))
#' })
#'
#' key <- list(
#'     title = "Stand", cex.title = 1.1, columns = 5,
#'     points = list(pch = 1, cex = cex$legend[, "cex"]),
#'     text = list(c(sprintf("%0.0f", cex$legend[, "labels"]))))
#'
#' xyplot(prod ~ cult, data = ZimmermannTb14.3,
#'        type = c("p", "a"), cex = cex$cex,
#'        xlab = "Cultivares", ylab = "Produção", key = key)
#'
#' xyplot(prod ~ cult, groups = bloc, data = ZimmermannTb14.3,
#'        type = "a", xlab = "Cultivares", ylab = "Produção",
#'        key = key,
#'        panel = function(x, y, subscripts, groups, ...) {
#'            panel.xyplot(x = x, y = y,
#'                         subscripts = subscripts,
#'                         groups = groups, ...)
#'            col <- trellis.par.get()$superpose.symbol$col[
#'                                        groups[subscripts]]
#'            panel.points(x = x, y = y, cex = cex$cex[subscripts],
#'                         col = col)
#'            panel.text(x = x,  y = y, pos = 2, cex = 0.8,
#'                       labels = sprintf("%d", ZimmermannTb14.3$stand))
#'        })
#'
NULL

#' @name ZimmermannTb14.9
#' @title Controle de Insetos na Produtividade de Gr\enc{ã}{a}os de Arroz
#' @description Dados de um ensaio de controle de insetos/pragas na
#'     cultura do arroz.  O experimento foi feito em delineamento
#'     quadrado latino 6 \eqn{\times} 6 mas há uma um dado perdido
#'     (linha 6, coluna 2). Esta observação recebeu o valor \code{NA}.
#' @format Um \code{data.frame} com 36 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator que indica a linha do quadrado latino.}
#'
#' \item{\code{coluna}}{Fator que indica a coluna do quadrado latino.}
#'
#' \item{\code{inset}}{Fator que indica o tratamento para controle de
#'     insetos.}
#'
#' \item{\code{prod}}{Produção de grãos por área útil da parcela.}
#'
#' }
#' @seealso Dados do mesmo experimento, referente à variável de contagem
#'     número de perfilhos de arroz, estão disponíveis em
#'     \code{\link{ZimmermannTb5.15}}.
#' @keywords DQL desbalanceado
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 14.9, pág. 297)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb14.9)
#' str(ZimmermannTb14.9)
#'
#' # Indicadora de observação perdida/ausente.
#' is.na(ZimmermannTb14.9$prod)
#'
#' levelplot(prod ~ linha + coluna,
#'           data = ZimmermannTb14.9, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'             panel.levelplot(x, y, z, subscripts = subscripts)
#'             panel.text(x, y,
#'                        labels = ZimmermannTb14.9$inset[subscripts],
#'                        pos = 3)
#'             panel.text(x, y, sprintf("%0.1f", z), pos = 1,
#'                        col = is.na(z[subscripts]) + 1)
#'           })
#'
#' xyplot(prod ~ inset,
#'        data = na.omit(ZimmermannTb14.9),
#'        type = c("p", "a"),
#'        xlab = "Inseticidas",
#'        ylab = "Produção")
#'
NULL

#' @name ZimmermannTb15.1
#' @title Produ\enc{çã}{ca}o de Perfilhos por Planta em Fun\enc{çã}{ca}o de 4 Fatores
#' @description Dados de um ensaio fatorial fracionado \eqn{2^{4-1}}, em
#'     blocos ao acaso. O experimento mediu o número médio de perfilhos
#'     por planta. Os quatro fatores estudados foram: cultivar,
#'     calcário, gesso e fósforo. Para os fatores abióticos, o nível
#'     baixo correspondeu à não aplicação do insumo e para as
#'     cultivares, a IAC 47. O nível 1 correspondeu a: cultivar IAC 165,
#'     5000 kg ha\eqn{^{-1}} de calcário, 1500 kg ha\eqn{^{-1}} de gesso
#'     e kg ha\eqn{^{-1}} de fósforo.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos.}
#'
#' \item{\code{cult}}{Fator de níveis codificados que representa as
#'     cultivares: IAC 47 e IAC 165.}
#'
#' \item{\code{calc}}{Fator codificado que representa as doses de
#'     calcário: 0 e 5000 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{gess}}{Fator codificado que representa as doses de gesso:
#'     0 e 1500 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{p2o5}}{Fator codificado que representa as doses de
#'     fósforo: 0 e 50 kg de P\eqn{_2}O\eqn{_5} ha\eqn{^{-1}}.}
#'
#' \item{\code{perf}}{Número médio de perfilhos por planta.}
#'
#' }
#' @details Apesar de ter sido um experimento feito em blocos, não foi
#'     utilizado confundimento bom blocos, pois todos os blocos tiveram
#'     a mesma fração do fatorial (a fração complementar não foi
#'     utilizada).
#' @keywords DBC FRAC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 306)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb15.1)
#' str(ZimmermannTb15.1)
#'
#' ftable(xtabs(~cult + calc + gess + p2o5, data = ZimmermannTb15.1))
#'
#' xyplot(perf ~ factor(calc) | factor(cult),
#'        groups = interaction(gess, p2o5, sep = ":"),
#'        data = ZimmermannTb15.1,
#'        xlab = "Nível de calcário",
#'        ylab = "Número médio de perfilhos por planta",
#'        auto.key = list(title = "Gesso:Fósforo", cex.title = 1.1,
#'                        columns = 4),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Cultivar",
#'                             factor.levels = c("IAC 47", "IAC 165")))
#'
NULL

#' @name ZimmermannTb15.10
#' @title Aduba\enc{çã}{ca}o NPK na Produ\enc{çã}{ca}o de Arroz
#' @description Dados de produção de grãos em terras altas, em kg
#'     ha\eqn{^{-1}}.  Este é um ensaio contendo apenas uma repetição de
#'     um fatorial fracionado correspondente a 1/5 de um \eqn{5^3}.
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{N}}{Fator codificado que representa a dose de
#'     nitrogênio.}
#'
#' \item{\code{P}}{Fator codificado que representa a dose de fósforo.}
#
#' \item{\code{K}}{Fator codificado que representa a dose de potássio.}
#'
#' \item{\code{prod}}{Produção de grãos, kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords FRAC superficie
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 15.10, pág. 314)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb15.10)
#' str(ZimmermannTb15.10)
#'
#' # Arranjo de fatores como a estrutura de quadrado latino.
#' reshape::cast(data = ZimmermannTb15.10,
#'               formula = N ~ P, value = "K")
#'
#' xyplot(prod ~ N + P + K, data = ZimmermannTb15.10,
#'        outer = TRUE, as.table = TRUE, type = c("p", "a"),
#'        xlab = "Níveis de NPK",
#'        ylab = "Produção de grãos")
#'
NULL

#' @name ZimmermannTb15.4
#' @title Fatorial Fracionado para Estudo da Aduba\enc{çã}{ca}o em Arroz
#' @description Dados de um ensaio com fração 1/3 de um fatorial
#'     \eqn{3^3}, conduzido em blocos ao acaso. O estudo é sobre a
#'     absorção e translocação de zinco em arroz de terras altas sob a
#'     influência de fósforo e calcário. Os níveis dos fatores eram de
#'     0, 5 e 10 kg ha\eqn{^{-1}} para o zinco, 0, 50 e 100 kg
#'     ha\eqn{^{-1}} para o fósforo e 0, 1.5 e 3 ton ha\eqn{^{-1}} para
#'     o calcário. Os dados são de produção de grãos, em kg
#'     ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 27 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica os
#'     blocos.}
#'
#' \item{\code{zinco}}{Fator de níveis codificados que indica o nível de
#'     zinco aplicado: 0, 5 e 10 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{fosf}}{Fator de níveis codificados que indica o nível de
#'     fósforo aplicado: 0, 50 e 100 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{calc}}{Fator de níveis codificados que indica o nível de
#'     calcário aplicado: 0, 1.5 e 3 kg ton ha\eqn{^{-1}}.}
#'
#' \item{\code{prod}}{Produtividade de grãos, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @seealso Estes dados são na realiadade uma adaptação dos dados em
#'     \code{\link{ZimmermannTb11.13}} pois referem-se ao conjunto dos 3
#'     blocos (do total de 9) continham a combinação 000 de zinco,
#'     fósforo e cálcio.
#' @keywords DBC FRAC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 15.4, pág. 309)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb15.4)
#' str(ZimmermannTb15.4)
#'
#' xyplot(prod ~ zinco | factor(fosf), groups = calc,
#'        data = ZimmermannTb15.4, as.table = TRUE,
#'        xlab = "Níveis codificados de zinco",
#'        ylab = expression("Produção de grãos"~(kg~ha^{-1})),
#'        auto.key = list(title = "Calcário", cex.title = 1.1,
#'                        columns = 3),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Fósforo"))
#'
NULL

#' @name ZimmermannTb16.1
#' @aliases ZimmermannTb16.2
#' @title An\enc{á}{a}lise de Composi\enc{çã}{ca}o do Solo Aluviais
#' @description Dados de análise de solos aluviais, que apresentaram pH
#'     abaixo de sete, referentes à associação existente entre teor de
#'     matéria orgânica no solo (porcentagem) com disponibilidade de
#'     fósforo (mg kg\eqn{^{-1}}). A amostra tem apenas sete
#'     observações.
#' @format Um \code{data.frame} com 7 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{origem}}{Fator de níveis nominais que identifica o local
#'     de origem da amostra de solo.}
#'
#' \item{\code{mo}}{Matéria orgânica no solo (\%).}
#'
#' \item{\code{fosf}}{Disponibilidade de fósforo no solo (mg
#'     kg\eqn{^{-1}}).}
#'
#' \item{\code{pmo}}{Posto da váriavel \code{mo}.}
#'
#' \item{\code{pfosf}}{Posto da váriavel \code{fosf}.}
#'
#' \item{\code{Nc}}{Indica o número de pares de postos concordantes.}
#'
#' \item{\code{Nd}}{Indica o número de pares de postos discordantes.}
#'
#' }
#' @keywords correlacao
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.1, pág. 327)
#' @examples
#'
#' data(ZimmermannTb16.1)
#' str(ZimmermannTb16.1)
#'
#' mean(ZimmermannTb16.1$mo)
#' mean(ZimmermannTb16.1$fosf)
#'
#' with(ZimmermannTb16.1, {
#'     cbind(pmo = rank(mo), pfosf = rank(fosf))
#' })
#'
NULL

#' @name ZimmermannTb16.10
#' @title N\enc{ú}{u}mero de Colmos Atacados por \emph{Elasmopalpus}
#' @description Experimento realizado em delineamento quadrado latino 6
#'     \eqn{times} 6.  Os dados são referentes ao número de colmos
#'     atacados por \emph{Elasmopalpus lignosellus} L. em plantas de
#'     arroz. São apresentados na tabela também os respectivos postos de
#'     cada dado.
#' @format Um \code{data.frame} com 36 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator categórico que representa as linhas do quadrado
#'     latino.}
#'
#' \item{coluna}{Fator categórico que representa as colunas do quadrado
#'     latino.}
#'
#' \item{trat}{Fator que representa o tratamento aplicado.}
#'
#' \item{colmos}{Número de colmos atacados por \emph{E. lignosellus}.}
#'
#' \item{posto}{Posto correspondente ao número de colmos atacados de
#'     cada unidade experimental (\eqn{6 \times 6 = 36}).}
#'
#' }
#' @keywords DQL contagem
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.10, pág. 357)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.10)
#' str(ZimmermannTb16.10)
#'
#' ZimmermannTb16.10$posto <- rank(ZimmermannTb16.10$colmos)
#'
#' levelplot(colmos ~ linha + coluna,
#'           data = ZimmermannTb16.10, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts)
#'               trat <- ZimmermannTb16.10$trat[subscripts]
#'               posto <- ZimmermannTb16.10$posto[subscripts]
#'               panel.text(x, y, labels = trat, pos = 3)
#'               panel.text(x, y,
#'                          labels = sprintf("%0.1f (%0.1f)",
#'                                           z, posto),
#'                          pos = 1)
#'           })
#'
#' xyplot(colmos ~ trat, data = ZimmermannTb16.10,
#'        type = c("p", "a"),
#'        ylab = "Número de colmos atacados",
#'        xlab = "Tratamento")
#'
NULL

#' @name ZimmermannTb16.3
#' @title Teores de Mat\enc{é}{e}ria Org\enc{â}{a}nica de Solos de V\enc{á}{a}rzea
#' @description Teores de matéria orgânica de solos aluviais e gely
#'     húmicos.
#' @format Um \code{data.frame} com 14 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{solo}}{Tipo de solo, sendo A - aluviais e B - gley
#'     húmicos.}
#'
#' \item{\code{mo}}{Teor de matéria orgânica do solo (\%).}
#'
#' }
#' @keywords TODO
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.3, pág. 337)
#' @examples
#'
#' # Postos.
#' rank(ZimmermannTb16.3$mo)
#'
#' aggregate(mo ~ solo, data = ZimmermannTb16.3, FUN = mean)
#'
NULL

#' @name ZimmermannTb16.4
#' @title Hastes Mortas de Arroz por \emph{Elasmopalpus lignosellus} L.
#' @description Dados de um experimento em delineamento inteiramente
#'     casualizado que estudou cultivares de arroz, em casa de
#'     vegetação. Os dados são referentes ao número de hastes mortas por
#'     \emph{Elasmopalpus lignosellus} por parcela. Cada cultivar foi
#'     repetida três vezes.
#' @format Um \code{data.frame} com 9 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que identifica as cultivares de
#'     arroz.}
#'
#' \item{\code{nmort}}{Número de hastes mortas por \emph{Elasmopalpus
#'     lignosellus} por parcela.}
#'
#' \item{\code{posto}}{Posto da váriavel \code{nmort}.}
#'
#' }
#' @keywords DIC contagem
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.4, pág. 341)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.4)
#' str(ZimmermannTb16.4)
#'
#' xyplot(nmort ~ cult, data = ZimmermannTb16.4,
#'        xlab = "Cultivar",
#'        ylab = "Número de hastes mortas")
#'
#' rank(ZimmermannTb16.4$nmort)
#'
NULL

#' @name ZimmermannTb16.5
#' @title N\enc{ú}{u}mero de Dias para Flora\enc{çã}{ca}o de Cultivares de Arroz
#' @description Experimento realizado em delineamento em blocos
#'     completos ao acaso, utilizando oito cultivares de arroz
#'     irrigado. Os dados são referentes ao número de dias até a
#'     floração das plantas de arroz, uma variável do tipo tempo até o
#'     evento/desfecho. São apresentados na tabela também os respectivos
#'     postos de cada dado, a fim de facilitar a aplicação do teste de
#'     Friedman (teste não paramétrico).
#' @format Um \code{data.frame} com 24 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{bloco}{Fator categórico que indica o bloco.}
#'
#' \item{cult}{Fator categórico que indica a cultivar.}
#'
#' \item{dias}{Número total de dias até a floração das plantas.}
#'
#' \item{posto}{Posto corresponden ao número de dias de cada cultivas
#'     dentro de cada bloco. O posto pode ser calculado com a função
#'     \code{\link[base]{rank}}.}
#'
#' }
#' @keywords DIC sobrevivencia
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.5, pág 347)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.5)
#' str(ZimmermannTb16.5)
#'
#' # Como calcular o posto no R.
#' p <- by(data = ZimmermannTb16.5,
#'         INDICES = ZimmermannTb16.5$bloco,
#'         FUN = function(dataset) {
#'             dataset$posto <- rank(dataset$dias)
#'             return(dataset)
#'         })
#' ZimmermannTb16.5 <- do.call(rbind, p)
#' rownames(ZimmermannTb16.5) <- NULL
#'
#' xyplot(dias + posto ~ cult, outer = TRUE, groups = bloco,
#'        data = ZimmermannTb16.5, jitter.x = TRUE,
#'        scales = list(y = list(relation = "free"),
#'                      x = list(rot = 90)),
#'        xlab = "Cultivares", ylab = "",
#'        strip = strip.custom(factor.levels = c("Dias para floração",
#'                                               "Posto")))
#'
#' xyplot(posto ~ dias, data = ZimmermannTb16.5,
#'        xlab = "Dias para floração", ylab = "Posto",
#'        jitter.y = TRUE)
#'
NULL

#' @name ZimmermannTb16.8
#' @title Dias para Flora\enc{çã}{ca}o de Cultivares de Arroz em um Reticulado
#'     Quadrado
#' @description Experimento realizado em delineamento reticulado
#'     quadrado 5 \eqn{\times} 5, com três repetições. Os dados são
#'     referentes ao número de dias até a floração das cultivares de
#'     arroz de terras altas. São apresentados na tabela também os
#'     respectivos postos de cada dado, segundo a metodologia definida
#'     no teste de Durbin.
#' @format Um \code{data.frame} com 75 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{rept}{Fator categórico que representas as repetições de
#'     blocos. Cada repetição contém 5 blocos de tamanho 5 e uma
#'     repetição de cada cultivar.}
#'
#' \item{bloco}{Fator que identifica os blocos dentro de cada
#'     repetição.}
#'
#' \item{cult}{Fator que representa as cultivares.}
#'
#' \item{dias}{Número total de dias até a floração.}
#'
#' \item{posto}{Posto correpondente ao número de dias para floração das
#'     cultivares dentro dos blocos.}
#'
#' }
#' @seealso Os dados de produção de arroz do mesmo ensaio estão
#'     disponíveis em \code{\link{ZimmermannTb7.1}}.
#' @keywords LAT sobrevivencia
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.8, pág. 353)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.8)
#' str(ZimmermannTb16.8)
#'
#' p <- by(data = ZimmermannTb16.8,
#'         INDICES = with(ZimmermannTb16.8,
#'                        interaction(bloco, rept)),
#'         FUN = function(dataset) {
#'             dataset$posto <- rank(dataset$dias)
#'             return(dataset)
#'         })
#' ZimmermannTb16.8 <- do.call(rbind, p)
#' rownames(ZimmermannTb16.5) <- NULL
#'
#' xyplot(dias + posto ~ cult, outer = TRUE, groups = rept,
#'        data = ZimmermannTb16.8, jitter.x = TRUE,
#'        scales = list(y = list(relation = "free"),
#'                      x = list(rot = 90)),
#'        xlab = "Cultivares", ylab = "",
#'        strip = strip.custom(factor.levels = c("Dias para floração",
#'                                               "Posto")))
#'
#' xyplot(posto ~ dias, data = ZimmermannTb16.8,
#'        xlab = "Dias para floração", ylab = "Posto",
#'        jitter.y = TRUE)
#'
NULL

#' @name ZimmermannTb3.12
#' @title Dados de mat\enc{é}{e}ria seca em plantas
#' @description Experimento em DIC que estudou a produção de matéria
#'     seca em plantas de arroz, em gramas. No experimento foram
#'     utilizados cinco vasos para cada um de quatro tratamentos e três
#'     plantas para cada vaso (parcela).
#' @format Um \code{data.frame} com 75 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{solo}}{Fator de níveis nominais representados por
#'     inteiros. Indica o tipo de solo aonde o arroz foi plantado.}
#'
#' \item{\code{planta}}{Fator de níveis numéricos que identifica as
#'     plantas dentro dos vasos.}
#'
#' \item{\code{vaso}}{Fator de níveis numéricos que identifica os vasos
#'     de cada tratamento.}
#'
#' \item{\code{prod}}{Produção de matéria seca das plantas, em gramas.}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Table 3.12, pág 62)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb3.12)
#'
#' str(ZimmermannTb3.12)
#' xtabs(~solo + vaso, data = ZimmermannTb3.12)
#'
#' aggregate(prod ~ solo, data = ZimmermannTb3.12,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(prod ~ solo, groups = vaso, data = ZimmermannTb3.12,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Tratamentos",
#'        ylab = "Produção de matéria seca das plantas (g)")
#'
NULL

#' @name ZimmermannTb3.2.1
#' @title Aduba\enc{çã}{ca}o nitrogenada na Cultura do Arroz
#' @description Dados de um experimento em DIC que visa estudar a
#'     adubação nitrogenada no arroz irrigado, com 4 tratamentos e 8
#'     repetições. A resposta observada foi a produção de grãos de arroz
#'     irrigado, em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{adub}}{Fator de níveis nominais. Indica a adubação
#'      aplicada ao arroz irrigado.}
#'
#' \item{\code{rept}}{Número inteiro que identifica as repetições de
#'     cada tratamento.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz irrigado em kg
#'     ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 54)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb3.2.1)
#'
#' str(ZimmermannTb3.2.1)
#'
#' unstack(x = ZimmermannTb3.2.1, form = prod ~ adub)
#'
#' aggregate(prod ~ adub, data = ZimmermannTb3.2.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#'  xyplot(prod ~ adub, data = ZimmermannTb3.2.1,
#'         type = c("p", "a"), jitter.x = TRUE,
#'         xlab = "Tratamentos",
#'         ylab = expression(Produção~de~grãos~(kg~ha^{-1})))
#'
NULL

#' @name ZimmermannTb3.5
#' @title Fracionamento da Aduba\enc{çã}{ca}o na Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Arroz
#'     Irrigado
#' @description Dados de um estudo sobre adubação nitrogenada na cultura
#'     do arroz irrigado. Foram testadas quatros formas de aplicação do
#'     adubo fazendo o fracionamento das quantidades em diferentes
#'     épocas. O experimento foi instalado em delineamento inteiramente
#'     casualizado com 8 repetições.
#' @format Um \code{data.frame} com 32 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis categóricos que representa as
#'     formas de adubação: 1 = 80 kg/ha no plantio, 2 = 40 kg/ha 40 dias
#'     no plantio após a emergência (DAE), 3 = 13.2 kg/ha no plantio e
#'     66.8 kg/ha aos 40 DAE, e 4 = 13.2 kg/ha no plantio e 33.4 kg/ha
#'     aos 40 e 60 DAE.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repretições de uma forma
#'     de adubação.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz irrigado (ka
#'     ha\eqn{^{-1}}).}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 3.5, pág. 54)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb3.5)
#' str(ZimmermannTb3.5)
#'
#' # Quantidade[época].
#' adub <- expression(80[0],
#'                    40[0] + 40[40],
#'                    13.2[0] + 66.8[40],
#'                    13.2[0] + 33.4[40] + 33.4[60])
#' xyplot(prod ~ adub, data = ZimmermannTb3.5,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Formas de adubação",
#'        ylab = expression("Produção de arroz"~(kg~ha^{-1})),
#'        scales = list(x = list(labels = adub)))
#'
#' aggregate(prod ~ adub, data = ZimmermannTb3.5,
#'           FUN = function(x) { c(mean = mean(x), sd = sd(x)) })
#'
NULL

#' @name ZimmermannTb4.11
#' @title Alturas M\enc{é}{e}dias de Perfilhos
#' @description Dados de um ensaio com dez genótipos, quatro blocos e
#'     cinco amostras por parcela, tomadas ao acaso, das alturas dos
#'     perfilhos, medidos em cm.
#' @format Um \code{data.frame} com 200 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{geno}}{Fator de níveis nominais. Identifica o genótipo
#'     da planta.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{amostra}}{Fator de níveis numéricos. Identifica à qual
#'     amostra pertence a observação.}
#'
#' \item{\code{alt}}{Altura de perfilhos (cm).}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 4.11, pág 79)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb4.11)
#'
#' str(ZimmermannTb4.11)
#'
#' xyplot(alt ~ geno, groups = bloco,
#'        data = ZimmermannTb4.11,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Tratamentos",
#'        ylab = "Altura média de perfilhos (cm)",
#'        scales=list(x=list(rot=90)))
#'
#' aggregate(alt ~ geno, data = ZimmermannTb4.11,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name ZimmermannTb4.4
#' @title Competi\enc{çã}{ca}o de Cultivares de Feij\enc{ã}{a}o
#' @description Dados de um ensaio de competição de cultivares, em
#'     blocos completos ao acaso, da produção de grãos de feijão em
#'     kg/ha. O experimento teve quinze tratamentos (cultivares e/ou
#'     linhagens) e quatro blocos.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Cultivar de feijão.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão (ka ha\eqn{^{-1}}).}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 4.4, pág 72)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb4.4)
#'
#' str(ZimmermannTb4.4)
#'
#' xyplot(prod ~ cult, data = ZimmermannTb4.4,
#'        groups = bloco, type = "o", jitter.x = TRUE,
#'        xlab = "Cultivares",
#'        ylab = expression("Produção de feijão"~(kg~ha^{-1})),
#'        main = "Experimento de competição de cultivares",
#'        scales = list(x = list(rot = 90)))
#'
#' aggregate(prod ~ cult, data = ZimmermannTb4.4,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name ZimmermannTb5.11
#' @title Propor\enc{çã}{ca}o de hastes sobreviventes ao ataque de insetos
#' @description Experimento em delineamento quadrado latino onde foram
#'     tomadas quatro amostras em cada uma das parcelas (tipo de
#'     inseticida) no que diz respeito ao número total de hastes e
#'     número de hastes mortas por cupim (\emph{Sinthermes} sp.) e
#'     lagarta elasmo (\emph{Elasmopalpus} sp.). Com base nestes
#'     números, a proporção de hastes sobreviventes ao ataque de insetos
#'     foi calculada.
#' @format Um \code{data.frame} com 484 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis nominais. Indica em que linha do
#'      quadrado latino em que está a unidade experimental.}
#'
#' \item{coluna}{Fator de níveis nominais. Indica em que coluna do
#'      quadrado latino a unidade experimental está.}
#'
#' \item{inset}{Fator de níveis nominais. Indica o inseticida
#'     aplicado.}
#'
#' \item{amostra}{Fator de níveis numéricos. Identifica a amostra em
#'     cada unidade experimental.}
#'
#' \item{prop}{Proporção de hastes sobreviventes ao ataque de insetos. O
#'     Só é conhecida a proporção amostral. Não são conhecidos o
#'     númerador (número hastes sobreviventes) e denominador (total de
#'     hastes avaliadas).}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.1, pág 101)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb5.11)
#'
#' str(ZimmermannTb5.11)
#'
#' aux <- aggregate(prop ~ linha + coluna + inset,
#'                  data = ZimmermannTb5.11, FUN = mean)
#' str(aux)
#'
#' levelplot(prop ~ linha + coluna,
#'           data = aux, aspect = "iso",
#'           lbl = as.character(aux$inset),
#'           panel = function(x, y, z, lbl, ...) {
#'               panel.levelplot(x, y, z, ...)
#'               panel.text(x = x, y = y, labels = lbl, pos = 3)
#'               panel.text(x = x, y = y,
#'                          labels = sprintf("%0.2f", z),
#'                          pos = 1, cex = 0.8)
#'           })
#'
#' xyplot(prop ~ inset, data = ZimmermannTb5.11,
#'        type = c("p", "a"),
#'        xlab = "Inseticida",
#'        ylab = "Proporção de hastes sobreviventes")
#'
NULL

#' @name ZimmermannTb5.15
#' @title N\enc{ú}{u}mero de Perfilhos em Arroz em Fun\enc{çã}{ca}o de 6 Tratamentos
#' @description Esperimento conduzido pelo pesquisador Evane Ferreira,
#'     em Santo Antônio de Goiás, em 1998. O estudo avaliou o número de
#'     perfilhos de arroz em função de 6 tratamentos (não mencionados)
#'     arranjados em um delineamento quadrado latino.
#' @format Um \code{data.frame} com 36 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator categórico que representa as linhas do
#'     quadrado latino.}
#'
#' \item{\code{coluna}}{Fator categórico que representa as colunas do
#'     quadrado latino.}
#'
#' \item{\code{trat}}{Fator categórico que representa os tratamentos
#'     estudados.}
#'
#' \item{\code{perf}}{Número de perfilhos de arroz.}
#'
#' }
#' @keywords DQL contagem
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.15, pág. 107)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb5.15)
#' str(ZimmermannTb5.15)
#'
#' xyplot(perf ~ trat,
#'        data = ZimmermannTb5.15,
#'        type = c("p", "a"),
#'        xlab = "Tratamento",
#'        ylab = "Número de perfilhos")
#'
NULL

#' @name ZimmermannTb5.2
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Gen\enc{ó}{o}tipos de Arroz
#' @description Experimento em delineamento quadrado latino cujo
#'     objetivo foi medir a resposta em produtividade de um grupo de
#'     oito genótipos de arroz ao ataque inicial de pragas.
#' @format Um \code{data.frame} com 64 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis nominais. Indica em que linha do
#'      quadrado latino a unidade experimental está.}
#'
#' \item{coluna}{Fator de níveis nominais. Indica em que coluna do
#'     quadrado latino a unidade experimental está.}
#'
#' \item{geno}{Fator de níveis nominais que representam os genótipos de
#'     arroz em estudo.}
#'
#' \item{prod}{Produção de arroz, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.2, pág 92)
#' @examples
#'
#' library(lattice)
#' library(reshape)
#'
#' data(ZimmermannTb5.2)
#'
#' str(ZimmermannTb5.2)
#'
#' cast(ZimmermannTb5.2, linha ~ coluna, value = "geno")
#' cast(ZimmermannTb5.2, linha ~ coluna, value = "prod")
#'
#' levelplot(prod ~ linha + coluna,
#'           data = ZimmermannTb5.2, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts)
#'               panel.text(x, y, ZimmermannTb5.2$geno[subscripts],
#'                          pos = 3)
#'               panel.text(x, y, sprintf("%0.1f", z), pos = 1)
#'           })
#'
#' xyplot(prod ~ geno, data = ZimmermannTb5.2, type = c("p", "a"),
#'        xlab = "Genótipos de arroz",
#'        ylab = expression("Produção de arroz"~(kg~ha^{-1})))
#'
NULL

#' @name ZimmermannTb7.1
#' @title Ensaio de Competi\enc{çã}{ca}o de Cultivares em Reticulado Quadrado
#' @description Experimento feito pelos pesquisadores Orlando Peixoto
#'     Moraes, Emilio da Maia de Castro e Flavio Breseghello, da Embrapa
#'     Arroz e Feijão, na fazenda Capivara em Santo Antônio de Goiás. O
#'     delineamento reticulado quadrado 5 \eqn{\times} 5 acomodou 25
#'     cultivares, cada uma repetida 3 vezes. Foi medida a produção das
#'     cultivares.
#' @format Um \code{data.frame} com 75 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator categórico que identifica os grupos de
#'     blocos que formam uma repetição. Cada repetição tem 5 blocos de
#'     tamanho 5.}
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos dentro
#'     das repetições.}
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares de
#'     arroz.}
#'
#' \item{\code{prod}}{Produção de arroz, kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords LAT
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 7.1, pág. 136)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb7.1)
#' str(ZimmermannTb7.1)
#'
#' ftable(xtabs(~rept + cult, data = ZimmermannTb7.1))
#' ftable(xtabs(~rept + bloc + cult, data = ZimmermannTb7.1))
#'
#' xyplot(prod ~ reorder(cult, prod), groups = rept,
#'        data = ZimmermannTb7.1,
#'        type = c("p", "a"),
#'        xlab = "Cultivares",
#'        ylab = expression("Produção"~(kg~ha^{-1})))
#'
NULL

#' @name ZimmermannTb7.4
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Arroz em Ensaio Reticulado Retangular
#' @description Dados de um estudo sobre competição de cultivares e
#'     linhagens de arroz irrigado quanto a produtividade. O experimento
#'     foi conduzido em ensaio em reticulado retangular 5 \eqn{\times} 6
#'     (blocos de tamanho 5, 6 blocos por repetição), com três
#'     repetições.
#' @format Um \code{data.frame} com 90 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator categórico que representa as repetições do
#'     experimento. Cada repetições tem 6 blocos de tamanho 3,
#'     perfazendo 30 parcelas, uma para cada uma das
#'     cultivares/linhagens estudadas.}
#'
#' \item{\code{bloco}}{Fator categórico que indentifica os blocos.}
#'
#' \item{\code{cult}}{Fator categórico que identifica as
#'     cultivares/linhagens em competição.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz irrigado (ka
#'     ha\eqn{^{-1}}).}
#'
#' }
#' @keywords reticulado
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 7.4, pág. 140)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb7.4)
#' str(ZimmermannTb7.4)
#'
#' xtabs(~bloc + rept, data = ZimmermannTb7.4)
#' xtabs(~cult + rept, data = ZimmermannTb7.4)
#'
#' xyplot(prod ~ reorder(cult, prod),
#'        data = ZimmermannTb7.4, type = c("p", "a"),
#'        xlab = "Cultiavres",
#'        ylab = expression("Produção de grãos de arroz"~(kg~ha^{-1})))
#'
NULL

#' @name ZimmermannTb8.5
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Feij\enc{ã}{a}o em Delineamento de Blocos Aumentos
#'     de Federer
#' @description Dados de um estudo em desenho de blocos aumentados de
#'     Federer, com total de dezoito blocos, cada um com quatro
#'     testemunhas (1 a 4), e 12 linhagens, num total de 216
#'     linhagens. Os dados são de apenas 10 dos blocos, contendo 9
#'     parcelas em cada um, 4 delas sendo testemunhas e as 5 restantes
#'     são linhagens. A resposta medida foi a produção de grãos de
#'     feijão em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 90 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos do
#'     experimento. Cada bloco tem tamanho 9.}
#'
#' \item{\code{linh}}{Fator categórico que identifica as linhagens do
#'     experimento. A linhagens identificas de 1 a 4 são as
#'     testemunhas.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão (ka ha\eqn{^{-1}}).}
#'
#' }
#' @keywords BAF
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 8.5, pág. 158)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb8.5)
#' str(ZimmermannTb8.5)
#'
#' xtabs(~linh, data = ZimmermannTb8.5)
#' xtabs(~bloc, data = ZimmermannTb8.5)
#'
#' xyplot(prod ~ reorder(linh, prod), data = ZimmermannTb8.5,
#'        xlab = "Linhagens (ordenadas)",
#'        ylab = expression("Produção de grãos de feijão"~(kg~ha^{-1})))
#'
NULL

#' @name ZimmermannTb9.13
#' @title Mat\enc{é}{e}ria Seca de Feij\enc{ã}{a}o em Fatorial 3x3
#' @description Dados de um estudo em ensaio fatorial 3 \eqn{times} 3,
#'     considerando três níveis de densidade de solo e três doses
#'     microelementos. Cada vaso continha três plantas de arroz e,
#'     adicionalmente aos microelementos, foi feita adubação com 4 g por
#'     vaso de formulado 5-30-15. Os dados são de matéria seca de
#'     feijão, em escala logarítmica. O experimento foi instalado em
#'     delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{micro}}{Fator de níveis métricos que são as doses de
#'     microelementos (FTE-BR-12) aplicado ao solo (g vaso\eqn{^{-1}}).}
#'
#' \item{\code{dens}}{Fator de níveis métricos que é densidade do solo
#'     na qual foram cultivadas as plantas (g dm\eqn{^{-1}}).}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições de cada cela
#'     experimental.}
#'
#' \item{\code{imseca}}{Logaritimo decimal da matéria seca das plantas
#'     de feijão.}
#'
#' }
#' @keywords FAT
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.13, pág 179)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb9.13)
#' str(ZimmermannTb9.13)
#'
#' xtabs(~micro + dens, data = ZimmermannTb9.13)
#'
#' xyplot(lms ~ dens, data = ZimmermannTb9.13,
#'        groups = micro, type = c("p", "a"),
#'        auto.key = list(
#'            title = expression("Microelementos"~(g~vaso^{-1})),
#'            cex.title = 1.1, columns = 3),
#'        xlab = expression("Densidade do solo"~(g~cm^{-3})),
#'        ylab = "log da matéria seca")
#'
NULL

#' @name ZimmermannTb9.17
#' @title \enc{É}{E}poca de Aplica\enc{çã}{ca}o de NK na Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Arroz
#' @description Dados de um estudo em ensaio fatorial 3 \eqn{\times} 3,
#'     referentes à produção de grãos de arroz, em kg ha\eqn{^{-1}}. O
#'     delineamento é o de blocos completos ao acaso, com três
#'     repetições. Foram testados os efeitos do nitrogênio, potássio e
#'     épocas de aplicação destes elementos na produtividade da soca do
#'     arroz irrigado.
#' @format Um \code{data.frame} com 81 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{epoc}}{Fator categórico que representa a época de
#'     aplicação dos nutrientes.}
#'
#' \item{\code{pota}}{Fator categórico que representa a dose de potássio
#'     aplicada.}
#'
#' \item{\code{nitr}}{Fator categórico que representa a dose de
#'     nitrogênio aplicada.}
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos do
#'     experimento. Os blocos tinham tamanho \eqn{3^3 = 27}.}
#'
#' \item{\code{prod}}{Produção de grão de arroz em (kg ha\eqn{^{-1}}).}
#'
#' }
#' @keywords FAT3
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.17, pág. 182)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb9.17)
#' str(ZimmermannTb9.17)
#'
#' ftable(xtabs(~nitr + pota + epoc, data = ZimmermannTb9.17))
#'
#' xyplot(prod ~ nitr | epoc, data = ZimmermannTb9.17,
#'        groups = pota, type = c("p", "a"),
#'        as.table = TRUE,
#'        auto.key = list(title = "Potássio", cex.title = 1.1,
#'                        columns = 3),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Época",
#'                             sep = " : "),
#'        xlab = "Nitrogênio",
#'        ylab = expression("Produção de grãos de arroz"~(kg~ha^{-1})))
#'
NULL

#' @name ZimmermannTb9.22
#' @title Fungicidas e Pol\enc{í}{i}mero na Infec\enc{çã}{ca}o de \emph{Fusarium} em
#'     Sementes
#' @description Resultados de um experimento fatorial com tratamentos
#'     adicionais \eqn{3 \times 3 + 2} que estudou o número de sementes
#'     infectadas por fusaruim em função aplicação de fungicidas às
#'     sementes e do uso associado de um polímero depois do fungicida ou
#'     misturado a ele. Os dois tratamentos adicionais era a aplicação
#'     isolada do polímero e uma testemunha sem qualquer tratamento. O
#'     experimento foi instalado em delineamento inteiramente
#'     casualizado.
#' @format Um \code{data.frame} com 55 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator cetegórico que identifica as celas
#'     experimentais do fatorial com tratamentos adicionais.}
#'
#' \item{\code{fung}}{Fator categórico que identifica os níveis dos
#'     fungicidas aplicados às sementes. Benlate, Captam e Derosal são
#'     os fungicidas. O polímero puro e uma testemunha também foram
#'     investigados.}
#'
#' \item{\code{aplic}}{Fator categórico que indica a forma de aplicação
#'     do fungicida em relação ao polímero: antes do polímero, misturado
#'     com o polímero ou o fungicída puro.}
#'
#' \item{\code{nsi}}{Número de sementes infectadas por \emph{fusarium}
#'     de um total de 40 sementes.}
#'
#' }
#' @keywords DIC binomial
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.22, pág. 188)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb9.22)
#' str(ZimmermannTb9.22)
#'
#' xtabs(~fung + aplic, ZimmermannTb9.22)
#'
#' xyplot(nsi/40 ~ trat, data = ZimmermannTb9.22,
#'        xlab = "Tratamentos",
#'        ylab = "Proporção de sementes infectadas",
#'        scales = list(x = list(rot = 90)))
#'
#' # Gráfico da função arco seno da raíz.
#' curve(asin(sqrt(x)), from = 0, to = 1)
#'
#' # Transformação arco seno da raíz quadrada da proporção.
#' asin(sqrt(ZimmermannTb9.22$nsi/40))
#'
#' # A transformação não elimina os zeros.
#' xyplot(asin(sqrt(nsi/40)) ~ trat, data = ZimmermannTb9.22,
#'        xlab = "Tratamentos",
#'        ylab = "Arco seno da raíz da proporção",
#'        scales = list(x = list(rot = 90)))
#'
NULL

#' @name ZimmermannTb9.26
#' @title \enc{É}{E}poca de Aplica\enc{çã}{ca}o de NK na Altura de Plantas
#' @description Dados de um estudo em fatorial \eqn{3^3}, sobre adubação
#'     nitrogenada e potássica e suas épocas de aplicação. Os dados são
#'     referentes a altura de plantas no cultivo da soca de arroz
#'     irrigado. Dados referen-se apenas aos valores do primeiro
#'     bloco. Veja \code{\link{ZimmermannTb9.17}}.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{epoc}}{Fator categórico que representa a época de
#'     aplicação dos nutrientes.}
#'
#' \item{\code{pota}}{Fator categórico que representa a dose de potássio
#'     aplicada.}
#'
#' \item{\code{nitr}}{Fator categórico que representa a dose de
#'     nitrogênio aplicada.}
#'
#' \item{\code{alt}}{Altura das plantas (cm).}
#'
#' }
#' @keywords FAT3
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.26, pág. 190)
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' data(ZimmermannTb9.26)
#' str(ZimmermannTb9.26)
#'
#' ftable(xtabs(~epoc + nitr + pota, data = ZimmermannTb9.26))
#'
#' useOuterStrips(xyplot(alt ~ nitr + pota | epoc, outer = TRUE,
#'                       data = ZimmermannTb9.26,
#'                       type = c("p", "a"),
#'                       xlab = "Níveis de nitrogênio/potássio",
#'                       ylab = "Altura das plantas (cm)"),
#'                strip = strip.custom(
#'                    strip.name = TRUE, var.name = "Época"),
#'                strip.left = strip.custom(
#'                    factor.levels = c("Nitrogênio", "Potássio")))
#'
NULL

