#' @name FerreiraEg13.2
#' @title Dados Simulados para Classifica\enc{çã}{ca}o
#' @description Dados provenientes de simulação. Foram 50 dados
#'     simulados de duas populações, P1 e P2, definidas pelos modelos
#'     probabilísticos exponenciais \eqn{P1 \sim Exp(1)} e \eqn{P2 \sim
#'     Exp(0,1)}. O objetivo da simulação é explorar os métodos de
#'     classificação.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{pop}}{Fator de dois níveis que representa a qual
#'     população a observação pertence: 1 se \eqn{P1} e 2 se \eqn{P2}.}
#'
#' \item{\code{x}}{Realização da variável aleatória \eqn{P_i, \quad i =
#'     1 ou 2} conforme \code{pop}}
#'
#' }
#' @keywords AnaDisc
#' @source D. F. (2011). Estatística Multivariada (2nd ed.). Lavras, MG:
#'     Editora UFLA. (Exemplo 13.2, pág. 592-593)
#' @examples
#'
#' data(FerreiraEg13.2)
#' summary(FerreiraEg13.2)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' densityplot(~x, groups = pop, data = FerreiraEg13.2,
#'             grid = TRUE, lwd = 2,
#'             auto.key = list(
#'                 title = "População", cex.title = 1,
#'                 corner = c(0.95, 0.90), points = FALSE))
#'
#' ecdfplot(~x, groups = pop, data = FerreiraEg13.2,
#'          grid = TRUE, lwd = 2,
#'          auto.key = list(
#'              title = "População", cex.title = 1,
#'              corner = c(0.95, 0.05), points = FALSE))
#'
#' (discr <- MASS::lda(pop ~ ., data = FerreiraEg13.2))
#'
#' table(predict(discr)$class, FerreiraEg13.2$pop)
#'
NULL

#' @name FerreiraEg13.3
#' @title Classifica\enc{çã}{ca}o de Solos na Regi\enc{ã}{a}o Amaz\enc{ô}{o}nica
#' @description Dados amostrais relativos ao teor de zinco (\emph{Zn}) e
#'     ferro \emph{Fe}, em ppm, obtidos em solos de pastagem e de
#'     floresta na região amazônica.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{pop}}{Fator de dois níveis que indica a qual população a
#'     observação pertence, F se provém da floresta e P se provém de
#'     pastagem.}
#'
#' \item{\code{zinco}}{Teor de zinco (\emph{Zn}) do solo, em ppm.}
#'
#' \item{\code{ferro}}{Teor de ferro (\emph{Fe}) do solo, em ppm.}
#'
#' }
#' @keywords AnaDisc
#' @source D. F. (2011). Estatística Multivariada (2nd ed.). Lavras, MG:
#'     Editora UFLA. (Exemplo 13.3, pág. 596-597)
#' @examples
#'
#' data(FerreiraEg13.3)
#' str(FerreiraEg13.3)
#'
#' library(lattice)
#'
#' xyplot(zinco ~ ferro, groups = pop, data = FerreiraEg13.3,
#'        grid = TRUE, lwd = 2,
#'        auto.key = list(
#'            title = "População", cex.title = 1,
#'            corner = c(0.95, 0.90), points = TRUE))
#'
#' (discr <- MASS::lda(pop ~ zinco + ferro, data = FerreiraEg13.3))
#' plot(discr)
#'
#' table(predict(discr)$class, FerreiraEg13.3$pop)
#'
NULL

#' @name FerreiraEg3.4
#' @title Exame de Sangue em Pintores de Carro
#' @description Subconjunto de valores de um hemograma aplicado à
#'     pintores de carros, apresentado por Royston (1983).
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{conc}}{Concentração de hemoglobina.}
#'
#' \item{\code{linf}}{Contagem de linfócitos.}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 3.4 pág. 136)
#'
#' Royston, J. P. (1983). Some techniques for assessing multivariate
#'     normality based on Shapiro-Wilk. London, Applied Statistics -
#'     Journal of the Royal Statistical Society - Series C, v. 32, n. 2,
#'     p. 121-133. (Table 2)
#' @examples
#'
#' # Normalidade univariada
#' par(mfrow = c(1, 2))
#' with(FerreiraEg3.4, {
#'     qqnorm(conc, main = "Normal Q-Q Plot\nConc. Hemoglobina")
#'     qqline(conc)
#'     qqnorm(linf, main = "Normal Q-Q Plot\nCont. Linfócitos")
#'     qqline(linf)
#' })
#'
NULL

