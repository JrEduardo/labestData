#' @name DiasEg10.1
#' @title Subst\enc{â}{a}ncias Alelo\enc{á}{a}ticas no Percentual de
#'     Germina\enc{çã}{ca}o de Sementes
#' @description Experimento em delineamento inteiramente casualizado
#'     onde foram avaliados os percentuais de germinação de sementes de
#'     2 cultivares, submetidas a 5 tratamentos com substâncias
#'     alelopáticas, sob esquema fatorial 2 \eqn{\times} 5 com 4
#'     repetições.
#' @format Um \code{data.frame} com 40 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cut}}{Fator de 2 níveis qualitativos, que representa a
#'     cultivar.}
#'
#' \item{\code{trat}}{Fator de 5 níveis qualitativos, que representa
#'     tratamento com substância alelopática.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições.}
#'
#' \item{\code{pg}}{Percentual de germinação das sementes.}
#'
#' }
#' @keywords DIC FAT2
#' @source BARROS; DIAS (2009), Exemplo 10.1, pág. 269.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg10.1)
#' str(DiasEg10.1)
#'
#' xtabs(~cult + trat, data = DiasEg10.1)
#'
#' xyplot(pg ~ trat, groups = cult, data = DiasEg10.1,
#'        type = c("p", "a"),
#'        auto.key = list(title = "Cultivares", cex.title = 1.1,
#'                        columns = 2),
#'        xlab = "Tratamentos com substâncias alelopáticas",
#'        ylab = "Percentual de germinação")
#'
NULL

#' @name DiasEg10.2
#' @title Percentual de Germina\enc{çã}{ca}o
#' @description Experimento em delineamento inteiramente casualizado
#'     onde são avaliados os percentuais de germinação de sementes de 2
#'     cultivares, submetidas a 6 tempos de condicionamento osmótico, em
#'     um ensaio de parcela subdividida com 4 repetições.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares.}
#'
#' \item{\code{tempo}}{Fator categórico que representa os tempos de
#'     condicionamento. Como não é conhecida a escala real do tempo
#'     (horas, dias, etc), optou-se por manter como fator categórico. O
#'     tempo é o fator da subparcela.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições.}
#'
#' \item{\code{pg}}{Percentual de germinação das sementes.}
#'
#' }
#' @keywords DIC PS
#' @source BARROS; DIAS (2009), Exemplo 10.2, pág. 286.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg10.2)
#' str(DiasEg10.2)
#'
#' xtabs(~cult + tempo, data = DiasEg10.2)
#'
#' xyplot(pg ~ tempo, groups = cult, data = DiasEg10.2,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        auto.key = list(title = "Cultivares", cex.title = 1.1,
#'                        columns = 2),
#'        xlab = "Tempo de condicionamento osmótico",
#'        ylab = "Percentagem de germinação")
#'
NULL

#' @name DiasEg11.1
#' @title Grupo de Experimentos com Cultivares de Feij\enc{ã}{a}o
#' @description Resultados de experimentos em 3 sítios, em delineamento
#'     de blocos casualizados, que avaliaram a produção de 6 cultivares
#'     de feijão.
#' @format Um \code{data.frame} com 54 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares de
#'     feijão.}
#'
#' \item{\code{sitio}}{Fator categórico que representa os sítios onde os
#'     experimento foram instalados.}
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos dentro
#'     dos experimentos.}
#'
#'  \item{\code{prod}}{Produção de grãos (ton/ha).}
#'
#' }
#'
#' @keywords DBC GE
#' @source BARROS; DIAS (2009), Exemplo 11.1, pág. 305.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg11.1)
#' str(DiasEg11.1)
#'
#'
#' ftable(xtabs(~sitio + bloc + cult, data = DiasEg11.1))
#'
#' xyplot(prod ~ cult | sitio, groups = bloc, data = DiasEg11.1,
#'        type = c("p", "a"), as.table = TRUE,
#'        xlab = "Cultivares",
#'        ylab = "Produção (ton/ha)",
#'        auto.key = list(title = "Blocos", cex.title = 1.1,
#'                        columns = 3),
#'        strip = strip.custom(var.name = "Sítio",
#'                             strip.names = TRUE))
#'
NULL

