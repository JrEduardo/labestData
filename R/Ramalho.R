#' @name RamalhoEg11.10
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Sorgo
#' @description Experimento da avaliação da produção de 40 cultivares de sorgo
#'     conduzido no delineamento alfa-látice.
#' @format Um \code{data.frame} com 120 observações e 3 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 8 níveis, usado para controle local. Os
#'     blocos são incompletos, ou seja, o tamanho do bloco é menor que o
#'     número de níveis de cultivares.}
#'
#' \item{\code{cult}}{Fator de 40 níveis que são as cultivares de
#'     sorgo.}
#'
#' \item{\code{prod}}{Produção de grãos de sorgo, medidos em
#'     kg/parcela.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pág. 181)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg11.10)
#'
#' str(RamalhoEg11.10)
#'
#' addmargins(xtabs(~cult + bloc, data = RamalhoEg11.10))
#'
#' xyplot(prod ~ cult, data = RamalhoEg11.10,
#'        xlab = "Cultivares",
#'        ylab = expression("Produção de grãos"~(kg~parcela^{-1})))
#'
#' k <- nlevels(RamalhoEg11.10$cult)
#' a <- seq(0, 2 * pi, length.out = k + 1)[-(k + 1)]
#' par(mfrow = c(2, 4))
#' col <- 1
#' for (b in levels(RamalhoEg11.10$bloc)) {
#'     plot(sin(a), cos(a), asp = 1,
#'          xlim = c(-1.1, 1.1),
#'          ylim = c(-1.1, 1.1),
#'          axes = FALSE, xlab = NA, ylab = NA)
#'     mtext(paste("Bloco", b))
#'     i <- unique(as.integer(subset(RamalhoEg11.10, bloc == b)$cult))
#'     cb <- combn(x = i, m = 2)
#'     segments(x0 = sin(a[cb[1, ]]), y0 = cos(a[cb[1, ]]),
#'              x1 = sin(a[cb[2, ]]), y1 = cos(a[cb[2, ]]),
#'              col = col)
#'     text(x = 1.08 * sin(a[i]), y = 1.08 * cos(a[i]),
#'          labels = levels(RamalhoEg11.10$cult)[i])
#'     col <- col + 1
#' }
#'
NULL

#' @name RamalhoEg11.13
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Milho em Diferentes Popula\enc{çõ}{co}es
#' @description Experimento envolvendo populações de milho no
#'     delinemanto em blocos aumentados com 4 populações comuns e 25
#'     populações regulares.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{pop}}{Fator de 29 níveis que indica as populações de
#'     milho estudadas. Destas, 4 são não regulares (I a IV) pois
#'     ocorrem em todos os blocos e as 25 restantes ocorrem apenas em um
#'     bloco.}
#'
#' \item{\code{bloc}}{Fator de 5 níveis usado para fazer controle
#'     local.}
#'
#' \item{\code{prod}}{Produção de grãos de milho, medidos em
#'     kg/parcela.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exemplo 11.13, pág. 188)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg11.13)
#'
#' str(RamalhoEg11.13)
#'
#' xyplot(prod ~ pop, groups = bloc, data = RamalhoEg11.13,
#'        xlab = "População de Milho",
#'        ylab = "Produção em kg/parcela")
#'
NULL

#' @name RamalhoEg11.4
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Milho
#' @description Experimento conduzido na EMBRAPA Milho e Sorgo em 1997,
#'     envolvendo a avaliação de produção de grãos de 36 cultivares de
#'     milho, conduzido no delineamento de látice quadrado parcialmente
#'     balanceado.
#' @format Um \code{data.frame} com 72 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 6 níveis, usado para controle local.}
#'
#' \item{\code{cult}}{Fator de 36 níveis. Tratamento aplicado
#'     para verificar a produção de grãos de milho.}
#'
#' \item{\code{prod}}{Produção de grãos de milho, medidos em kg/parcela
#'     nas parcelas.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pág. 171)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg11.4)
#'
#' str(RamalhoEg11.4)
#'
#' addmargins(xtabs(~cult + bloc, data = RamalhoEg11.4))
#'
#' xyplot(prod ~ cult, data = RamalhoEg11.4,
#'        xlab = "Cultivares",
#'        ylab = expression("Produção de grãos"~(kg~parcela^{-1})))
#'
#' k <- nlevels(RamalhoEg11.4$cult)
#' a <- seq(0, 2 * pi, length.out = k + 1)[-(k + 1)]
#' par(mfrow = c(2, 4))
#' col <- 1
#' for (b in levels(RamalhoEg11.4$bloc)) {
#'     plot(sin(a), cos(a), asp = 1,
#'          xlim = c(-1.1, 1.1),
#'          ylim = c(-1.1, 1.1),
#'          axes = FALSE, xlab = NA, ylab = NA)
#'     mtext(paste("Bloco", b))
#'     i <- unique(as.integer(subset(RamalhoEg11.4, bloc == b)$cult))
#'     cb <- combn(x = i, m = 2)
#'     segments(x0 = sin(a[cb[1, ]]), y0 = cos(a[cb[1, ]]),
#'              x1 = sin(a[cb[2, ]]), y1 = cos(a[cb[2, ]]),
#'              col = col)
#'     text(x = 1.08 * sin(a[i]), y = 1.08 * cos(a[i]),
#'          labels = levels(RamalhoEg11.4$cult)[i])
#'     col <- col + 1
#' }
#'
NULL

#' @name RamalhoEg12.10
#' @title Ensaio Dialelo para o Tempo At\enc{é}{e} o Florescimento do Feijoeiro
#' @description Dados referentes ao cruzamento dialelo realizado por
#'     Arriel et al. (1993), em que foi avaliado o número de dias para o
#'     florescimento do feijoeiro para cada progenie.
#' @format Um \code{data.frame} com 9 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{prog1}}{Inteiro que indica o progenitor 1 do cruzamento.}
#'
#' \item{\code{prog2}}{Inteiro que indica o progenitor 2 do cruzamento.}
#'
#' \item{\code{dias}}{Número médio de dias para o florescimento do
#'     feijoeiro.}
#'
#' }
#' @keywords Dialelo
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exemplo 12.10, pág. 227)
#'
#'     Arriel, E., Ramalho, M. A. P., Pacheco, C. A. P. Expected and
#'     Realized Gains in the CMS-39 Maize Population after three Cycles
#'     of Selection. Revista Brasileira de Genética. Ribeirão Preto.
#'     v.16, n.4, p.1013. dez. 1993
#' @examples
#'
#' str(RamalhoEg12.10)
#'
#' RamalhoEg12.10
#'
#' # Número de genitores.
#' n <- with(RamalhoEg12.10, unique(c(prog1, prog2)))
#' RamalhoEg12.10 <- transform(RamalhoEg12.10,
#'                             prog1 = factor(prog1, levels = n),
#'                             prog2 = factor(prog2, levels = n))
#'
#' # Matriz do cruzamento dialelo.
#' X1 <- model.matrix(~0 + prog1, data = RamalhoEg12.10)
#' X2 <- model.matrix(~0 + prog2, data = RamalhoEg12.10)
#' X <- 0.5 * (X1 + X2)
#'
NULL