#' @name FerreiraEg5.1
#' @title Teores de Areia e Argila em Solo na Amaz\enc{ô}{o}nia
#' @description Conjunto de dados referente aos teores de areia e argila
#'     de uma amostra com 30 parcelas de solo de capoeira nova na
#'     Amazônia.
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{areia}}{Representa o teor de areia em cada parcela de
#'     solo.}
#'
#' \item{\code{argila}}{Representa o teor de argila em cada parcela de
#'     solo.}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 5.1 pág. 193-194)
#' @examples
#'
#' data(FerreiraEg5.1)
#'
#' str(FerreiraEg5.1)
#'
#' pairs(FerreiraEg5.1)
#'
#' bks <- apply(FerreiraEg5.1, 2,
#'              FUN = function(x, step = 5) {
#'                  r <- range(x)
#'                  r <- r + (r %% step * (-1)) + c(0, step)
#'                  seq(r[1], r[2], by = step)
#'              })
#' areiaPlot <- hist(FerreiraEg5.1$areia, plot = FALSE,
#'                   breaks = bks$areia)
#' argilaPlot <- hist(FerreiraEg5.1$argila, plot = FALSE,
#'                    breaks = bks$argila)
#'
#' layout(matrix(c(2, 0, 1, 3), ncol = 2, byrow = TRUE),
#'        widths = c(4/5, 1/5), heights = c(1/5, 4/5))
#' par(mar = c(5, 5, 0.5, 0.5))
#' plot(argila ~ areia, data = FerreiraEg5.1, cex = 1.5,
#'      xlab = "Teor de areia do solo",
#'      ylab = "Teor de argila do solo",
#'      xlim = range(bks$areia),
#'      ylim = range(bks$argila))
#' grid()
#' rug(x = FerreiraEg5.1$areia, side = 3)
#' rug(x = FerreiraEg5.1$argila, side = 4)
#' par(mar = c(0, 5, 1, 0.5))
#' barplot(areiaPlot$counts, axes = FALSE, space = 0)
#' par(mar = c(5, 0, 0.5, 1))
#' barplot(argilaPlot$counts, axes = FALSE, space = 0, horiz = TRUE)
#'
NULL

#' @name FerreiraEg6.3
#' @title Avalia\enc{çã}{ca}o dos Solos de Pastagem e Capoeira Nova da Amaz\enc{ô}{o}nia
#' @description Os dados referem-se a avaliação de parcelas de solo da
#'     Amazônia. Os atributos quantidade de cálcio, magnésio e saturação
#'     de bases foram avaliados em parcelas de solo sob os sistemas de
#'     uso: pastagem, com 13 observações e capoeira nova, com 30
#'     observações.
#' @format Um \code{data.frame} com 43 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{solo}}{Fator que indica o sistema de uso da parcela de
#'     solo. \code{CN} para Capoeira Nova e \code{P} para Pastagem.}
#'
#' \item{\code{Ca}}{Teor de cálcio na parcela de solo.}
#'
#' \item{\code{Mg}}{Teor de magnésio na parcela de solo.}
#'
#' \item{\code{SB}}{Índice de saturação de bases calculado na parcela de
#'     solo.}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 6.3 pág. 240-241 e
#'     exemplo 6.6 pág. 268-269)
#'
#' @examples
#'
#' data(FerreiraEg6.3)
#'
#' str(FerreiraEg6.3)
#'
#' library(lattice)
#'
#' splom(~FerreiraEg6.3[2:4], groups = solo, data = FerreiraEg6.3,
#'       type = c("p", "smooth"), grid = TRUE,
#'       auto.key = list(columns = 2, title = "Tipo de solo"))
#'
#' # Matrizes de covariâncias e correlações
#' by(FerreiraEg6.3[2:4], FerreiraEg6.3[1], cov)
#' by(FerreiraEg6.3[2:4], FerreiraEg6.3[1], cor)
#'
NULL

#' @name FerreiraEg7.1
#' @title Avalia\enc{çã}{ca}o de Exerc\enc{í}{i}cios F\enc{í}{i}sicos sobre o Estresse Oxidativo
#' @description Dados observados de um estudo realizado no laboratório
#'     de Bioquímica Clínica do Departamento de Análises Clínicas e
#'     Toxicológicas da Universidade Federal de Alfenas (UNIFAL), no
#'     qual o interesse era testar se a rotina de exercícios físicos
#'     intensos não tem efeito sobre o estresse oxidativo (estresse
#'     causado pelo aumento de radicais livres), no plasma de mulheres
#'     da terceira idade. O estudo consistiu na avaliação de 16 mulheres
#'     da terceira submetidas ao exercício físico durante 4 semanas, as
#'     avaliações ocorreram antes e depois do tratamento com exercícios
#'     físicos.
#' @format Um \code{data.frame} com 32 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{amostra}}{Fator que indica a qual amostra a observação
#'     pertence, antes ou depois do tratamento com exercícios físicos.}
#'
#' \item{\code{proteina}}{Proteínas mensuradas em \eqn{g/dl} (grama por
#'     decilitro).}
#'
#' \item{\code{peroxido}}{Peróxidos de proteína mensurados em
#'     \eqn{nmol/dl} (nanomol por decilitro).}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 7.1 pág. 286)
#'
#' @examples
#' data(FerreiraEg7.1)
#'
#' aggregate(peroxido ~ amostra, data = FerreiraEg7.1, summary)
#' aggregate(proteina ~ amostra, data = FerreiraEg7.1, summary)
#'
#' par(mar = c(4, 5, 4, 5))
#' boxplot(proteina ~ amostra, data = FerreiraEg7.1,
#'         xlim = c(0.5, 2.5), border = 4,
#'         boxwex = 0.2, at = 1:2 - 0.15,
#'         axes = FALSE)
#' box()
#' axis(side = 2, col.axis = 4)
#' mtext(side = 2, text = "Proteínas em g/dl", line = 3, col = 4)
#' par(new = TRUE, mar = c(4, 5, 4, 5))
#' boxplot(peroxido ~ amostra, data = FerreiraEg7.1,
#'         xlim = c(0.5, 2.5), border = 2,
#'         boxwex = 0.2, at = 1:2 + 0.15,
#'         axes = FALSE)
#' axis(side = 4, col.axis = 2)
#' axis(side = 1, at = 1:2, labels = c("antes", "depois"))
#' mtext(side = 4, text = "Peróxidos em nmol/g de proteína",
#'       line = 3, col = 2)
#'
NULL

#' @name FerreiraEg7.4
#' @title Avalia\enc{çã}{ca}o de Duas Variedades de Milho
#' @description Com o interesse de testar a hipótese de igualdade entre
#'     duas variedades de milho, foram mensuradas as variáveis aleatórias
#'     produtividade e altura das plantas em cada uma das variedades.
#'
#' @format Um \code{data.frame} com 11 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{varie}}{Fator que indica a qual variedade a observação
#'     pertence. Variedade A, com 6 observações e B com 5.}
#'
#' \item{\code{prod}}{Produtividade mensurada em t ha\eqn{^{-1}}
#'     (tonelada por hectare).}
#'
#' \item{\code{altura}}{Altura média das plantas em metros.}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 7.4 pág. 302)
#'
#' @examples
#' data(FerreiraEg7.4)
#'
#' aggregate(prod ~ varie, data = FerreiraEg7.4, summary)
#' aggregate(altura ~ varie, data = FerreiraEg7.4, summary)
#' by(FerreiraEg7.4[2:3], FerreiraEg7.4[1], cov)
#'
#' with(FerreiraEg7.4, {
#'      par(mar = c(4, 5, 4, 5))
#'      plot.default(y = prod, xlab = "", ylab = "",
#'                   x = jitter(as.numeric(varie), factor = 0.5) - 0.1,
#'                   xlim = c(0.5, 2.5),
#'                   col = 4,
#'                   axes = FALSE)
#'      box()
#'      axis(side = 2, col.axis = 4)
#'      mtext(side = 2, text = "Produtividade em t/ha",
#'            line = 3, col = 4)
#'      par(new = TRUE, mar = c(4, 5, 4, 5))
#'      plot.default(y = altura, xlab = "", ylab = "",
#'                   x = jitter(as.numeric(varie), factor = 0.5) + 0.1,
#'                   xlim = c(0.5, 2.5),
#'                   col = 2,
#'                   axes = FALSE)
#'      axis(side = 4, col.axis = 2)
#'      axis(side = 1, at = 1:2,
#'           labels = c("Variedade A", "Variedade B"))
#'      mtext(side = 4, text = "Altura em m",
#'            line = 3, col = 2)
#' })
#'
NULL

#' @name FerreiraEg8.1
#' @title N\enc{ú}{u}mero de Gr\enc{ã}{a}os e Produtividade em Cultivares de Feij\enc{ã}{a}o
#' @description Dados obtidos de um experimento inteiramente casualizado
#'     com cinco repetições, realizado no período de seca, onde
#'     avaliou-se o efeito de diferentes cultivares na produtividade do
#'     feijão por meio das variáveis produtividade e número médio de
#'     grãos por vagem.
#' @format Um \code{data.frame} com 20 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator nominal com 4 níveis que representa as
#'     cultivares de feijão.}
#'
#' \item{\code{rept}}{Inteiro que identifica as unidades experimentais
#'     de cada cultivar.}
#'
#' \item{\code{ngrao}}{Número médio de grãos por vagem.}
#'
#' \item{\code{prod}}{Produtividade de feijão, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords manova
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 8.1, pág. 339)
#' @examples
#'
#' data(FerreiraEg8.1)
#' str(FerreiraEg8.1)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' p1 <- xyplot(prod ~ cult,
#'              data = FerreiraEg8.1,
#'              type = c("p", "smooth"))
#' p2 <- xyplot(ngrao ~ cult,
#'              data = FerreiraEg8.1,
#'              type = c("p", "smooth"))
#' doubleYScale(p1, p2, add.ylab2 = TRUE)
#'
#' xyplot(prod ~ ngrao,
#'        groups = cult,
#'        grid = TRUE,
#'        auto.key = list(space = "right",
#'                        title = "Cultivar", cex = 0.8),
#'        data = FerreiraEg8.1,
#'        xlab = "Número médio de grãos por vagem",
#'        ylab = "Produção de feijão")
#'
NULL