#' @name DiasEg3.2
#' @title Produ\enc{çã}{ca}o de frutos em cacaueiro
#' @description Amostra aleatória do número de frutos produzidos por
#'     plantas cacaueiro.
#' @format Vetor com 43 observações que são o número de frutos
#'     produzidos por plantas de cacaueiro.
#' @keywords AAS
#' @source BARROS; DIAS (2009), Exemplo 3.2.
#' @examples
#'
#' stem(DiasEg3.2)
#'
#' hist(DiasEg3.2)
#' rug(DiasEg3.2)
#'
#' plot(density(DiasEg3.2))
#' rug(DiasEg3.2)
#'
#' boxplot(DiasEg3.2)
#' rug(DiasEg3.2, side = 2)
#'
NULL

#' @name DiasEg3.6
#' @title Alturas de plantas de milho
#' @description Amostras aleatória da alturas de plantas de milho.
#' @format Vetor com 100 observações da altura (cm).
#' @keywords AAS
#' @source BARROS; DIAS (2009), Exemplo 3.6.
#' @examples
#'
#' stem(DiasEg3.6)
#'
#' boxplot(DiasEg3.6)
#' rug(DiasEg3.6, side = 2)
#'
#' hist(DiasEg3.6)
#' rug(DiasEg3.6)
#'
#' plot(density(DiasEg3.6))
#' rug(DiasEg3.6)
#'
#' plot(ecdf(DiasEg3.6))
#' rug(DiasEg3.6)
NULL

#' @name DiasEg5.1
#' @title N\enc{ú}{u}mero de Ovos Eclodidos de Nemat\enc{ó}{o}ides
#'     Ap\enc{ó}{o}s Aplica\enc{çã}{ca}o de Nematicidas Naturais
#' @description Resultados de um experimento em delineamento
#'     inteiramente casualizado que avaliou o efeito de 5 nematicidas
#'     naturais na eclosão de ovos de nematoides.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{nemat}}{Fator categórico que identifica os nematicidas.}
#'
#' \item{\code{rept}}{Inteiro que representa as repetições.}
#'
#' \item{\code{ovos}}{Número de ovos eclodidos.}
#'
#' }
#' @keywords DIC contagem
#' @source BARROS; DIAS (2009), Exemplo 5.1, pág. 130.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg5.1)
#' str(DiasEg5.1)
#'
#' unstack(DiasEg5.1, ovos ~ nemat)
#'
#' xyplot(ovos ~ reorder(nemat, ovos), data = DiasEg5.1,
#'        type = c("p", "a"),
#'        xlab = "Nematicidas",
#'        ylab = "Número de ovos eclodidos")
#'
NULL

#' @name DiasEg5.3
#' @title Produtividade de Cultivares de Milho
#' @description Resultados de um experimento em delineamento
#'     inteiramente casualizado que mediu a produtividade de cultivares
#'     de milho.
#' @format Um \code{data.frame} com 15 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares de
#'     milho.}
#'
#' \item{\code{rept}}{Inteiro que indica as repetições das cultivares.}
#'
#' \item{\code{prod}}{Produtividade de grãos (toneladas por hectare).}
#'
#' }
#' @keywords DIC
#' @source BARROS; DIAS (2009), Exercício 9, Cap. 11, pág. 321.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg5.3)
#' str(DiasEg5.3)
#'
#' unstack(DiasEg5.3, prod ~ cult)
#'
#' xyplot(prod ~ reorder(cult, prod), data = DiasEg5.3,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Cultivares de milho",
#'        yalb = "Produtividade de grãos (ton/ha)")
#'
NULL

#' @name DiasEg6.1
#' @title Ganhos de Produ\enc{çã}{ca}o de Arroz nos Ciclos de
#'     Sele\enc{çã}{ca}o
#' @description Amostra com 6 pares de observações representanto os
#'     ciclos de seleção e ganhos percentuais de produção
#'     correspondentes em arroz.
#' @format Um \code{data.frame} com 6 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ciclos}}{Fator de 6 níveis quantitativos que são os
#'     ciclos de produção.}
#'
#' \item{\code{prod}}{percentuais de ganhos de produção.}
#'
#' }
#' @keywords DIC
#' @source BARROS; DIAS (2009), Exemplo 6.1, pág. 157.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg6.1)
#' str(DiasEg6.1)
#'
#' xyplot(prod ~ ciclos, data = DiasEg6.1, type = c("p", "r"),
#'        xlab = "Ciclos de produção",
#'        ylab = "Percentuais de ganhos de produção")
#'
NULL