#' @name RamalhoEg13.2
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Milho em Cons\enc{ó}{o}rcio com Feij\enc{ã}{a}o.
#' @description Dados referente ao experimento conduzido por Rezende et
#'     al. (1994), envolvendo 4 cultivares de milho consorciadas com 3
#'     de feijão.
#' @format Um \code{data.frame} com 36 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{milh}}{Fator categórico de 4 níveis que indica as
#'     cultivares de milho.}
#'
#' \item{\code{feij}}{Fator categórico de 3 níveis, indica as cultivares
#' de milho.}
#'
#' \item{\code{bloc}}{Fator categórico de 3 níveis, usado para fazer
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de milho, medido em kg/ha.}
#'
#' \item{\code{plant}}{Número de plantas por parcela.}
#'
#' }
#' @keywords COV FAT2 DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exemplo 13.2, pág. 237)
#'
#'     Rezende, G. D. S. P.; Ramalho, M. A. P. Competitive Ability of
#'     Maize and Commom Bean (Phaseolus Vulgaris L.) Cultivars
#'     Intercropped in Different Environments. Euphytica. Wageningen.
#'     v.123, n.2. 1994.
#' @examples
#'
#' data(RamalhoEg13.2)
#'
#' str(RamalhoEg13.2)
#'
#' ftable(with(RamalhoEg13.2,
#'             tapply(prod,
#'                    list(milh = milh,
#'                         feij = feij,
#'                         bloc = bloc),
#'                    FUN = mean)))
#'
#' library(lattice)
#'
#' xyplot(prod ~ milh, data = RamalhoEg13.2,
#'        groups = feij, type=c("p", "a"),
#'        xlab = "Plantas por Parcela",
#'        ylab = "Produção em (kg/ha)")
#'
NULL

#' @name RamalhoEg4.3
#' @title Porcentagem de absor\enc{çã}{ca}o de \enc{á}{a}gua de feij\enc{ã}{a}o
#' @description Experimento conduzido na Universidade Federal de Lavras,
#'     avaliando a porcentagem de absorção de água de 10 linhares de
#'     feijão. O delineamento é inteiramente ao acaso com 3 repetições.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linh}}{Fator em que os números inteiro representam as
#'     linhagens de feijão.}
#'
#' \item{\code{rept}}{Número inteiro que indicam as repetições das
#'     linhagens.}
#'
#' \item{\code{abs}}{Porcentagem de absorção de água no intervalo [0,
#'     100].}
#'
#' }
#' @keywords DIC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (Exemplo 4.3, pág 56)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg4.3)
#'
#' aggregate(abs ~ linh,  data = RamalhoEg4.3,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name RamalhoEg4.7
#' @title Produ\enc{çã}{ca}o de gr\enc{ã}{a}os de arroz.
#' @description Experimento da produção de grãos na avaliação de
#'     cultivares de arroz, conduzido em Lavras/MG. Delineamento em
#'     blocos casualizados.
#' @format data.frame com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de 10 níveis de cultivares de arroz.}
#'
#' \item{\code{bloco}}{Fator de 3 níveis do experimento.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz, medidos kg/ha nas
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pg 62)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg4.7)
#'
#' xyplot(prod ~ cult | bloco, data = RamalhoEg4.7,
#'        xlab = "Cultivares",
#'        ylab = "Produção de grãos")
#'
NULL

#' @name RamalhoEg7.8
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Cruzamentos Feij\enc{ã}{a}o
#' @description Experimento referente à produção de grãos de feijão
#'     obtida na avaliação de 24 famílias \eqn{F_{5}} do cruzamento
#'     Jalo x Small White, cujos dados foram obtidos por Souza (1991).
#'     Experimento realizado em blocos incompletos.
#' @format Um \code{data.frame} com 240 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{fam}}{Família \eqn{F_{5}} do cruzamento Jalo x Small
#'     White.}
#'
#' \item{\code{rept}}{Fator que indica a repetição da combinação entre
#'     família \eqn{F_{5}} e planta.}
#'
#' \item{\code{plant}}{Inteiro que indica a planta de feijão avaliada no
#'     experimento.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, em g/planta.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (Exemplo 7.8, pág 110).
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg7.8)
#'
#' str(RamalhoEg7.8)
#'
#' xtabs(~fam + rept, data = RamalhoEg7.8)
#'
#' ps <- list(box.rectangle = list(col = 1, fill = c("gray90")),
#'            box.umbrella = list(col = 1, lty = 1),
#'            plot.symbol = list(col = 1, cex = 0.7))
#'
#' bwplot(prod ~ fam, data = RamalhoEg7.8,
#'        horizontal = FALSE, pch = "|",
#'        xlab = "Família",
#'        ylab = "Produção de grãos (g/planta)",
#'        par.settings = ps)
#'
NULL