#' @name FerreiraEg9.1
#' @title Teores de Areia e Argila para Diferentes Usos da Terra na
#'     Amaz\enc{ô}{o}nia
#' @description Os dados referem-se a média de vários pontos amostrais
#'     em sistema de gride nos solos da Amazônia, onde foram mensuradas
#'     as variáveis areia e argila para 6 sistemas de uso da terra
#'     (SUT). O objetivo do estudo é agrupar os SUT's conforme
#'     similaridade das medidas de areia e argila.
#' @format Um \code{data.frame} com 6 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{areia}}{Média das medidas de areia.}
#'
#' \item{\code{argila}}{Média das medidas de argila.}
#'
#' }
#'
#' O sistema de uso da terra é indicado conforme nomenclatura das linhas
#'     do \code{data.frame}, onde (A) representa uso da terra para
#'     agricultura, (AG) para agrofloresta, (F) para floresta, (CV) para
#'     capoeira velha, (CN) para capoeira nova e (P) para pastagem.
#' @keywords KM
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 9.1, pág. 402)
#' @examples
#'
#' data(FerreiraEg9.1)
#' str(FerreiraEg9.1)
#' rownames(FerreiraEg9.1)
#'
#' (D <- dist(FerreiraEg9.1))
#' plot(hclust(D), hang = -1)
#'
#' library(lattice)
#'
#' (cl <- kmeans(FerreiraEg9.1, 3))
#'
#' xyplot(argila ~ areia, groups = cl$cluster,
#'        data = FerreiraEg9.1,
#'        pch = 19, cex = 1.3, grid = TRUE,
#'        xlab = "Teor de argila (%)",
#'        ylab = "Teor de areia (%)",
#'        panel = function(x, y, ...) {
#'            cols <- trellis.par.get()$superpose.symbol$col[cl$cluster]
#'            panel.xyplot(x, y, ...)
#'            ltext(x, y,
#'                  labels = rownames(FerreiraEg9.1),
#'                  pos = 4, offset = 1, col = cols)
#'        })
#'
NULL