#' @name DiasEg6.2
#' @title Aduba\enc{çã}{ca}o NPK na Produ\enc{çã}{ca}o de
#'     Feij\enc{ã}{a}o
#' @description Experimento instalado em delineamento de blocos
#'     casualizados para estudar o efeito da adubação NPK na
#'     produtividade do feijoeiro.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{npk}}{Fator métrico que são as doses de NPK (kg
#'     ha\eqn{^{-1}}).}
#'
#' \item{\code{bloco}}{Fator cetegórico que são os blocos do
#'     experimento.}
#'
#' \item{\code{prod}}{Produtividade de grãos de feijão (kg
#'     parcela\eqn{^{-1}}).}
#'
#' }
#' @keywords DBC RP
#' @source BARROS; DIAS (2009), Exemplo 6.2, pág. 164.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg6.2)
#' str(DiasEg6.2)
#'
#' names(DiasEg6.2)[2] <- "bloc"
#'
#' xyplot(prod ~ npk, data = DiasEg6.2,
#'        groups = bloc, type = "b",
#'        xlab = expression("Dose de NPK"~(kg~ha^{-1})),
#'        ylab = expression("Produtividade de grãos"~(kg~parcela^{-1})),
#'        auto.key = list(title = "Bloco", cex.title = 1.1,
#'                        columns = 4))
#'
NULL

#' @name DiasEg6.3
#' @title N\enc{ú}{u}mero Total de Frutos Colhidos e Sadios em Clones de
#'     Cacaueiro
#' @description Foram avaliados 7 clones de cacaueiros a fim determinar
#'     a correlação entre o número de frutos sadios e número de frutos
#'     colhidos.
#' @format Um \code{data.frame} com 7 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clones}}{Fator de 7 níveis qualitativos ordinais.}
#'
#' \item{\code{ntfc}}{Número total de frutos colhidos.}
#'
#' \item{\code{ntfs}}{Número total de frutos sadios.}
#'
#' }
#' @keywords AAS
#' @source BARROS; DIAS (2009), Exemplo 6.3, pág. 173.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg6.3)
#' str(DiasEg6.3)
#'
#' xyplot(ntfs ~ ntfc, data = DiasEg6.3, type = c("p", "r"),
#'        ylab = "Número de frutos sadios ",
#'        xlab = "Número de frutos colhidos")
#'
NULL

#' @name DiasEg7.1
#' @title Luz e \enc{Á}{A}gua na Produ\enc{çã}{ca}o de Tomateiros
#' @description Resultados de um experimento que avaliou o efeito da
#'     quantidade de luz e de água na produção de tomateiros.
#' @format Um \code{data.frame} com 18 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{luz}}{Fator métrico que identifica, em escala codificada,
#'     a quantidade de luz aplicada.}
#'
#' \item{\code{agua}}{Fator métrico que identifica, em escala
#'     codificada, a quantidade de água aplicada.}
#'
#' \item{\code{prod}}{Produção de tomateiros.}
#'
#' }
#' @keywords DIC RM
#' @source BARROS; DIAS (2009), Exemplo 7.1, pág. 187.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg7.1)
#' str(DiasEg7.1)
#'
#' xtabs(~luz + agua, data = DiasEg7.1)
#'
#' xyplot(prod ~ luz, groups = agua, data = DiasEg7.1,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Níveis de luz (codificados)",
#'        ylab = "Produção de tomateiros",
#'        auto.key = list(title = "Água (codificado)",
#'                        cex.title = 1.1, columns = 2))
#'
NULL