#' @name RamalhoEg8.1
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os em Cultivares de Feij\enc{ã}{a}o
#' @description Experimentos para medir a produção de grãos de
#'     cultivares de feijão, conduzidos em Lavras e Patos de Minas/MG
#'     durante o ano de 1990 em delineamento em blocos casualizados.
#' @format Um \code{data.frame} com 60 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais que representa as
#'     cultivares de feijão.}
#'
#' \item{\code{local}}{Fator de 2 níveis nominais, municípios onde
#'     foram realizados os experimentos.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis que identifica os blocos em cada
#'     um dos experimentos, usado para fazer controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medidos em g/parcela
#'     nas unidades experimentais.}
#'
#' }
#' @keywords DBC GE
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exemplo 8.1, pág. 115)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg8.1)
#'
#' str(RamalhoEg8.1)
#'
#' xtabs(~cult + local, data = RamalhoEg8.1)
#'
#' xyplot(prod ~ cult | local, data = RamalhoEg8.1,
#'        jitter.x = TRUE,
#'        xlab = "Cultivar",
#'        ylab = expression("Produção"~(g~parcela^{-1})))
#'
#' ftable(with(RamalhoEg8.1,
#'             tapply(prod,
#'                    list(local, cult, bloc = bloc),
#'                    FUN = identity)))
#'
#' aggregate(prod ~ cult + local,  data = RamalhoEg8.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name RamalhoEg8.8
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Feij\enc{ã}{a}o de Popula\enc{çõ}{co}es Segregantes
#' @description Dados da produção de grãos de feijão obtidos por Corte
#'     et al. (2002) relativos à avaliação de 6 populações segregantes
#'     avaliadas nas gerações F\eqn{_{2}}, F\eqn{_{3}} e F\eqn{_{4}} com
#'     diferente número de blocos. O delineamento foi em blocos
#'     casualizados e cada geração corresponde a um experimento
#'     separado. Sendo assim, a identificação dos blocos é para cada
#'     experimento (geração).
#' @format Um \code{data.frame} com 72 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ger}}{Fator categórico de 3 níveis que representa o
#'     experimento para cada geração segregante de feijoeiro.}
#'
#' \item{\code{bloc}}{Fator categórico usado para fazer controle local
#'     dentro de cada experimento (geração).}
#'
#' \item{\code{pop}}{Fator categórico de 6 níveis que representa as
#'     populações segregates de feijoeiro.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC GE
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 8.8, pág. 123)
#'
#'     Corte, H. R., Ramalho, M. A. P., Gonçalves, F. M. A., Abreu. A de
#'     F. B. Natural Selection for Grain Yield in Dry Bean Population
#'     Bred by the Bulk Method. Euphytica. Wageningen. v.123, n.3. 2002
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg8.8)
#'
#' str(RamalhoEg8.8)
#'
#' xtabs(~pop + ger, data = RamalhoEg8.8)
#'
#' ftable(with(RamalhoEg8.8,
#'             tapply(prod,
#'                    list(ger = ger, pop = pop, bloc = bloc),
#'                    FUN = identity)))
#'
#' xyplot(prod ~ pop | ger, data = RamalhoEg8.8,
#'        groups = bloc, type = c("p", "a"),
#'        as.table = TRUE, layout = c(NA, 1),
#'        xlab = "População",
#'        ylab = expression("Produção"~(kg~ha^{-1})))
#'
NULL

#' @name RamalhoEx1.7
#' @title Altura de plantas de \emph{Eucaliptus camaldulensis}
#' @description Amostra da altura média, medida aos 17 meses de vida, de
#'     plantas de famílias de meios-irmãos de \emph{Educaliptus
#'     camaldulensis} avaliadas em três localidades do Estado de Minas
#'     Gerais.
#' @format Vetor com 100 observações altura das plantas em metros.
#' @keywords AAS
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 26)
#'
#'     Castro, N. H. A., Andrade, H. B., Ramalho, m A. P. (1993).
#'     Revista Árvore. Viçosa, v. 17, n.2.
#'
#' @examples
#'
#' hist(RamalhoEx1.7,
#'      labels = TRUE,
#'      xlim = c(4.5, 7),
#'      col = "steelblue",
#'      main = NULL,
#'      ylab = "Frequência absoluta",
#'      xlab = "Altura (m)")
#' rug(RamalhoEx1.7)
#'
NULL

#' @name RamalhoEx12.2
#' @title Dados Gen\enc{é}{e}ricos para Regress\enc{ã}{a}o M\enc{ú}{u}ltipla
#' @description Conjunto de dados apresentados para exercício. Objetivo
#'     do exercício é estimar a equação de regressão múltipla.
#' @format Um \code{data.frame} com 8 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator que indica as cultivares.}
#'
#' \item{\code{prod}}{Produtividade de grãos, medidos em kg/ha.}
#'
#' \item{\code{alt}}{Altura da planta, em centímetros.}
#'
#' \item{\code{perf}}{Número de perfilhos.}
#'
#' }
#' @keywords RM
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 12.2, pág. 231)
#' @examples
#'
#' data(RamalhoEx12.2)
#'
#' str(RamalhoEx12.2)
#'
#' pairs(RamalhoEx12.2[, -1])
#'
#' library(lattice)
#'
#' splom(RamalhoEx12.2[, -1], type = c("p", "r"))
#'
NULL

#' @name RamalhoEx13.1
#' @title Avalia\enc{çã}{ca}o de Clones de Eucalipto
#' @description Experimento referente a avaliação de clones de
#'     eucalipto, obtidos na Aracruz Celulose.
#' @format Um \code{data.frame} com 20 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator de 20 níveis que representa o clone de
#'     eucalipto.}
#'
#' \item{\code{alt}}{Altura do eucalipto, medido em metros.}
#'
#' \item{\code{dap}}{Diâmetro na altura do peito (cm).}
#'
#' \item{\code{broto}}{Número médio de brotos por árvore.}
#'
#' \item{\code{perc}}{Percentagem de enraizamento das estacas.}
#'
#' }
#' @keywords COV
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 13.1, pág. 255)
#' @examples
#'
#' data(RamalhoEx13.1)
#'
#' str(RamalhoEx13.1)
#'
#' library(lattice)
#'
#' splom(RamalhoEx13.1[, -1], type = c("p", "smooth"))
#'
NULL