#' @name FerreiraEx10.11.9
#' @title Amostra de uma Popula\enc{çã}{ca}o Normal Trivariada
#' @description Dados provenientes de uma amostra de tamanho \eqn{n =
#'     30} de uma população normal trivariada, \eqn{X = (X_1, X_2, X_3),
#'     X \sim \textrm{Normal}_3(\underline{\mu}, \Sigma)}.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{x1}}{Valores na primeira dimensão (\eqn{X_1}) do vetor
#'     X.}
#'
#' \item{\code{x2}}{Valores na segunda dimensão (\eqn{X_2}) do vetor X.}
#'
#' \item{\code{x3}}{Valores na terceira dimensão (\eqn{X_3}) do vetor
#'     X.}
#'
#' }
#' @keywords TODO
#' @source D. F. (2011). Estatística Multivariada (2nd ed.). Lavras, MG:
#'     Editora UFLA. (Exercício 10.11.9, pág. 487)
#' @examples
#'
#' data(FerreiraEx10.11.9)
#' str(FerreiraEx10.11.9)
#'
#' panel.density <- function(x, ...) {
#'     usr <- par("usr")
#'     on.exit(par(usr))
#'     par(usr = c(usr[1:2], 0, 1.5))
#'     par(new = TRUE)
#'     plot(density(x), xlab = "", ylab = "", main = "", lwd = 2)
#' }
#'
#' # Relação entre as variáveis
#' # (Se [X1, X2, X3] ~ Normal => X1 ~ Normal, X2 ~ Normal, X3 ~ Normal)
#' pairs(FerreiraEx10.11.9, pch = 20, diag.panel = panel.density)
#'
#' # Componentes principais
#' (comp <- prcomp(FerreiraEx10.11.9, scale = TRUE))
#' screeplot(comp, type = "lines")
#' biplot(comp, pc.biplot = TRUE)
#'
#' # Correlação das componentes principais com as variáveis originais
#' cor(FerreiraEx10.11.9, comp$x)
#'
NULL