#' @name DiasEg9.1
#' @title Teor Proteico de Cultivares de Feijoeiro e Soja
#' @description Em um ensaio em delineamento inteiramente casualizado
#'     foi avaliado o teor proteico de 10 cultivares de feijoeiro e 1 de
#'     soja com 3 repetições.
#' @format Um \code{data.frame} com 33 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de 9 níveis qualitativos que representa cada
#'     um dos cultivares.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições.}
#'
#'  \item{\code{teor}}{Teor proteico (\%).}
#'
#' }
#' @keywords DIC
#' @source BARROS; DIAS (2009), Exemplo 9.1, pág. 222.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg9.1)
#' str(DiasEg9.1)
#'
#' xyplot(teor ~ reorder(cult, teor), data = DiasEg9.1,
#'        xlab = "Cultivares", ylab = "Teor proteico (%)",
#'        scales = list(x = list(rot = 90)))
#'
NULL

#' @name DiasEg9.2
#' @title Produ\enc{çã}{ca}o de Cacau
#' @description Dados de produção de cacau úmido (kg/planta) obtidos de
#'     seis progênies formadas por 3 plantas cada e amostradas em 3
#'     bacias hidrográficas da Amazonia. Este é um exemplo de
#'     classificação hirerárquica de fatores decorrente do processo de
#'     amostragem em multinível.
#' @format Um \code{data.frame} com 54 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bacia}}{Fator categórico que representa as bacias onde
#'     foram feitas as amostras.}
#'
#' \item{\code{prog}}{Fator categórico que identifica as progênies
#'     obtidas em cada uma das bacias.}
#'
#' \item{\code{plant}}{Inteiro que identifica as plantas de cada
#'     progênie.}
#'
#' \item{\code{prod}}{Produção de cacau úmido (kg planta\eqn{^{-1}}).}
#'
#' }
#' @keywords ClaHier
#' @source BARROS; DIAS (2009), Exemplo 9.2, pág. 231.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg9.2)
#' str(DiasEg9.2)
#'
#' xtabs(~bacia + prog, data = DiasEg9.2)
#'
#' xyplot(prod ~ prog | bacia,
#'        data = DiasEg9.2, as.table = TRUE,
#'        xlab = "Progênies",
#'        ylab = "Produção de cacau úmido (kg/planta)",
#'        strip = strip.custom(strip.names = TRUE, var.name = "Bacia"))
#'
NULL

#' @name DiasEg9.4
#' @title Produ\enc{çã}{ca}o de Cultivares de Cacau
#' @description Dados de produção de cacau de 5 cultivares em um
#'     experimento em delineamento quadrado latino 5 \eqn{\times} 5.
#' @format Um \code{data.frame} com 2 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator categórico que representa o controle local
#'     nas linhas do quadrado latino.}
#'
#' \item{\code{colun}}{Fator categórico que representa o controle local
#'     nas colunas do quadrado latino.}
#'
#' \item{\code{cult}}{Fator categórico que são as cultivares de cacau
#'     avaliadas.}
#'
#' \item{\code{nfs}}{Produção de frutos sadios de cacau.}
#'
#' }
#' @keywords DQL
#' @source BARROS; DIAS (2009), Exemplo 9.4, pág. 247.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg9.4)
#' str(DiasEg9.4)
#'
#' xtabs(~linha + colun, data = DiasEg9.4)
#' xtabs(~cult, data = DiasEg9.4)
#'
#' reshape::cast(data = DiasEg9.4,
#'               formula = linha ~ colun, value = "cult")
#'
#' xyplot(prod ~ reorder(cult, prod),
#'        type = c("p", "a"),
#'        data = DiasEg9.4,
#'        xlab = "Cultivares",
#'        ylab = "Produção de frutos de cacau")
#'
NULL