#' @name RamalhoEx13.2
#' @title Peso de Espigas de Cultivares Milho
#' @description Experimento que avaliou a produção de espigas de
#'     cultivares de milho, em delineamento de blocos casualizados. O
#'     número de plantas por parcela foi medido é uma covariável para o
#'     peso final de espigas por parcela.
#' @format Um \code{data.frame} com 24 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico de 8 níveis que indica a cultivar
#'     de milho.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis que são os blocos do
#'     experimento, utilizado para fazer controle local.}
#'
#' \item{\code{plant}}{Número de plantas por parcela.}
#'
#' \item{\code{peso}}{Peso de espigas despalhadas.}
#'
#' }
#' @keywords COV DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 13.2, pág. 256)
#' @examples
#'
#' data(RamalhoEx13.2)
#'
#' str(RamalhoEx13.2)
#'
#' library(lattice)
#'
#' cex <- with(RamalhoEx13.2, {
#'     x <- plant - min(plant)
#'     x <- x/max(x)
#'     0.5 + 1.3 * x
#' })
#'
#' xyplot(peso ~ cult, groups = bloc, data = RamalhoEx13.2,
#'        type = "o", cex = cex,
#'        ylab = "Peso de espigas despalhadas",
#'        xlab = "Cultivares de milho")
#'
#' xyplot(peso ~ plant, groups = bloc, data = RamalhoEx13.2,
#'        auto.key = list(columns = 3, title = "Cultivar",
#'                        cex.title = 1.1),
#'        xlab = "Peso de espigas",
#'        ylab = "Plantas por parcela")
#'
NULL

#' @name RamalhoEx13.3
#' @title Avalia\enc{çã}{ca}o do Stay Green em Fam\enc{í}{i}lias de Feijoeiro
#' @description Notas da avaliação do "stay green" obtidos de famílias
#'     de feijoeiro, avaliados nas gerações \eqn{F_{2:3}}, \eqn{F_{2:4}}
#'     e \eqn{F_{2:5}}.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{fam}}{Fator categórico de 20 níveis que indica a família
#'     de feijoeiro.}
#'
#' \item{\code{gerac}}{Fator categórico de 3 níveis (\eqn{F_{3}},
#'     \eqn{F_{4}} e \eqn{F_{5}}) que indica a geração do cruzamento.}
#'
#' \item{\code{nota}}{Notas para avaliação de "stay green".}
#'
#' }
#' @keywords COV DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 13.3, pág. 257)
#' @examples
#'
#' data(RamalhoEx13.3)
#'
#' str(RamalhoEx13.3)
#'
#' library(lattice)
#'
#' xyplot(nota ~ fam, groups = gerac,
#'        data = RamalhoEx13.3, type = c("p", "a"),
#'        ylab = "Nota de stay green",
#'        xlab = "Família",
#'        auto.key = list(title = "Geração", cex.title = 1.1,
#'                        columns = 3))
#'
#' ftable(with(RamalhoEx13.3,
#'             tapply(nota,
#'                    list(fam = fam,
#'                         gerac = gerac),
#'                    FUN = mean)))
#'
NULL

#' @name RamalhoEx3.1
#' @title N\enc{ú}{u}mero de plantas de milho ap\enc{ó}{o}s inocula\enc{çã}{ca}o
#' @description Experimento referente ao número de plantas de milho,
#'     por parcela, após a inoculação com Diploidia. Experimento para
#'     avaliação de fungicidas para tratamento de sementes.
#' @format data.frame com 20 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{fugic}}{Fator que indica o tipo de tratamento aplicado.
#'     Fungicida (A, B, C, D, E) ou controle (Fc).}
#'
#' \item{\code{rept}}{Repetições de inoculação do fungicida.}
#'
#' \item{\code{plant}}{Número de plantas de milho observadas.}
#'
#' }
#' @keywords contagem
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 50)
#'
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEx3.1)
#'
#' xyplot(jitter(plant) ~ fungic, data = RamalhoEx3.1,
#'        groups = repet, auto.key = TRUE,
#'        xlab = "Fungicida", ylab = "Número de plantas")
#'
NULL

#' @name RamalhoEx4.1
#' @title Comprimento de con\enc{í}{i}dios de \emph{Colletotrichum
#'     lindemuthianum}
#' @description Experimento para avaliar o comprimento de conídios de
#'     diferentes isolados do fungo \emph{Colletotrichum
#'     lindemuthianum}. Experimento inteiramente casualizado com número
#'     desigual de observações.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{coni}}{Identifica o conídio medido na lâmina de cada
#'     isolado (repetições).}
#'
#' \item{\code{isol}}{Fator que identifica os isolados do fungo
#'     \emph{Colletotrichum lindemuthianum}}
#'
#' \item{\code{comp}}{Comprimento de conídios medidos em \eqn{\mu m.}}
#'
#' }
#' @keywords DIC desbalanceado
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (Exercício 4.1, pág 66)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEx4.1)
#'
#' xyplot(comp ~ med | isol, data = RamalhoEx4.1,
#'        xlab = "Repetições",
#'        ylab = "Comprimento")
#'
NULL

#' @name RamalhoEx4.2
#' @title N\enc{ú}{u}mero de perfilhos de arroz
#' @description Experimento que estudou o número de perfilhos de plantas
#'     de arroz de 8 linhagens em um delineamento de blocos
#'     casualizados.
#' @format Um \code{data.frame} com 32 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linh}}{Fator de níveis nominais, indicando a linhagem de
#'     arroz.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis, usado para controle local.}
#'
#' \item{\code{perf}}{Número de perfilhos de arroz obervado.}
#'
#' }
#' @keywords DBC contagem
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (Execício 4.2, pág 66)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEx4.2)
#'
#' aggregate(perf ~ linh,  data = RamalhoEx4.2,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(perf ~ linh, data = RamalhoEx4.2,
#'        groups = bloc,
#'        jitter.x = TRUE,
#'        xlab = "Linhagem",
#'        ylab = "Número de perfilho")
#'
NULL

#' @name RamalhoEx7.10
#' @title Produ\enc{çã}{ca}o de Arroz em 18 Popula\enc{çõ}{co}es na F2
#' @description Experimento referente à produção de arroz obtida na
#'     avaliação de 18 populações \eqn{F_{2}} e duas linhagens
#'     utilizadas como testemunhas. O Experimento foi realizado em
#'     blocos casualizados.
#' @format Um \code{data.frame} com 600 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{pop}}{População \eqn{F_{2}} da linhagem de arroz com 18
#'     níveis e 2 testemunhas.}
#'
#' \item{\code{rept}}{Fator que indica a repetição da combinação entre
#'     planta e linhagem.}
#'
#' \item{\code{plant}}{Inteiro que representa a planta de arroz avaliada
#'     no experimento.}
#'
#' \item{\code{prod}}{Produção de arroz, em g/planta.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 112).
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEx7.10)
#'
#' str(RamalhoEx7.10)
#'
#' xtabs(~pop + rept, data = RamalhoEx7.10)
#'
#' ps <- list(box.rectangle = list(col = 1, fill = c("gray90")),
#'            box.umbrella = list(col = 1, lty = 1),
#'            plot.symbol = list(col = 1, cex = 0.7))
#'
#' bwplot(prod ~ reorder(pop, prod, median), data = RamalhoEx7.10,
#'        horizontal = FALSE, pch = "|",
#'        xlab = "População (ordenada pela mediana)",
#'        ylab = "Produção de grãos (g/parcela)",
#'        par.settings = ps)
#'
NULL