#' @name FerreiraEx3.8.5
#' @title Avalia\enc{çã}{ca}o de cultivar de mel\enc{ã}{a}o
#' @description Os dados referem-se à avaliação de uma cultivar de melão
#'     em 32 unidades experimentais.
#' @format \code{data.frame} com 32 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{nfrut}}{Número de frutos total por héctare.}
#'
#' \item{\code{prod}}{Produção de melão mensurada em kg ha\eqn{^{-1}}.}
#'
#' \item{\code{tam}}{Teor médio de açucar mensurados em graus brix.}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras,  MG: Editora UFLA. (Exercício 3.8.5 pág. 169)
#' @examples
#'
#' data(FerreiraEx3.8.5)
#' str(FerreiraEx3.8.5)
#'
#' # Análise descritiva
#' panel.density <- function(x, ...) {
#'     usr <- par("usr")
#'     on.exit(par(usr))
#'     par(usr = c(usr[1:2], 0, 1.5))
#'     par(new = TRUE)
#'     plot(density(x), xlab = "", ylab = "", main = "", lwd = 2)
#' }
#'
#' pairs(FerreiraEx3.8.5, pch = 20, diag.panel = panel.density)
#'
#' # Análise de componentes principais (PCA)
#' (comp <- prcomp(FerreiraEx3.8.5, scale = TRUE))
#' screeplot(comp, type = "lines")
#' biplot(comp)
#'
NULL

#' @name FerreiraEx7.4.1
#' @title Avalia\enc{çã}{ca}o de Dieta em Animais
#' @description Dados referentes a um estudo com animais avaliados antes
#'     e depois de terem sido submetidos a uma dieta balanceada. O
#'     interesse do estudo é avaliar se houve efeito significativo da
#'     dieta nas variáveis peso e teor de proteína.
#'
#' @format Um \code{data.frame} com 12 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{fase}}{Fator que indica a qual fase do estudo a
#'     observação pertence. Antes ou depois da dieta.}
#'
#' \item{\code{peso}}{Peso do animal.}
#'
#' \item{\code{teor}}{Teor de proteína.}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exercício 7.4.1 pág. 328)
#'
#' @examples
#' data(FerreiraEx7.4.1)
#'
#' aggregate(peso ~ fase, data = FerreiraEx7.4.1, summary)
#' aggregate(teor ~ fase, data = FerreiraEx7.4.1, summary)
#'
#' by(FerreiraEx7.4.1[2:3], FerreiraEx7.4.1[1], cov)
#'
#' with(FerreiraEx7.4.1, {
#'      par(mar = c(4, 5, 4, 5))
#'      plot.default(y = peso, xlab = "", ylab = "",
#'                   x = jitter(as.numeric(fase), factor = 0.5) - 0.15,
#'                   xlim = c(0.5, 2.5),
#'                   col = 4,
#'                   axes = FALSE)
#'      box()
#'      axis(side = 2, col.axis = 4)
#'      mtext(side = 2, text = "Peso", line = 3, col = 4)
#'      par(new = TRUE, mar = c(4, 5, 4, 5))
#'      plot.default(y = teor, xlab = "", ylab = "",
#'                   x = jitter(as.numeric(fase), factor = 0.5) + 0.15,
#'                   xlim = c(0.5, 2.5),
#'                   col = 2,
#'                   axes = FALSE)
#'      axis(side = 4, col.axis = 2)
#'      axis(side = 1, at = 1:2, labels = c("antes", "depois"))
#'      mtext(side = 4, text = "Teor da proteína",
#'            line = 3, col = 2)
#' })
#'
NULL