#' @name  DiasEx10.4.10
#' @title Massa fresca de Capim Elefante
#' @description Dados refentes à produção de 3 clones
#'     de capim elefante em função da época de corte do capim. O
#'     experimento foi instalado em delineamento inteiramente
#'     casualizado.
#' @format Um \code{data.frame} com 72 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clon}}{Fator categórico que representa os clones de capim
#'     elefante.}
#'
#' \item{\code{cort}}{Fator categórico que representa as épocas de corte
#'     do capim, sendo que A - sem corte, B - corte em 10 se setembro, C
#'     - corte em 30 de novembro e D - corte em 1 de novembro.}
#'
#' \item{\code{blocos}}{Fator categórico que identifica os blocos do
#'     experimento.}
#'
#'  \item{\code{tms}}{Produção de massa fresca de capim elefante
#'     (t/ha).}
#'
#' }
#' @keywords DBC FAT2
#' @source BARROS; DIAS (2009), Exercício 10, Cap. 10, pág. 296.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx10.4.10)
#' str(DiasEx10.4.10)
#'
#' xtabs(~cort + clon, data = DiasEx10.4.10)
#'
#' xyplot(mfce ~ cort, groups = clon, data = DiasEx10.4.10,
#'        type = c("p", "a"),
#'        xlab = "Corte",
#'        ylab = "Massa fresca de capim elefante (ton/ha)",
#'        auto.key = list(title = "Clones", cex.title = 1.1,
#'                        columns = 3))
#'
NULL

#' @name DiasEx10.4.6
#' @title Ensaio de Competi\enc{çã}{ca}o de Batata Doce
#' @description Ensaio de competição de batata doce, instalado em
#'     delineamento de blocos casualizados com 3 repetições e sob
#'     esquema fatorial 3 \eqn{\times} 4, onde foram avaliados 3 tipos
#'     de solos e 4 níveis de adubação.
#' @details Não foram exibidos todos os dados, pois dos \eqn{4 \times 3
#'     \times 3 = 36} dados previstos, apenas 12 estão
#'     disponíveis. Julga-se que seja a média.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{solo}}{Fator categórico que representa os tipos de solo.}
#'
#' \item{\code{adub}}{Fator categórico que representa os níveis de
#'     adubação.}
#'
#' \item{\code{prod}}{Produtividade.}
#' }
#'
#' @keywords DBC
#' @source BARROS; DIAS (2009), Exercício 10.4, Cap. 10, pág. 294.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx10.4.6)
#' str(DiasEx10.4.6)
#'
#' a <- reshape::cast(data = DiasEx10.4.6, solo ~ adub, value = "prod")
#' addmargins(as.matrix(a[, -1]))
#'
#' xtabs(~solo + adub, data = DiasEx10.4.6)
#'
#' xyplot(prod ~ adub, groups = solo,
#'        data = DiasEx10.4.6,
#'        type = "o",
#'        xlab = "Adubação", ylab = "Produção")
#'
NULL

#' @name DiasEx10.4.7
#' @title Aduba\enc{çã}{ca}o NPK na Cultura do Cafeeiro
#' @description Em um experimento em delineamento inteiramente
#'     casualizado foi estudado efeito da adubação NPK na produção da do
#'     cafeeiro por meio de um experimento fatorial \eqn{2^3} com 6
#'     repetições.
#' @format Um \code{data.frame} com 48 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{N}}{Inteiro que indica o nível do fator nitrogênio: 0 -
#'     nível baixo, 1 - nível alto.}
#'
#' \item{\code{P}}{Inteiro que indica o nível do fator fósforo: 0 -
#'     nível baixo, 1 - nível alto.}
#'
#' \item{\code{K}}{Inteiro que indica o nível do fator potássio: 0 -
#'     nível baixo, 1 - nível alto.}
#'
#' \item{\code{rept}}{Inteiro que indica as repetições das celas
#'     experimentais.}
#'
#' \item{\code{prod}}{Produção de café, em kg por parcela de 90
#'     m\eqn{^2} (30 covas de espaçamento 3 \eqn{\times} 1).}
#'
#' }
#' @keywords DIC FAT3
#' @source BARROS; DIAS (2009), Exercício 7, Cap. 10, pág. 295.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx10.4.7)
#' str(DiasEx10.4.7)
#'
#' ftable(xtabs(~N + P + K, data = DiasEx10.4.7))
#'
#' xyplot(prod ~ factor(N) | factor(P), groups = K, data = DiasEx10.4.7,
#'        type = c("p", "a"),
#'        xlab = "Nitrogênio", ylab = "Produção (kg/parcela)",
#'        auto.key = list(title = "Potássio", cex.title = 1.1,
#'                        columns = 2),
#'        strip = strip.custom(strip.name = TRUE,
#'                             var.name = "Fósforo"))
#'
NULL