#' @name RamalhoEx8.1
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Arroz em Munic\enc{í}{i}pios de Minas Gerais
#' @description Experimentos para avaliar a produção de grãos de
#'     cultivares de arroz, conduzidos em três locais do Estado de Minas
#'     Gerais (Lambari, Lavras e Felixlândia) em delineamento
#'     inteiramente casualizado.
#' @format Um \code{data.frame} com 90 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais que representa as
#'     cultivares de arroz.}
#'
#' \item{\code{local}}{Fator de 3 níveis nominais, municípios de Minas
#'     Gerais onde foram realizados os experimentos.}
#'
#' \item{\code{rept}}{Números inteiros que identificam as repetições em
#'     cada local.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC GE
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 8.1, pág. 132)
#' @examples
#'
#' data(RamalhoEx8.1)
#'
#' str(RamalhoEx8.1)
#'
#' with(RamalhoEx8.1,
#'      tapply(prod, list(cult = cult, local = local),
#'             FUN = mean))
#'
#' aggregate(prod ~ cult + local, data = RamalhoEx8.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' library(lattice)
#'
#' xyplot(prod ~ cult | local, data = RamalhoEx8.1,
#'        as.table = TRUE, layout = c(NA, 1), type = c("p", "a"),
#'        xlab = "Cultivar de arroz",
#'        ylab = expression("Produção"~(kg~ha^{-1})))
#'
#' # Ordenar cultivares pela média dentro de cada local.
#' a <- by(data = RamalhoEx8.1, INDICES = RamalhoEx8.1$local,
#'         FUN = function(d) {
#'             with(d, reorder(interaction(cult, local, drop = TRUE),
#'                             prod))
#'         })
#' a <- levels(unlist(a)); a
#'
#' RamalhoEx8.1 <- transform(RamalhoEx8.1,
#'                           cult.loc = factor(interaction(cult, local),
#'                                             levels = a))
#'
#' xyplot(prod ~ cult.loc | local, data = RamalhoEx8.1,
#'        as.table = TRUE, layout = c(NA, 1), type = c("p", "a"),
#'        scales = list(x = "free"),
#'        xlab = "Cultivar de arroz (ordenadas por local)",
#'        ylab = expression("Produção"~(kg~ha^{-1})),
#'        xscale.components = function(...) {
#'            ans <- xscale.components.default(...)
#'            ans$bottom$labels$labels <-
#'                gsub(x = ans$bottom$labels$labels,
#'                     pattern = "\\..*$",
#'                     replacement = "")
#'            return(ans)
#'        })
#'
NULL

#' @name RamalhoEx8.2
#' @title Produ\enc{çã}{ca}o de Am\enc{ê}{e}ndoas de Clones de Caju
#' @description Experimento em delineamento de blocos casualizados para
#'     estudar a produção de amêndoas obtidos da avaliação de clones de
#'     caju, em 5 colheitas.
#' @format Um \code{data.frame} com 200 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator categórico de 10 níveis que indica os
#'     clones de caju.}
#'
#' \item{\code{colh}}{Fator categórico de 5 níveis que representa as
#'     colheitas em ordem.}
#'
#' \item{\code{bloc}}{Fator categórico de 4 níveis, usado para controle
#'     local.}
#'
#' \item{\code{prod}}{Produção de clones de caju, medido em g/planta.}
#'
#' }
#' @keywords DBC GE
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 8.2, pág. 133)
#' @examples
#'
#' library(latticeExtra)
#'
#' data(RamalhoEx8.2)
#'
#' str(RamalhoEx8.2)
#'
#' xtabs(~clone + colh, data = RamalhoEx8.2)
#'
#' xyplot(prod ~ colh | clone,
#'        groups = bloc, type = "o", lty = 3,
#'        data = RamalhoEx8.2,
#'        jitter.x = TRUE,
#'        as.table = TRUE, layout = c(NA, 2),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Clone", sep = " "),
#'        xlab = "Colheita",
#'        ylab = expression("Produção"~(g~parcela^{-1})))
#'     layer(panel.xyplot(x = x, groups = NULL,
#'                        type = "a", lwd = 2, lty = 1, ...))
#'
NULL

#' @name RamalhoTb1.2
#' @title Produtividade M\enc{é}{e}dia de Espiga
#' @description Experimento da produtividade média de espigas de milho
#'     de diversas cultivares obtidas por Ferreira et al (1995).
#' @format data.frame com 28 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis nominais das variedades de
#'     milho.}
#'
#' \item{\code{prod}}{Produtividade média de espiga (ton
#'     ha\eqn{^{-1}}).}
#'
#' }
#' @keywords ASS
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 15)
#'
#' @examples
#'
#' bk <- c(2.5, 4.25, 6, 7.75, 9.5)
#' ht <- hist(RamalhoTb1.2$prod,
#'            xlab = expression("Produtividade"~(ton~ha^{-1})),
#'            ylab = "Frequência absoluta",
#'            main = NULL,
#'            breaks = bk,
#'            axes = FALSE,
#'            labels = TRUE)
#' axis(side = 1, at = bk)
#' axis(side = 2)
#' rug(RamalhoTb1.2$prod)
#'
#' plot(ecdf(RamalhoTb1.2$prod),
#'      xlab = expression("Produtividade"~(ton~ha^{-1})),
#'      ylab = "Frequência relativa acumulada",
#'      main = NULL)
#'
NULL