#' @name FerreiraEx8.5.1
#' @title Di\enc{â}{a}metro \enc{à}{a} Altura do Peito e Altura de \enc{Á}{A}rvores em Lavras-MG
#' @description Resultados de um experimento inteiramente casualizado
#'     com dez repetições, realizado no período de seca, para avaliar o
#'     diferenças entre diferentes transectos na altura e no diâmetro à
#'     altura do peito (DAP) das árvores em uma área de recuperação às
#'     margens de um rio na região de Lavras, MG.
#' @format Um \code{data.frame} com 30 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{trans}}{Fator nominal com 3 níveis que representa o
#'     transecto (delimitação do terreno) avaliado.}
#'
#' \item{\code{rept}}{Inteiro que identifica as unidades experimentais
#'     de cada transecto.}
#'
#' \item{\code{alt}}{Altura da árvore.}
#'
#' \item{\code{dap}}{Diâmetro à altura do peito, 1.30 metros do solo.}
#'
#' }
#' @keywords manova
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exercício 8.5.1, pág. 351)
#' @examples
#'
#' data(FerreiraEx8.5.1)
#' str(FerreiraEx8.5.1)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' p1 <- xyplot(alt ~ tran,
#'              data = FerreiraEx8.5.1,
#'              type = c("p", "smooth"))
#' p2 <- xyplot(dap ~ tran,
#'              data = FerreiraEx8.5.1,
#'              type = c("p", "smooth"))
#' doubleYScale(p1, p2, add.ylab2 = TRUE)
#'
#' xyplot(alt ~ dap,
#'        groups = tran,
#'        grid = TRUE,
#'        auto.key = list(title = "Transecto", cex = 0.8),
#'        data = FerreiraEx8.5.1,
#'        xlab = "Diâmetro à altura do peito",
#'        ylab = "Altura")
#'
NULL

#' @name FerreiraEx9.7.2
#' @title Avalia\enc{çã}{ca}o Nutricional de Tipos de Carne
#' @description Dados provenientes de um estudo onde avaliou-se as
#'     variáveis energia, proteína, gordura, cálcio e ferro em 5
#'     diferentes tipos de carnes. O estudo é apresentado em Bussab et
#'     al., 1990 sob o objetivo de agrupar os tipos de carne com base em
#'     sua informação nutricional.
#' @format Um \code{data.frame} com 5 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ener}}{Valor energético de uma porção, em calorias.}
#'
#' \item{\code{prot}}{Valor proteico de uma porção, em gramas.}
#'
#' \item{\code{gord}}{Quantidade de gordura em uma porção, em gramas.}
#'
#' \item{\code{calc}}{Quantidade de cálcio em uma porção, em
#'     miligramas.}
#'
#' \item{\code{ferro}}{Quantidade de ferro em uma porção, em
#'     miligramas.}
#'
#' }
#'
#' O tipo de carne é indicado conforme nomenclatura das linhas do
#'     \code{data.frame}. Os tipos de carne marisco, siri e camarão são
#'     todos enlatados.
#' @keywords AnaAgrup
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exercício 9.7.2, pág. 409)
#' @references Bussab, W. O., Miazaki, É. S., Andrade,
#'     D. F. (1990). Introdução à análise de agrupamentos. São Paulo,
#'     SP: ABE.
#' @examples
#'
#' data(FerreiraEx9.7.2)
#' FerreiraEx9.7.2
#'
#' (cl2 <- kmeans(FerreiraEx9.7.2, 2))
#' (cl3 <- kmeans(FerreiraEx9.7.2, 3))
#' cbind("k=2" = cl2$cluster, "k=3" = cl3$cluster)
#'
#' (D <- dist(FerreiraEx9.7.2))
#' hc <- hclust(D)
#' plot(as.dendrogram(hc), main = "Dendograma")
#' rect.hclust(hc, k = 2, border = 2)
#' rect.hclust(hc, k = 3, border = 4)
#' legend("topright", lty = 1, col = c(2, 4), bty = "n",
#'        legend = c("2 grupos (k=2)", "3 grupos (k=3)"))
#'
NULL