#' @name DiasEx10.4.8
#' @title Teores de Mat\enc{é}{e}ria Seca de Gramineas em
#'     Fun\enc{çã}{ca}o da Calagem
#' @description Em um ensaio em delineamento de blocos casualizados foi
#'     analisado o efeito de doses de calcário no teor de matéria seca
#'     de gramíneas forrageiras. Foi utilizado esquema fatorial 3
#'     \eqn{\times} 4, sendo 3 gramínias (A, B e C) e 4 doses de calagem
#'     (0, 1, 2 e 4 t/ha), os teores de matéria seca (t/ha).
#' @format Um \code{data.frame} com 36 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{calc}}{Fator métrico que representa das doses de calcário
#'     aplicadas (t/ha).}
#'
#' \item{\code{gram}}{Fator categórico que representa as gramineas
#'     forrageiras cultivadas.}
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos do
#'     experimento.}
#'
#'  \item{\code{tms}}{Teor de matéria seca (t/ha).}
#'
#' }
#' @keywords DBC FAT2
#' @source BARROS; DIAS (2009), Exercício 8, Cap. 10, pág. 295.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx10.4.8)
#' str(DiasEx10.4.8)
#'
#' xtabs(~gram + calc, data = DiasEx10.4.8)
#'
#' xyplot(tms ~ calc, groups = gram, data = DiasEx10.4.8,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Calagem (ton/ha)",
#'        ylab = "Teor de matéria seca (ton/ha)",
#'        auto.key = list(title = "Graminea", cex.title = 1.1,
#'                        columns = 3))
#'
NULL

#' @name  DiasEx11.7.8
#' @title Competi\enc{çã}{ca}o de Gen\enc{ó}{o}tipos de Alho
#' @description Resultados de um grupo de experimento de competiação de
#'     genótipos de alho. Os valores disponíveis são as médias dos
#'     genótipos em cada experimento.
#' @format Um \code{data.frame} com 16 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{geno}}{Fator categórico que representa os genótipos de
#'     alho.}
#'
#' \item{\code{exper}}{Fator categórico que representa os experimentos.}
#'
#'  \item{\code{prod}}{Produção de bulbos de alho.}
#'
#' }
#' @keywords DBC
#' @source BARROS; DIAS (2009), Exercício 8, Cap. 11, pág. 321.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx11.7.8)
#' str(DiasEx11.7.8)
#'
#'
#' xtabs(~geno + exper, data = DiasEx11.7.8)
#'
#' # Totais.
#' with(DiasEx11.7.8,
#'      addmargins(tapply(prod,
#'                        list(geno = geno, exper = exper),
#'                        FUN = sum)))
#'
#' xyplot(prod ~ geno, groups = exper, data = DiasEx11.7.8,
#'        type = c("p", "a"),
#'        xlab = "Genótipos",
#'        ylab = "Produção",
#'        auto.key = list(title = "Experimentos", cex.title = 1.1,
#'                        columns = 4))
#'
NULL

#' @name DiasEx11.7.9
#' @title Ensaios de Competi\enc{çã}{ca}o de Cultivares de Milho
#' @description Resultados de ensaio de competição de cultivares de
#'     milho em diferentes locais onde foi avaliada a produção em grãos.
#' @format Um \code{data.frame} com 90 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{local}}{Fator categórico que representa os locais de
#'     instalação do experimento.}
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares de
#'     milho.}
#'
#' \item{\code{rept}}{Inteiro que representa as repetições das
#'     cultivares em cada experimento.}
#'
#'  \item{\code{prod}}{Produção de grãos de milho.}
#'
#' }
#' @keywords GE DIC
#' @source BARROS; DIAS (2009), Exercício 9, Cap. 11, pág. 321.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx11.7.9)
#' str(DiasEx11.7.9)
#'
#' with(DiasEx11.7.9,
#'      tapply(prod,
#'             list(cult = cult, rept = rept, local = local),
#'             FUN = sum))
#'
#' xyplot(prod ~ cult | local, data = DiasEx11.7.9,
#'        type = c("p", "a"), as.table = TRUE,
#'        xlab = "Cultivares", ylab = "Produção de grãos",
#'        strip = strip.custom(strip.names = TRUE, var.name = "Local"))
#'
NULL