#' @name RamalhoTb11.1
#' @title Produ\enc{çã}{ca}o de 16 Cultivares de Sorgo
#' @description Experimento conduzido na EMBRAPA Milho e Sorgo
#'     envolvendo a avaliação de 16 cultivares de sorgo conduzido
#'     no delineamento de látice quadrado balanceado.
#' @format Um \code{data.frame} com 80 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 4 níveis, usado para controle local.}
#'
#' \item{\code{cult}}{Fator de 16 níveis. Tratamento aplicado para
#'     verificar a produção de sorgo.}
#'
#' \item{\code{prod}}{Produção de sorgo, medidos em kg/parcela nas
#'     parcelas.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pág. 165)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb11.1)
#'
#' str(RamalhoTb11.1)
#'
#' addmargins(xtabs(~cult + bloc, data = RamalhoTb11.1))
#'
#' xyplot(prod ~ cult, data = RamalhoTb11.1,
#'        xlab = "Cultivares de sorgo",
#'        ylab = expression("Produção de grãos"~(kg~parcela^{-1})))
#'
#' k <- nlevels(RamalhoTb11.1$cult)
#' a <- seq(0, 2 * pi, length.out = k + 1)[-(k + 1)]
#' par(mfrow = c(2, 2))
#' col <- 1
#' for (b in levels(RamalhoTb11.1$bloc)) {
#'     plot(sin(a), cos(a), asp = 1,
#'          xlim = c(-1.1, 1.1),
#'          ylim = c(-1.1, 1.1),
#'          axes = FALSE, xlab = NA, ylab = NA)
#'     mtext(paste("Bloco", b))
#'     i <- unique(as.integer(subset(RamalhoTb11.1, bloc == b)$cult))
#'     cb <- combn(x = i, m = 2)
#'     segments(x0 = sin(a[cb[1, ]]), y0 = cos(a[cb[1, ]]),
#'              x1 = sin(a[cb[2, ]]), y1 = cos(a[cb[2, ]]),
#'              col = col)
#'     text(x = 1.08 * sin(a[i]), y = 1.08 * cos(a[i]),
#'          labels = levels(RamalhoTb11.1$cult)[i])
#'     col <- col + 1
#' }
#'
NULL

#' @name RamalhoTb11.17
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Feij\enc{ã}{a}o
#' @description Dados provenientes de 3 experimentos envolvendo a
#'     produção de grãos de 15 linhagens de feijão, conduzidos sob
#'     delineamento em blocos casualizados incompletos, pois somente as
#'     testemunhas são comuns a todos os blocos.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{exp}}{Fator de 3 níveis que indica de qual experimento a
#'     observação provém.}
#'
#' \item{\code{linh}}{Fator de 18 níveis onde os níveis 1, 2 e 3 são
#'     testemunhas, comuns a todos os experimentos e os demais (4 a 18)
#'     são as linhagens de feijão avaliadas.}
#'
#' \item{\code{bloc}}{Fator de 2 níveis em cada experimento, usado para
#'     fazer controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medidos em kg/parcela
#'     nas unidades experimentais.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 11.17, pág. 193)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb11.17)
#'
#' str(RamalhoTb11.17)
#'
#' ftable(xtabs(~exp + bloc + linh, data = RamalhoTb11.17))
#'
#' dotplot(prod ~ linh | exp, groups = bloc, data = RamalhoTb11.17,
#'         type = "p", as.table = TRUE, layout = c(NA, 1),
#'         xlab = "Linhagem de feijão",
#'         ylab = expression("Produção"~(kg~parcela^{-1})))
#'
NULL

#' @name RamalhoTb12.8
#' @title Componentes da Produ\enc{çã}{ca}o de Linhagens de Feij\enc{ã}{a}o
#' @description Dados obtidos por Perreira Filho et al. (1987),
#'     referentes ao número médio de vagens por planta, número de
#'     sementes por vagem, peso de 100 sementes e produção de grãos,
#'     obtidos em um experimento de avaliação de linhagens de feijão,
#'     conduzidos em Patos de Minas, MG. Neste experimento, para um
#'     ajuste de regressão múltipla, a produção de grãos de feijão é a
#'     variável dependente e as demais são as variáveis independentes.
#' @format Um \code{data.frame} com 20 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linh}}{Fator que indica as linhagens de feijão avaliadas
#'     no experimento.}
#'
#' \item{\code{v}}{Número médio de vagens por planta.}
#'
#' \item{\code{s}}{Número de sementes por vagem.}
#'
#' \item{\code{z}}{Peso de 100 sementes}
#'
#' \item{\code{w}}{Produção de grãos de feijão, medidos em g/planta.}
#'
#' }
#' @keywords RM
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 12.8, pág. 225)
#'
#'     Pereira Filho, I. A., Ramalho, M. A. P., Ferreira, S. Avaliação
#'     de Progênies de Feijão e Estimativas de Parâmetros Genéticos na
#'     Região do Alto São Francisco em Minas Gerais, Pesquisa
#'     Agropecuária Brasileira, Brasília, v. 12, n. 9/10, p. 987-993.
#'     1987.
#' @examples
#'
#' data(RamalhoTb12.8)
#'
#' plot(RamalhoTb12.8[, -1])
#'
#' library(lattice)
#'
#' splom(RamalhoTb12.8[, -1])
#'
#' splom(RamalhoTb12.8[, -1], type = c("p", "r"))
#'
NULL

#' @name RamalhoTb13.1
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Milho
#' @description Experimento referente a cultura de milho, cujos dados
#'     foram obtidos de dez plantas. Neste experimento, a produção de
#'     grãos é considerada a variável dependente e a altura da planta a
#'     independente.
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Altura da planta, medida em cm.}
#'
#' \item{\code{y}}{Produção de grãos, medida em g/planta.}
#'
#' }
#' @keywords COV
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.1, pág. 233)
#' @examples
#'
#' data(RamalhoTb13.1)
#'
#' str(RamalhoTb13.1)
#'
#' library(lattice)
#'
#' xyplot(y ~ x, data = RamalhoTb13.1,
#'        type = c("p", "r"),
#'        xlab = "Altura (cm)",
#'        ylab = "Produção (g/planta)")
#'
NULL

#' @name RamalhoTb13.11
#' @title Produ\enc{çã}{ca}o de Ra\enc{í}{i}zes de Mandioca
#' @description Experimento envolvendo a produção de raízes de 20
#'     genótipos parentais (clones) de mandioca e de suas respectivas
#'     filhas.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator de 20 níveis que indica o clone de
#'     mandioca.}
#'
#' \item{\code{mae}}{Produção de raízes da planta mãe.}
#'
#' \item{\code{filha}}{Produção de raízes da planta filha.}
#'
#' }
#' @keywords COV RS
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.11, pág. 248)
#' @examples
#'
#' data(RamalhoTb13.11)
#'
#' str(RamalhoTb13.11)
#'
#' library(lattice)
#'
#' xyplot(filha ~ mae, data = RamalhoTb13.11,
#'        type = c("p", "smooth", "g"), aspect = "iso",
#'        xlab = "Produção de raízes na planta mãe",
#'        ylab = "Produção de raízes na planta filha")
#'
NULL