#' @name DiasEx3.6.7
#' @title Percentual de Germina\enc{çã}{ca}o de Lotes de Sementes de
#'     Tomate
#' @description Percentuais de germinação de 2 lotes de sementes de
#'      tomate com 5 repetições com 100 sementes em cada repetição.
#' @format Um \code{data.frame} com 2 observações e 1 variável, em que
#'
#' \describe{
#'
#' \item{\code{lote}}{Fator categórico de dois níveis que indica os
#'     lotes de semente.}
#'
#' \item{\code{pgerm}}{Percentual de germinação das sementes.}
#'
#' }
#' @keywords AAS
#' @source BARROS; DIAS (2009), (Exercício 7, Cap. 7.6, pág. 102.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx3.6.7)
#' str(DiasEx3.6.7)
#'
#' xyplot(pgerm ~ lote,
#'        data = DiasEx3.6.7 ,
#'        xlab = "Lote",
#'        ylab = "Percentual germinação")
#'
NULL

#' @name DiasEx6.5.1
#' @title Peso em Fun\enc{çã}{ca}o das Idades em Codornas
#' @description Dados referentes ao peso em função da idade de codornas.
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade do animal, em semanas.}
#'
#' \item{\code{peso}}{Peso do animal (g).}
#'
#' }
#' @keywords RL
#' @source BARROS; DIAS (2009), Exercício 1, Cap. 6, pág. 179.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx6.5.1)
#' str(DiasEx6.5.1)
#'
#' xyplot(peso ~ idade, data = DiasEx6.5.1, type = c("p", "r"),
#'        ylab = "Peso (g)", xlab = "Idade (semanas)")
#'
NULL

#' @name DiasEx6.5.10
#' @title Correla\enc{çã}{ca}o entre Produ\enc{çã}{ca}o e Di\enc{â}{a}metro
#' @description Dados referentes a 8 pares de valores de produção
#'     (gramas) e diâmetro (cm).
#' @format Um \code{data.frame} com 8 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{prod}}{Produção em gramas.}
#'
#' \item{\code{diam}}{Diãmetro em centimetros.}
#'
#' }
#' @keywords AAS RL
#' @source BARROS; DIAS (2009), Exercício 10, Cap. 7, pág. 181.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx6.5.10)
#' str(DiasEx6.5.10)
#'
#' xyplot(prod ~ diam, data = DiasEx6.5.10, type = c("p", "r"),
#'        xlab = "Produção (gramas)", ylab = "Diâmetro (cm)")
#'
NULL

#' @name DiasEx6.5.9
#' @title Correla\enc{çã}{ca}o entre Temperatura e Massa
#' @description Dados de 11 pares de valores de temperatura e massa.
#' @format Um \code{data.frame} com 11 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura.}
#'
#' \item{\code{massa}}{Massa em gramas.}
#'
#' }
#' @keywords AAS RL
#' @source BARROS; DIAS (2009), Exercício 9, Cap. 6, pág. 181.
#'
#' library(lattice)
#'
#' data(DiasEx6.5.9)
#' str(DiasEx6.5.9)
#'
#' xyplot(massa ~ temp, data = DiasEx6.5.9, type = c("p", "r"),
#'        ylab = "Massa (g)", xlab = "Temperatura")
#'
NULL

#' @name DiasEx9.6.10
#' @title Ensaio de Competi\enc{çã}{ca}o de Cultivares de Caf\enc{é}{e}
#' @description Experimento de competição de cultivares de café
#'     instalado em delineamento quadrado latino.
#' @format Um \code{data.frame} com 25 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator categórico que faz o controle local nas
#'     linhas do quadrado latino.}
#'
#' \item{\code{colun}}{Fator categórico que faz o controle local nas
#'     colunas do quadrado latino.}
#'
#' \item{\code{cult}}{Fator categórico que são as cultivares de café.}
#'
#' \item{\code{prod}}{Produtividade em sacas beneficiadas.}
#' }
#'
#' @keywords DQL
#' @source BARROS; DIAS (2009), Exercício 10, Cap. 9, pág. 261.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx9.6.10)
#' str(DiasEx9.6.10)
#'
#' xtabs(~linha + colun, data = DiasEx9.6.10)
#' xtabs(~cult, data = DiasEx9.6.10)
#'
#' reshape::cast(data = DiasEx9.6.10,
#'               formula = linha ~ colun, value = "cult")
#'
#' xyplot(prod ~ reorder(cult, prod), data = DiasEx9.6.10,
#'        xlab = "Cultivares de café",
#'        ylab = "Produtividade (sacas beneficiadas)")
#'
NULL

#' @name DiasEx9.6.4
#' @title Produ\enc{çã}{ca}o de Frutos de Variedades de Manga
#' @description Experimento instalado em delineamento inteiramente
#'     casualizado, onde foram estudadas 5 variedades de manga com cada
#'     parcela constituída de 3 arvores. Cada variedade teve 6
#'     repetições. Foi avaliada a produção de frutos por parcela.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator categórico que representa as variedades de
#'     manga.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições.}
#'
#' \item{\code{frut}}{Total de frutos por parcela, sendo que uma parcela
#'     tem 3 plantas.}
#'
#' }
#' @keywords DIC contagem
#' @source BARROS; DIAS (2009), Exercício 4, Cap. 9, pág. 260.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx9.6.4)
#' str(DiasEx9.6.4)
#'
#' xtabs(~varied, data = DiasEx9.6.4)
#' unstack(DiasEx9.6.4, frut ~ varied)
#'
#' xyplot(frut ~ reorder(varied, frut), data = DiasEx9.6.4,
#'        xlab = "Variedades de manga",
#'        ylab = "Número de frutos por parcela")
#'
NULL

#' @name DiasEx9.6.6
#' @title Teores de S\enc{ó}{o}lidos Sol\enc{ú}{u}veis Totais da Poupa
#'     de Frutos
#' @description Experimento em delineamento inteiramente casualizado,
#'     com 5 repetições e 4 cultivares de tomateiro onde os totais de
#'     sólidos solúveis na poupa dos frutos foram avaliados.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares de
#'     tomateiro.}
#'
#' \item{\code{rept}}{Inteiro que representa as repetições.}
#'
#' \item{\code{tssp}}{Teor de sólidos solúveis da polpa do fruto.}
#'
#' }
#' @keywords DIC
#' @source BARROS; DIAS (2009), Exercício 6, Cap. 9, pág. 260.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx9.6.6)
#' str(DiasEx9.6.6)
#'
#' xtabs(~cult, data = DiasEx9.6.6)
#' unstack(DiasEx9.6.6, tssp ~ cult)
#'
#' xyplot(tssp ~ reorder(cult, tssp),
#'        type = c("p", "a"),
#'        data = DiasEx9.6.6,
#'        ylab = "Total de sólidos solúveis na polpa do fruto",
#'        xlab = "Cultivares de tomateiro")
#'
NULL

#' @name DiasEx9.6.7
#' @title Produ\enc{çã}{ca}o de Porta-Enxertos em Mangueira
#' @description Resultados de um experimento em delineamento de blocos
#'     casualizados que considerou a produção de frutos na primeira
#'     colheita para difentes porta-enxertos de magueira sendo a copa a
#'     variedade Imperial.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{penx}}{Variável categórica que são os porta-enxertos de
#'     mangueira usados para a copa Imperial.}
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos do
#'     experimento.}
#'
#'
#' \item{\code{frutos}}{Número de frutos na primeira colheita.}
#'
#' }
#' @keywords DBC
#' @source BARROS; DIAS (2009), Exercício 7, Cap. 9, pág. 261.
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx9.6.7)
#' str(DiasEx9.6.7)
#'
#' xtabs(~penx + bloc, data = DiasEx9.6.7)
#'
#' xyplot(nfpc ~ reorder(penx, nfpc),
#'        groups = bloc, data = DiasEx9.6.7,
#'        xlab = "Porta-enxertos de mangueira",
#'        ylab = "Número de frutos na primeira colheita")
#'
NULL