#' @name RamalhoTb13.13
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Prog\enc{ê}{e}nies de Feij\enc{ã}{a}o
#' @description Experimento referente a avaliação de progênies
#'     provenientes do cruzamento (ESAL 501 x Rio Tibagi), obtidos em 3
#'     gerações (F3, F4 e F5). Foi utilizado o delineamento de blocos
#'     casualizados.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{prog}}{Fator de 10 níveis que representa a cultivar de
#'     feijão utilizada no experimento.}
#'
#' \item{\code{gerac}}{Fator de 3 níveis (F3, F4 e F5) que são os blocos
#'     do experimento, utilizado para fazer controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medida em g/parcela.}
#'
#' }
#' @keywords COV DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.13, pág. 251)
#' @examples
#'
#' data(RamalhoTb13.13)
#'
#' str(RamalhoTb13.13)
#'
#' library(lattice)
#'
#' xyplot(prod ~ prog, groups = gerac, data = RamalhoTb13.13,
#'        type = c("p", "a"),
#'        xlab = "Progênie de feijoeiro",
#'        ylab = "Produção (g/parcela)",
#'        auto.key = list(title = "Geração", cex.title = 1.1,
#'                        columns = 3))
#'
#' ftable(with(RamalhoTb13.13,
#'             tapply(prod,
#'                    list(prog = prog, gerac = gerac),
#'                    FUN = identity)))
#'
NULL

#' @name RamalhoTb13.15
#' @title Produ\enc{çã}{ca}o de Ramas de Clones de Mandioca
#' @description Experimento envolvendo a produção de ramas (parte aérea)
#'     de 20 genótipos parentais (clones) de mandioca e de seus
#'     respectivos decendentes.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator categórico de 20 níveis que indica o clone
#'     de mandioca.}
#'
#' \item{\code{mae}}{Produção de ramas da planta "mãe".}
#'
#' \item{\code{filha}}{Produção de ramas da planta "filha".}
#'
#' }
#' @keywords COV RS
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.15, pág. 252)
#' @examples
#'
#' data(RamalhoTb13.15)
#'
#' str(RamalhoTb13.15)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' xyplot(filha ~ mae, data = RamalhoTb13.15,
#'        type = c("p", "smooth"), grid = TRUE, aspect = "iso",
#'        xlab = "Produção de ramas na planta mãe",
#'        ylab = "Produção de ramas na planta filha")
#'     layer(panel.abline(a = 0, b = 1, lty = 2))
#'
NULL

#' @name RamalhoTb13.6
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Feij\enc{ã}{a}o e Teor de \eqn{P_{2}O_{5}}
#' @description Experimento apresentado por Pereira (1993) referente a
#'     avaliação da produção de feijão e teor de \eqn{P_{2}O_{5}} em
#'     cada parcela, cujos dados foram obtidos de 10 cultivares de
#'     feijão. Para este experimento, um estudo por regressão deve
#'     considerar a produtividade de grãos como variável dependente e o
#'     teor como variável independente.
#' @format Um \code{data.frame} com 30 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de 10 níveis que representa a cultivar de
#'     feijão utilizada no experimento.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis utilizado para fazer controle
#'     local.}
#'
#' \item{\code{teor}}{Teor de \eqn{P_{2}O_{5}} no solo, medidos em ppm.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medida em g/parcela.}
#'
#' }
#' @keywords COV DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.6, pág. 243 e tabela 13.9, pág. 246)
#'
#'     Pereira, A. F. Emprego de Covariância visando reduzir o efeito da
#'     heterogeneidade Ambiental nos Experimentos com a Cultura do
#'     Fejoeiro (Phaseolus vulgaris L.) Lavras: UFLA, 1993. 58p.
#'     (Dissertação-Mestrado Fitotecnia).
#' @examples
#'
#' data(RamalhoTb13.6)
#'
#' str(RamalhoTb13.6)
#'
#' library(lattice)
#'
#' xyplot(prod ~ teor, groups = cult, data = RamalhoTb13.6,
#'        auto.key = list(space = "right", title = "Cultivar"),
#'        xlab = "Teor de P_{2}O_{5}",
#'        ylab = "Produção de grãos de feijão")
#'
#' xyplot(prod ~ teor, groups = cult, data = RamalhoTb13.6,
#'        auto.key = list(space = "right",
#'                        title = "Cultivar", cex.title = 1.1),
#'        xlab = expression("Teor de"~P[2]*O[5]),
#'        ylab = "Produção de grãos de feijão (g/parcela)")
#'
#' unit01 <- function(x) {
#'     x <- x - min(x)
#'     x <- x/max(x)
#'     return(x)
#' }
#'
#' cex <- 0.5 + unit01(RamalhoTb13.6$teor)
#'
#' key <- with(RamalhoTb13.6, {
#'     v <- round(seq(min(teor), max(teor), length.out = 4), digits = 0)
#'     cex <- 0.5 + unit01(v)
#'     list(title = expression(Teor~de~P[2]*O[5]),
#'          cex.title = 1.1,
#'          columns = length(v),
#'          text = list(as.character(v)),
#'          points = list(cex = cex, pch = 1))
#' })
#'
#' xyplot(prod ~ cult, data = RamalhoTb13.6,
#'        cex = cex, key = key,
#'        xlab = expression("Teor de"~P[2]*O[5]),
#'        ylab = "Produção de grãos de feijão (g/parcela)")
#'
NULL

#' @name RamalhoTb3.1
#' @title N\enc{ú}{u}mero de nemat\enc{ó}{o}ides por vasos
#' @description Experimento do número de nematóides (vermes que estão
#'     presentes no solo) por vasos infectando plantas de figo em
#'     diferentes idades de inoculação, experimento com 4 repetições.
#' @format data.frame com 16 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{dias}}{Idade de inoculação, tratamento.}
#'
#' \item{\code{rept}}{Número que indica as repetições de cada
#'     tratamento.}
#'
#' \item{\code{nemat}}{Número de nematóides por vaso coletado.}
#'
#' }
#' @keywords DIC contagem
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 43)
#'
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb3.1)
#'
#' # Dados originais.
#'
#' aggregate(nemat ~ dias, data = RamalhoTb3.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' plot(nemat ~ dias, data = RamalhoTb3.1,
#'      ylab = "Número de nematóides",
#'      xlab = "Tempo (dias)")
#'
#' xyplot(nemat ~ dias, data = RamalhoTb3.1,
#'        ylab = "Número de nematóides",
#'        xlab = "Tempo (dias)")
#'
#' # Dados aplicando logaritmo.
#'
#' aggregate(log(nemat) ~ dias, data = RamalhoTb3.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' plot(log10(nemat) ~ dias, data = RamalhoTb3.1,
#'      ylab = "log do número de nematóides",
#'      xlab = "Tempo (dias)")
#'
#' plot(nemat ~ dias, data = RamalhoTb3.1,
#'      log = "y",
#'      ylab = "log do número de nematóides",
#'      xlab = "Tempo (dias)")
#'
#' xyplot(nemat ~ dias, data = RamalhoTb3.1,
#'        scales = list(y = list(log = TRUE)),
#'        ylab = "Número de nematóides",
#'        xlab = "Tempo (dias)")
#'
NULL

#' @name RamalhoTb3.4
#' @title Incid\enc{ê}{e}nica de \emph{Colletotrichum} no feijoeiro
#' @description Experimento para verificar a incidência de patógenos do
#'     tipo \emph{Colletotrichum} nas cultivares de feijão, foi
#'     utilizada uma escala de notas variando de 1 (resistente) a 5
#'     (completamente suscetível), estas notas foram dadas por três
#'     avaliadores. Neste experimento foram avaliados 16 tratamentos com
#'     3 repetições em blocos casualizados.
#' @format data.frame com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis numéricos. Tratamento aplicado
#' para verificar a incidência de \emph{Colletotrichum}.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis quantitativos, usado para
#' controle local}
#'
#' \item{\code{cult}}{Cultivar de feijão.}
#'
#' \item{\code{nota}}{Variável reposta, nota atribuída pelos avaliadores
#'     para a incidência de \emph{Colletotrichum}.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 45)
#'
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb3.1)
#'
#' xyplot(nota ~ cult, data = RamalhoTb3.4,
#'        groups = bloc, auto.key = TRUE, jitter.x = TRUE,
#'        xlab = "Cultivares",
#'        ylab = "Notas")
#'
NULL

#' @name RamalhoTb3.6
#' @title Largura de ascos \emph{Colletrotrichum lindemuthianum}
#' @description Experimento referente a largura dos ascos de três
#'     isolados do fungo \emph{Colletotrichum lindemuthianum}.
#' @format data.frame com 90 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número identificador da amostra.}
#'
#' \item{\code{isol}}{Isolados do fungo (A, B e C).}
#'
#' \item{\code{larg}}{Largura dos ascos dos isolados.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 48)
#'
#' @examples
#'
#' data(RamalhoTb3.6)
#'
#' aggregate(larg ~ isol,  data = RamalhoTb3.6,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

#' @name RamalhoTb7.1
#' @title Volume de Madeira em Prog\enc{ê}{e}nies de Eucalipto
#' @description Pesquisa sobre avaliação de progênies de
#'     \emph{Eucaliptus camaldulensis}, referente ao volume de madeira
#'     por árvore, cujos dados foram obtidos pela V. \& M. Florestal
#'     Ltda. Experimento realizado em blocos casualizados.
#' @format Um \code{data.frame} com 180 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{prog}}{Progênie de \emph{Eucaliptus camaldulensis}.}
#'
#' \item{\code{rept}}{Número inteiro que indica o número da parcela com
#'     árvores de cada progênie.}
#'
#' \item{\code{plant}}{Inteiro que representa as árvores no parcela.}
#'
#' \item{\code{vol}}{Volume de madeira por árvore, medido em m\eqn{^3
#'     \times 10^4}}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (Tabela 7.1, pág 102).
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb7.1)
#'
#' str(RamalhoTb7.1)
#'
#' xtabs(~prog + rept, data = RamalhoTb7.1)
#'
#' xyplot(vol ~ plant, data = RamalhoTb7.1,
#'        jitter.x = TRUE, groups = rept,
#'        xlab = "Progênie",
#'        ylab = expression("Volume de madeira"~(10^{4}~m^{3})))
#'
NULL

#' @name RamalhoTb8.12
#' @title Produ\enc{çã}{ca}o M\enc{é}{e}dia de Gr\enc{ã}{a}os de Caf\enc{é}{e}-cereja
#' @description Experimento que estudou a produção média de grãos de
#'     café-cereja, obtidos por Mendes (1994), em função da progênie em
#'     3 anos. Foi utilizado o delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 120 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{prog}}{Fator que distingue as progênies do cultivar de
#'     café Icatu.}
#'
#' \item{\code{ano}}{Fator de 3 níveis, colheitas realizadas em
#'     anos sucessivos.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis que são os blocos no
#'     experimento, possivelmente os mesmo blocos e unidades
#'     experimentais em todos os anos, usado para controle local.}
#'
#' \item{\code{prod}}{Produção média de grãos de café-cereja, em
#'     kg/parcela.}
#'
#' }
#' @keywords DBC GE
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pág. 128)
#'
#'     Mendes, A. N. G. Avaliação de Metodologias Empregadas na Seleção
#'     de Progênies do Cafeeiro (Coffea arabica L.) no estado de Minas
#'     Gerais. Lavras: UFLA, 1994. 167p.
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb8.12)
#'
#' str(RamalhoTb8.12)
#'
#' ftable(with(RamalhoTb8.12,
#'             tapply(prod,
#'                    list(ano = ano, prog = prog, bloc = bloc),
#'                    FUN = identity)))
#'
#' xyplot(prod ~ ano | prog, data = RamalhoTb8.12,
#'        jitter.x = TRUE, type = c("p", "a"),
#'        as.table = TRUE, layout = c(NA, 2),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Progênie", sep = " "),
#'        xlab = "Ano de colheita",
#'        ylab = expression("Produção"~(kg~parcela^{-1})))
#'
#' aggregate(prod ~ prog,  data = RamalhoTb8.12,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL

