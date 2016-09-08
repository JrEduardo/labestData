#' @name BanzattoQd1.2.3
#' @title Di\enc{â}{a}metro \enc{à}{a} Altura do Peito de
#'     \emph{Eucalyptus saligna}
#' @description Valores de diâmetro à altura do peito (DAP, cm) de uma
#'     amostra aleatória de árvores de \emph{Eucalyptus saligna} de um
#'     povoamento com 15 anos de idade.
#' @format Um vetor numérico com 20 elementos.
#' @keywords AAS
#' @source BANZATTO; KRONKA (2013), Quadro 1.2.3, pág. 3.
#' @examples
#'
#' data(BanzattoQd1.2.3)
#'
#' hist(BanzattoQd1.2.3, prob = TRUE,
#'      xlab = expression(Diâmetro~à~altura~do~peito~(cm)),
#'      ylab = "Densidade", main = NULL)
#' lines(density(BanzattoQd1.2.3), lwd = 2)
#' rug(BanzattoQd1.2.3)
#'
#' boxplot(BanzattoQd1.2.3,
#'         ylab = expression(Diâmetro~à~altura~do~peito~(cm)))
#'
#' mean(BanzattoQd1.2.3)
#' sd(BanzattoQd1.2.3)
#' fivenum(BanzattoQd1.2.3)
#'
NULL

#' @name BanzattoQd3.2.1
#' @title Controle de Pulg\enc{ã}{a}o na Cultura de Pepino
#' @description Dados de um experimento visando controle de pulgão
#'     (\emph{Aphis gossypii} Glover) em cultura de pepino, instalado em
#'     delineamento inteiramente casualizado com 6 repetições. A
#'     resposta observada foi o número de pulgões após a aplicação de
#'     produtos indicados para seu controle.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais. Tratamento aplicado para
#'     controle do pulgão.}
#'
#' \item{rept}{Número inteiro que identifica as repetições de cada
#'     tratamento.}
#'
#' \item{pulgoes}{Número de pulgões coletados 36 horas após a
#'     pulverização dos tratamentos.}
#'
#' }
#' @keywords DIC contagem
#' @source BANZATTO; KRONKA (2013), Quadro 3.2.1, pág. 44.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd3.2.1)
#'
#' aggregate(pulgoes ~ trat,  data = BanzattoQd3.2.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(pulgoes ~ trat, data = BanzattoQd3.2.1,
#'        xlab = "Tratamentos",
#'        ylab = "Número de pulgões 36h após pulverização")
NULL

#' @name BanzattoQd3.4.1
#' @title Produtividades de Cultivares de Mandioca
#' @description Produção de mandioca em experimento de competição de
#'     cultivares de mandioca. O experimento foi instalado em
#'     delineamento inteiramente casualizado devido a área ser homogênea
#'     quanto às condições experimentais.
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Cultivares de mandioca
#'     em competição no experimento.}
#'
#' \item{\code{rept}}{Inteiro que identifica a unidade experimental em
#'     cada cultivar.}
#'
#' \item{\code{prod}}{Produção observada em cada unidade experimental,
#'     em ton ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC
#' @source BANZATTO; KRONKA (2013), Quadro 3.4.1, pág. 50.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd3.4.1)
#'
#' aggregate(prod ~ cult,  data = BanzattoQd3.4.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(prod ~ cult, data = BanzattoQd3.4.1,
#'        xlab = "Cultivares de mandioca",
#'        ylab = expression(Produtividade~de~mandioca~(t~ha^{-1})))
#'
NULL

#' @name BanzattoQd3.6.1
#' @title Produ\enc{çã}{ca}o de Mat\enc{é}{e}ria Seca em Cultivares de
#'     Sorgo
#' @description Experimento em delineamento inteiramente casualizado
#'     avaliando a produção de matéria de cultivares de sorgo. O
#'     experimento é desbalanceado no número de repetições das
#'     cultivares.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator nominal. Cultivares de sorgo estudadas. Sart
#'     é uma variedade enquanto que as demais são híbridos.}
#'
#' \item{\code{rept}}{Inteiro. Identifica as unidades experimentais de
#'     cada cultivar. }
#'
#' \item{\code{pms}}{Produção de matéria seca (ton ha\eqn{^{-1}}).}
#'
#' }
#' @keywords DIC desbalanceado
#' @source BANZATTO; KRONKA (2013), Quadro 3.6.1, pág. 57.
#' @examples
#' library(lattice)
#'
#' data(BanzattoQd3.6.1)
#'
#' aggregate(pms ~ cult,  data = BanzattoQd3.6.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(pms ~ cult, data = BanzattoQd3.6.1,
#'        xlab = "Cultivares de sorgo",
#'        ylab = expression(Produção~de~matéria~seca~(t~ha^{-1})))
#'
NULL

#' @name BanzattoQd3.7.1
#' @title Composi\enc{çã}{ca}o do Substrato na Altura de \emph{Pinus
#'     oocarpa}
#' @description Dados de experimento para estudo do efeito de 5
#'     composições de substrato para o desenvolvimento de \emph{Pinus
#'     oocarpa}. Experimento realizado em delineamento inteiramente
#'     casualizado.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{comp}}{Fator nominal. Composição do substrato para o
#'     desenvolvimento das plantas. Os níveis são: \code{SC} - solo de
#'     cerrado, \code{SC+E} - solo de cerrado com esterco,
#'     \code{SC+E+NPK} - idem ao anterior com NPK, \code{SC+V} - solo de
#'     cerrado com vermiculita,  \code{SC+V+NPK} - o anterior com NPK.}
#'
#' \item{\code{rept}}{Inteiro. Identifica as unidades experimentais em
#'     cada composição.}
#'
#' \item{\code{alt}}{Altura média (cm) 60 dias após a semeadura.}
#'
#' }
#' @keywords DIC contrastes
#' @source BANZATTO; KRONKA (2013), Quadro 3.7.1, pág. 64.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd3.7.1)
#'
#' aggregate(alt ~ comp,  data = BanzattoQd3.7.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(alt ~ comp, data = BanzattoQd3.7.1,
#'        xlab = expression(
#'            Composição~do~substrato~para~italic("Pinus oocarpa")),
#'        ylab = expression(Alturas~médias~60~dias~após~semeadura~(cm)))
#'
NULL

#' @name BanzattoQd4.5.2
#' @title Efeito do Promalin sobre a Produ\enc{çã}{ca}o de Frutos de
#'     Macieira
#' @description Resultados de um experimento instalado na Fazenda
#'     Chapadão, no município de Angatuba - SP. O delineamento
#'     experimental foi o de blocos casualizados, sendo as parcelas
#'     constituídas de 4 plantas espaçadas de 6 x 7 metros, com 12 anos
#'     de idade na época da instalação do experimento.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{promalin}}{Fator de níveis nominais que representa a
#'     aplicação de promalin. Os níveis são a dose de promalin (ppm)
#'     aplicado em plena floração (12.5, 25, e 50), na floração e na
#'     frutificação (12.5 + 12.5) e a testemunha (sem aplicação).}
#'
#' \item{\code{bloco}}{São os blocos do experimento, considerados para
#'     fazer controle local.}
#'
#' \item{\code{peso}}{Peso (g) médio baseado em um total de 250 frutos
#'     por parcela.}
#'
#' }
#' @keywords DBC
#' @source BANZATTO; KRONKA (2013), Quadro 4.5.2, pág. 84.
#'
#' Mestriner,  J. C. (1980). Estudos dos efeitos do promalin sobre
#'     frutos de macieiras (\emph{Malus} ssp) cultivares Brasil e
#'     Rainha. Trabalho de Conclusão de Curso (Graduação em Agronomia) -
#'     Faculdade de Ciências Agrárias e Veterinárias,  Universidade
#'     Estadual Paulista, Jaboticabal - SP.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd4.5.2)
#'
#' addmargins(with(BanzattoQd4.5.2,
#'                 tapply(X = peso,
#'                        INDEX = list(promalin, bloco),
#'                        FUN = sum)))
#'
#' xyplot(peso ~ bloco, data = BanzattoQd4.5.2,
#'        groups = promalin, type = "b",
#'        xlab = "Bloco",
#'        ylab = "Peso médio dos frutos (g)",
#'        auto.key = list(title = "Forma de aplicação do Promalin",
#'                        cex.title = 1, columns = 2))
NULL

#' @name BanzattoQd4.7.1
#' @title Compara\enc{çã}{ca}o de M\enc{é}{e}todos de Semeadura do
#'     Mamoeiro
#' @description Estudo realizado em Jaboticabal - SP por Ruiz (1977)
#'     que comparou métodos de semeadura no mamoeiro. O experimento foi
#'     instalado em delineamento de blocos casualizados, com 4
#'     repetições, avaliando 3 métodos de semeadura. Foram avaliadas
#'     duas unidades experimentais por método em cada bloco.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Blocos usados para controle local.}
#'
#' \item{\code{semead}}{Métodos de semeadura do mamoeiro, com 3 níveis:
#'     1) semeadura direta no campo, 2 semeadura em recipientes a pleno
#'     sol e 3) semeadura em recipientes no ripado.}
#'
#' \item{\code{altura}}{Alturas médias (cm) das plantas de mamoeiro aos
#'     147 dias após a semeadura.}
#'
#' }
#' @keywords DBC replicata
#' @source BANZATTO; KRONKA (2013), Quadro 4.7.1, pág. 93.
#'
#' Ruiz, P. R. N. (1977). Estudo comparativo entre diferentes métodos de
#'     semeadura na cultura do mamoeiro (\emph{Carica papaya}
#'     L.). Trabalho de Conclusão de Curso (Graduação em Agronomia) -
#'     Faculdade de Ciências Agrárias e Veterinárias, Universidade
#'     Estadual Paulista, Jaboticabal - SP.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd4.7.1)
#'
#' addmargins(with(BanzattoQd4.7.1,
#'                 tapply(X = altura,
#'                        INDEX = list(semead, bloco),
#'                        FUN = sum)))
#'
#' xyplot(altura ~ semead, data = BanzattoQd4.7.1,
#'        groups = bloco, type = c("p", "a"),
#'        xlab = "Método de semeadura de mamoeiro",
#'        ylab = "Peso médio dos frutos (g)",
#'        auto.key = list(title = "Bloco", cex.title = 1, columns = 2))
#'
NULL

#' @name BanzattoQd5.2.1
#' @title Peneira e Densidade de Plantio na Produ\enc{çã}{ca}o de
#'     Amendoim
#' @description Dados de um experimento fatorial que estudou o efeito de
#'     densidade de plantio e tamanho da peneiras comerciais, de crivos
#'     circulares, para classificação das sementes da produção de
#'     amendoim (\emph{Arachis hypogaea} L.) variedade Tatu V 53. O
#'     experimento foi instalado em delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{densid}}{Densidade de plantio expresso em número de
#'     plantas por metro linear de cultivo.}
#'
#' \item{\code{peneira}}{Diâmetro dos crivos circulares da peneira usada
#'     para classificar as sementes (18/64, 20/64 e 22/64 polegadas).}
#'
#' \item{\code{bloco}}{Fator considerado para garantir controle local.}
#'
#' \item{\code{prod}}{Produção média de amendoim em vagens (g) por
#'     planta.}
#'
#' }
#'
#' Cada parcela tinha 4 linhas de cultivo, espaçadas de 50 cm, com 7
#' metros de comprimento, resultando em uma área de 14 m\eqn{^2}. As
#' duas linhas externas de cada parcela e meio metro de cada extremidade
#' das linhas centrais foram consideradas como bordadura, fazendo-se as
#' avaliações apenas no comprimento restante das duas linhas centrais, o
#' que resultou em uma área útil de 6 m\eqn{^2}.
#' @keywords DBC FAT2
#' @source BANZATTO; KRONKA (2013), Quadro 5.2.1, pág. 102.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd5.2.1)
#'
#' addmargins(with(BanzattoQd5.2.1,
#'                 tapply(X = prod,
#'                        INDEX = list(interaction(peneira, densid),
#'                                     bloco),
#'                        FUN = sum)))
#'
#' xyplot(prod ~ densid, data = BanzattoQd5.2.1,
#'        groups = peneira, type = c("p", "a"),
#'        auto.key = list(title = "Peneira", cex.title = 1,
#'                        columns = 1, corner = c(0.05, 0.95)),
#'        xlab = "Densidade de plantio (plantas/metro linear)",
#'        ylab = "Produção média de amendoim em vagem (g/planta)")
#'
NULL

#' @name BanzattoQd5.2.4
#' @title Efeito de Recipientes para Duas Esp\enc{é}{e}cies de Eucalipto
#' @description Experimento em esquema fatorial 3 \eqn{\times} 2 para
#'     estudar o efeito de 3 tipos de recipientes para a produção de
#'     mudas de duas espécies de Eucalipto. O experimento foi instalado
#'     em delineamento inteiramente casualizado.
#' @format Um \code{data.frame} com 24 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{recipie}}{São os níveis de recipiente estudados: SPP -
#'     saco plástico pequeno, SPG - saco plástico grande e Lam -
#'     laminado.}
#'
#' \item{\code{especie}}{São as espécies de Eucalipto: \emph{Eucalyptus
#'     citriodora} e \emph{Eucalyptus grandis}}.
#'
#' \item{\code{rept}}{Identifica as repetições de cada combinação dos
#'     fatores recipiente e espécie.}
#'
#' \item{\code{alt}}{Altura das mudas aos 80 dias de idade (cm).}
#'
#' }
#' @keywords DIC FAT2
#' @source BANZATTO; KRONKA (2013), Quadro 5.2.4, pág. 107.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd5.2.4)
#'
#' xyplot(alt ~ recipie, data = BanzattoQd5.2.4,
#'        groups = especie, type = c("p", "a"),
#'        auto.key = list(title = "Espécie", cex.title = 1, font = 3,
#'                        columns = 1, corner = c(0.95, 0.95)),
#'        xlab = "Recipiente",
#'        ylab = "Altura das mudas aos 80 dias de idade (cm)")
#'
NULL

#' @name BanzattoQd5.3.1
#' @title Produ\enc{çã}{ca}o de Caf\enc{é}{e} em Fun\enc{çã}{ca}o de
#'     Aduba\enc{çã}{ca}o NPK
#' @description Resultados de um experimento em arranjo fatorial triplo
#'     2 \eqn{\times} 2 \eqn{\times} 2, instalado em delineamento de
#'     blocos casualizados, para estudar o efeito da combinação de
#'     nitrogênio, fósforo e potássio na produção de café coco.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{N}}{Variável numérica que indica ausência (0) ou
#'     presença (1) de nitrogênio.}
#'
#' \item{\code{P}}{Variável numérica que indica ausência (0) ou
#'     presença (1) de fósforo.}
#'
#' \item{\code{K}}{Variável numérica que indica ausência (0) ou
#'     presença (1) de potássio.}
#'
#' \item{\code{bloco}}{Fator de 6 níveis nominais, presente para
#'     controle local.}
#'
#' \item{\code{prod}}{Variável resposta contínua que é a produção de
#'     café coco (kg ha\eqn{^{-1}}) obtida em cada uma das parcelas para
#'     cada uma das combinações de N, P e K na adubação.}
#'
#' }
#' @keywords DBC FAT2K
#' @source BANZATTO; KRONKA (2013), Quadro 5.3.1, pág. 113.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd5.3.1)
#'
#' addmargins(with(BanzattoQd5.3.1,
#'                 tapply(X = prod,
#'                        INDEX = list(interaction(N, P, K), bloco),
#'                        FUN = sum)))
#'
#' xyplot(prod ~ N, data = BanzattoQd5.3.1,
#'        groups = interaction(P, K, sep = ":"), type = c("p", "a"),
#'        auto.key = list(title = "P:K", cex.title = 1,
#'                        columns = 1, corner = c(0.05, 0.95)),
#'        xlab = "Nitrogênio (0 = ausente, 1 = presente)",
#'        ylab = expression("Produção de café coco"~(kg~ha^{-1})))
#'
#' xyplot(prod ~ interaction(N, P, K, sep = ":"),
#'        data = BanzattoQd5.3.1,
#'        xlab = "N:P:K (0 = ausente, 1 = presente)",
#'        ylab = expression("Produção de café coco"~(kg~ha^{-1})))
#'
NULL

#' @name BanzattoQd5.3.7
#' @title Efici\enc{ê}{e}ncia na Utiliza\enc{çã}{ca}o de P por
#'     Cultivares de Trigo
#' @description Experimento em delineamento inteiramente casualizado que
#'     avaliou o efeito a eficiência na utilização de fósforo por três
#'     cultivares de trigo cultivadas em solo com e sem calagem.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Cultivares de trigo usadas no experimento: BR 20
#'     Guató - tolerante ao alumínio, BR 36 Ianomami - sensível ao
#'     alumínio, BR 40 Tuiúca - moderadamente sensível ao alumínio.}
#'
#' \item{\code{calag}}{Quantidade aplicada de calcário feita para
#'     correção da acidez do solo (calagem): 0 e 4,4 ton ha\eqn{^{-1}}.}
#'
#' \item{\code{P}}{Quantidade aplicada de fósforo: 0 e 87 mg de P por kg
#'     de solo.}
#'
#' \item{\code{rept}}{Identifica a repetição de cada cela experimental.}
#'
#' \item{\code{efic}}{Variável resposta que a eficiência na utilização
#'     do fósforo, dado pelo quociente da massa seca da parte aérea
#'     produzida pela quantidade de fósforo absorvida pelas plantas.}
#'
#' }
#' @keywords DIC FAT3
#' @source BANZATTO; KRONKA (2013), Quadro 5.3.7, pág. 120.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd5.3.7)
#'
#' addmargins(with(BanzattoQd5.3.7,
#'                 tapply(X = efic,
#'                        INDEX = list(interaction(cult, calag, P),
#'                                     rept),
#'                        FUN = sum)))
#'
#' xyplot(efic ~ factor(P) | cult, data = BanzattoQd5.3.7,
#'        groups = calag, type = c("p", "a"),
#'        layout = c(NA, 1), jitter.x = TRUE,
#'        auto.key = list(title = expression("Calagem"~(ton~ha^{-1})),
#'                        cex.title = 1, columns = 2),
#'        xlab = expression("Fósforo"~(mg~kg^{-1}~de~solo)),
#'        ylab = expression("Eficiência no uso do Fósforo"))
#'
NULL

#' @name BanzattoQd5.5.1
#' @title Aduba\enc{çã}{ca}o Mineral no Milho com Uso de Confundimento
#' @description Experimento realizado em Jaboticabal - SP por Vilalta
#'     (1972) que, com um arranjo fatorial triplo, estudou a combinação
#'     de nitrogênio, fósforo e potássio, cada um com 3 níveis (27
#'     combinações ao todo), sobre a produção de grãos de milho. Como o
#'     número de tratamentos é 27, não seria viável, em termos de
#'     controle local, ter blocos desse tamanho. Portanto, usou-se a
#'     técnica de confundimento para distribuir os 27 tratamentos em 3
#'     blocos de tamanho 9. A técnica foi usada para confundir dois
#'     graus de liberdade da interação tripla com o efeito dos blocos. O
#'     grupo de confundimento adotado foi o W.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{N}}{Níveis codificados de nitrogênio (N) que representam
#'     0, 30 e 60 kg ha\eqn{^{-1}}. A fonte do N é o sulfato de amônio
#'     (20\% de N).}
#'
#' \item{\code{P}}{Níveis codificados de fósforo (P) que representam 0,
#'     30 e 60 kg ha\eqn{^{-1}}. A fonte do P é o superfosfato simples
#'     (18\% de P\eqn{_{2}}O\eqn{_{5}}).}
#'
#' \item{\code{K}}{Níveis codificados de potássio (K) que representam 0,
#'     30 e 60 kg ha\eqn{^{-1}}. A fonte do K é o cloreto de potássio
#'     (60\% de K\eqn{_{2}}O).}
#'
#' \item{\code{bloc}}{Fator de níveis nominais que identifica os
#'     blocos.}
#'
#' \item{\code{prod}}{Variável resposta observada que é a produção de
#'     grãos de milho (kg ha\eqn{^{-1}}).}
#'
#' }
#'
#' Cada parcela foi constituída de 6 linhas de plantio com 10 metros de
#' comprimento, num total de 60 m\eqn{^{2}} e, como área útil, foram
#' consideradas as 4 linhas centrais com 8 metros de comprimento (por
#' desconsiderar 1 m em cada extremidade), perfazendo 32 m\eqn{^{2}}. O
#' híbrido de milho utilizado foi o HMD-7974.
#'
#' @keywords DBC FAT3K confundimento
#' @source BANZATTO; KRONKA (2013), Quadro 5.5.1, pág. 131.
#'
#' Vilalta, O. A. (1972). Avaliação da produção de milho (\emph{Zea
#'     mays} L.) em função da adubação NPK em um latossolo
#'     vermelho-escuro -- fase arenosa. Trabalho de Conclusão de Curso
#'     (Graduação em Agronomia). Faculdade de Ciências Agrárias e
#'     Veterinárias, Universidade Estadual Paulista, Jaboticabal, SP.
#'
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd5.5.1)
#'
#' a <- with(BanzattoQd5.5.1,
#'           tapply(X = prod, INDEX = list(N, P, K), FUN = sum))
#' addmargins(apply(a, MARGIN = c(1, 2), FUN = sum))
#' addmargins(apply(a, MARGIN = c(1, 3), FUN = sum))
#' addmargins(apply(a, MARGIN = c(2, 3), FUN = sum))
#'
#' xyplot(prod ~ factor(N) | factor(P), data = BanzattoQd5.5.1,
#'        groups = K, type = c("p", "a"), layout = c(NA, 1),
#'        auto.key = list(title = "Potássio (K)", cex.title = 1,
#'                        columns = 3),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Fósforo (P)"),
#'        xlab = "Nitrogênio (N)",
#'        ylab = expression("Produção de grãos de milho"~(ka~ha^{-1})))
#'
NULL

#' @name BanzattoQd6.2.2
#' @title Espa\enc{ç}{c}amento de Plantio na Produ\enc{çã}{ca}o de
#'     Cana-de-a\enc{çú}{cu}car
#' @description O experimento avaliou o efeito do espaçamento de plantio
#'     na produção de variedades de cana-de-açúcar. Para estudar os dois
#'     fatores, espaçamento e variedades, considerou-se o delineamento
#'     de blocos casualizados com arranjo de tratamentos de parcelas
#'     subdivididas com o espaçamento sendo casualizado dentro dos
#'     níveis de variedade.
#' @format Um \code{data.frame} com 40 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis nominais que representa as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{espac}}{Fator de níveis nominais que representa o
#'     espaçamento entre linhas para o plantio da cana-de-açúcar.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que são os blocos do
#'     experimento.}
#'
#' \item{\code{prod}}{Produção de cana-de-açúcar, em ton ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC PS
#' @source BANZATTO; KRONKA (2013), Quadro 6.2.2, pág. 138.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd6.2.2)
#'
#' str(BanzattoQd6.2.2)
#'
#' ftable(with(BanzattoQd6.2.2,
#'             tapply(prod,
#'                    list(varied = varied,
#'                         espac = espac,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(prod ~ varied, groups = espac, data = BanzattoQd6.2.2,
#'        as.table = TRUE, jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Espaçamento de cultivo",
#'                        cex.title = 1, columns = 2,
#'                        corner = c(0.85, 0.95)),
#'        xlab = "Variedades de cana-de-açúcar",
#'        ylab = expression("Produção de cana-de-açúcar"~(ton~ha^{-1})))
#'
NULL

#' @name BanzattoQd6.2.5
#' @title Fontes e Doses para Aduba\enc{çã}{ca}o Nitrogenada no Milho
#' @description Experimento que estudou a produção de milho como função
#'     de fontes e doses de adubação nitrogenada. O experimento foi
#'     instalado em delineamento de blocos casualizados com arranjo de
#'     tratamento em parcela subdividida, sendo as doses casualizadas
#'     dentro dos níveis de adubo.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{adubo}}{Fator de níveis nominais que são os adubos fontes
#'     de nitrogênio.}
#'
#' \item{\code{dose}}{Fator de níveis métricos que são as doses
#'     aplicadas, em kg de nitrogênio por hectare.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que representa os blocos
#'     do experimento.}
#'
#' \item{\code{prod}}{Produção de milho, em kg ha \eqn{^{-1}}}.
#'
#' }
#' @keywords DBC PS
#' @source BANZATTO; KRONKA (2013), Quadro 6.2.5, pág. 144.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd6.2.5)
#'
#' str(BanzattoQd6.2.5)
#'
#' ftable(with(BanzattoQd6.2.5,
#'             tapply(prod,
#'                    list(adubo = adubo,
#'                         dose = dose,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(prod ~ dose, groups = adubo, data = BanzattoQd6.2.5,
#'        as.table = TRUE, jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Adubos fontes de nitrogênio",
#'                        cex.title = 1, columns = 2),
#'        xlab = expression(
#'            "Quantidade aplicada de nitrogênio"~(kg~ha^{-1})),
#'        ylab = expression("Produção de milho"~(kg~ha^{-1})))
#'
#' xyplot(prod ~ dose | adubo, data = BanzattoQd6.2.5,
#'        as.table = TRUE, jitter.x = TRUE,
#'        xlab = expression(
#'            "Quantidade aplicada de nitrogênio"~(kg~ha^{-1})),
#'        ylab = expression("Produção de milho"~(kg~ha^{-1})),
#'        panel = function(x, y, ...){
#'            panel.xyplot(x, y, ...)
#'            m0 <- lm(y ~ poly(x, degree = 2))
#'            panel.curve(predict(m0, newdata = list(x = x)))
#'        })
#'
NULL

#' @name BanzattoQd6.3.4
#' @title \enc{É}{E}pocas de Plantio e Colheita na Produ\enc{çã}{ca}o de
#'     Beterraba
#' @description Experimento estudar o efeito de datas de plantio, épocas
#'     de colheita e aplicação de inseticidas na produção de
#'     beterraba. Os tratamentos foi arranjados em parcelas
#'     sub-subdivididas no delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 72 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{data}}{Fator de níveis ordinais que representa as datas
#'     de plantio de beterraba. Os níveis do fator data foram
#'     casualizados nas parcelas.}
#'
#' \item{\code{inset}}{Variável binária que representa a aplicação de
#'     inseticida (1) ou não (0). Este fator foi casualizado as
#'     subparcelas.}
#'
#' \item{\code{epoc}}{Fator de níveis ordinais que representa a época de
#'     colheita das beterrabas. Esse fator foi casualizado nas
#'     sub-subparcelas.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que presenta os blocos
#'     do experimento.}
#'
#' \item{\code{prod}}{Produção de beterraba. A unidade de medida não foi
#'     informada.}
#'
#' }
#' @keywords DBC PSS
#' @source BANZATTO; KRONKA (2013), Quadro 6.3.4, pág. 156.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd6.3.4)
#'
#' str(BanzattoQd6.3.4)
#'
#' ftable(with(BanzattoQd6.3.4,
#'             tapply(prod,
#'                    list(data = data,
#'                         inset = inset,
#'                         epoc = epoc,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(prod ~ epoc | data, groups = inset, data = BanzattoQd6.3.4,
#'        as.table = TRUE, layout = c(NA, 1),
#'        jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Aplicação de inseticida",
#'                        cex.title = 1, columns = 2),
#'        strip = strip.custom(var.name = "Época", strip.names = TRUE),
#'        xlab = "Ordem das datas de plantio",
#'        ylab = "Produção de beterraba")
#'
NULL

#' @name BanzattoQd6.4.2
#' @title \enc{É}{E}poca de Plantio e Aduba\enc{çã}{ca}o Nitrogenada em
#'     Beterraba
#' @description Experimento em delineamento de blocos casualizados cujos
#'     níveis dos fatores, época de plantio e nitrogênio, foram
#'     casualizados em faixas. A variável reposta observada foi a
#'     produção de beterraba.
#' @format Um \code{data.frame} com 80 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{nitro}}{Fator de níveis métricos que correspondem à
#'     quantidade de nitrogênio aplicada, em libras por acre.}
#'
#' \item{\code{epoca}}{Fator de níveis ordinais que representa as épocas
#'     de plantio de beterraba.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que identifica os
#'     blocos do experimento.}
#'
#' \item{\code{prod}}{Produção de beterraba, em toneladas por acre.}
#'
#' }
#'
#' Na figura abaixo, tem-se a organização dos 4 blocos, bem como dos
#'     níveis de época de plantio e nitrogênio em cada um deles. No
#'     bloco 1 (B1), a faixa em cinza claro horizontal indica a unidade
#'     experimental da época 4 (E4) e a faixa cinza escuro vertical a
#'     unidade experimental para o nível de nitrogênio 80 (N 80). A
#'     cédula preta é a unidade experimental da combinação dos níveis
#'     dos fatores.
#'
#' \if{html}{\figure{BanzattoQd6-4-2.png}{options: width="250px"}}
#' \if{latex}{\figure{BanzattoQd6-4-2.png}{options: width=1.75in}}
#'
#' @keywords DBC EF
#' @source BANZATTO; KRONKA (2013), Quadro 6.4.2, pág. 163.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd6.4.2)
#'
#' str(BanzattoQd6.4.2)
#'
#' ftable(with(BanzattoQd6.4.2,
#'             tapply(prod,
#'                    list(nitro = nitro,
#'                         epoca = epoca,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(prod ~ nitro, groups = epoca, data = BanzattoQd6.4.2,
#'        as.table = TRUE, layout = c(NA, 1),
#'        jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Épocas de plantio",
#'                        cex.title = 1, columns = 2),
#'        strip = strip.custom(var.name = "Época", strip.names = TRUE),
#'        xlab = expression("Doses de nitrogênio"~(libras~acre^{-1})),
#'        ylab = expression("Produção de beterraba"~(ton~acre^{-1})))
#'
NULL

#' @name BanzattoQd7.2.1
#' @title Efeito do Gesso no Peso de Gr\enc{ã}{a}os de Feij\enc{ã}{a}o
#' @description Estudo sobre o efeito do gesso no peso de grãos de
#'     feijão (\emph{Phaseolus vulgaris} L.) feito por Ragazzi (1979). O
#'     experimento foi instalado em delineamento inteiramente
#'     casualizado e foram estudados 7 níveis de gesso, de 0 a 300,
#'     igualmente espaçados em 50 kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 28 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{gesso}}{Níveis de gesso aplicados, em kg ha\eqn{^{-1}}}.
#'
#' \item{\code{rept}}{Identifica as repetições de cada dose de gesso.}
#'
#' \item{\code{peso}}{Peso de 1000 sementes de feijão, em gramas.}
#'
#' }
#' @keywords DIC RS
#' @source BANZATTO; KRONKA (2013), Quadro 7.2.1, pág. 170.
#'
#' Ragazzi, D. (1979). Efeito de doses de gesso na cultura do feijoeiro
#'     (\emph{Phaseolus vulgaris} L.). Trabalho de Conclusão de Curso
#'     (Graduação em Agronomia). Faculdade de Ciências Agrárias e
#'     Veterinárias, Universidade Estadual Paulista, Jaboticabal.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd7.2.1)
#'
#' str(BanzattoQd7.2.1)
#'
#' xyplot(peso ~ gesso, data = BanzattoQd7.2.1,
#'        type = c("p", "smooth", "g"),
#'        xlab = expression("Dose de gesso"~(kg~ha^{-1})),
#'        ylab = expression("Pesso de 1000 sementes"~(g)))
#'
NULL

#' @name BanzattoQd7.3.1
#' @title Di\enc{â}{a}metro e Altura de Tubetes na Forma\enc{çã}{ca}o de
#'     Mudas de Eucalipto
#' @description Experimento fatorial 3 \eqn{\times} 3 que avaliou o
#'     efeito das dimensões do tubete (diâmetro e altura, 3 níveis cada)
#'     na produção de mudas de eucalipto. O experimento foi instalado em
#'     delineamento de blocos casualizados e a resposta medida foi a
#'     altura das mudas 75 dias após a semeadura.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{dt}}{Diâmetro dos tubetes, em cm.}
#'
#' \item{\code{at}}{Altura dos tubetes, em cm.}
#'
#' \item{\code{bloco}}{Variável nominal que identifica os blocos do
#'     experimento.}
#'
#' \item{\code{alt}}{Altura das mudas 75 dias após a semeadura.}
#'
#' }
#' @keywords DBC FAT2
#' @source BANZATTO; KRONKA (2013), Quadro 7.3.1, pág. 177.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd7.3.1)
#'
#' str(BanzattoQd7.3.1)
#'
#' xtabs(~at + dt, data = BanzattoQd7.3.1)
#'
#' with(BanzattoQd7.3.1,
#'      addmargins(tapply(alt, list(at, dt), FUN = mean)))
#'
#' xyplot(alt ~ at, data = BanzattoQd7.3.1,
#'        groups = dt, type = c("p", "a", "g"),
#'        auto.key = list(title = "Diâmetro dos tubetes (cm)",
#'                        cex.title = 1, columns = 3),
#'        xlab = expression("Altura do tubete"~(cm)),
#'        ylab = expression("Altura das mudas"~(cm)))
#'
NULL

#' @name BanzattoQd7.3.3
#' @title Experimento Fatorial com Fatores Qualitativos e Quantitativos
#' @description Dados fictícios de um experimento fatorial duplo com um
#'     fator qualitativo e outro quantitativo. O experimento está em
#'     delineamento de blocos casualizados e a resposta é a produção da
#'     cultura.
#' @format Um \code{data.frame} com 32 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Níveis nominais do fator variedade.}
#'
#' \item{\code{adub}}{Níveis métricos do fator adubação, em kg
#'     ha\eqn{^{-1}}.}
#'
#' \item{\code{bloco}}{Níveis nominais do fator bloco.}
#'
#' \item{\code{prod}}{Produção, em ton ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC FAT2
#' @source BANZATTO; KRONKA (2013), Quadro 7.3.3, pág. 182.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd7.3.3)
#'
#' str(BanzattoQd7.3.3)
#'
#' xtabs(~adub + varied, data = BanzattoQd7.3.3)
#'
#' with(BanzattoQd7.3.3,
#'      addmargins(tapply(prod, list(adub, varied), FUN = mean)))
#'
#' xyplot(prod ~ adub, data = BanzattoQd7.3.3,
#'        groups = varied, type = c("p", "a", "g"),
#'        auto.key = list(title = "Variedades",
#'                        cex.title = 1, columns = 2),
#'        xlab = expression("Adubação"~(kg~ha^{-1})),
#'        ylab = expression("Produção"~(kg~ha^{-1})))
#'
NULL

#' @name BanzattoQd8.2.1
#' @title Grupo de Ensaios de Competi\enc{çã}{ca}o de Batata
#' @description Dados referentes a um grupo de 4 ensaios de competição
#'     de 10 cultivares de batata, realizado por Filgueira (1991) em
#'     Guaíra - SP. Os ensaios foram instalados no delineamento de
#'     blocos casualizados com 4 repetições. A variável resposta é a
#'     produção de tubérculos, em t ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 160 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de níveis categóricos que identifica o
#'     experimento (ensaio)).}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica os
#'     blocos dentro de um experimento.}
#'
#' \item{\code{cult}}{Fator de níveis categóricos que identifica as
#'     cultivares de batata.}
#'
#' \item{\code{prod}}{Produção de tubérculos, em tom ha\eqn{^{-1}}.}
#'
#' }
#' @keywords GE
#' @source BANZATTO; KRONKA (2013), Quadro 8.2.1, pág. 190.
#'
#' Filgueira, F. A. R. (1991). Interação genótipo ambiente em batata
#'     (\emph{Solanum tuberosum} L. spp \emph{tuberosum}). Tese
#'     (Doutorado em Produção Vegetal). Faculdade de Ciências Agrárias e
#'     Veterinárias, Universidade Estadual Paulista, Jaboticabal: SP.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd8.2.1)
#'
#' str(BanzattoQd8.2.1)
#'
#' ftable(xtabs(~exper + bloco + cult, data = BanzattoQd8.2.1))
#'
#' with(BanzattoQd8.2.1,
#'      addmargins(tapply(prod, list(cult, exper), FUN = mean)))
#'
#' xyplot(prod ~ cult | exper, data = BanzattoQd8.2.1,
#'        groups = bloco, type = c("p", "a", "g"), as.table = TRUE,
#'        auto.key = list(space = "right", title = "Bloco",
#'                        cex.title = 1, columns = 1),
#'        scales = list(x = list(rot = 90)),
#'        xlab = "Cultivares",
#'        ylab = expression("Produção de tubérculos"~(t~ha^{-1})))
#'
NULL

#' @name BanzattoQd8.3.1
#' @title Grupo de Ensaios de Competi\enc{çã}{ca}o de Gen\enc{ó}{o}tipos
#'     de Batata
#' @description Grupo de ensaios de competição de genótipos de batata
#'     realizado por Filgueira (1991) em Anápolis - GO. Cada experimento
#'     foi instalado em delineamento de blocos casualizados com 4
#'     repetições. A variável resposta foi a produção, em t
#'     ha\eqn{^{-1}}, de batata.
#' @format Um \code{data.frame} com 40 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de níveis categóricos que identifica o
#'     experimento.}
#'
#' \item{\code{genot}}{Fator de níveis categóricos que identifica os
#'     genótipos de batata.}
#'
#' \item{\code{prod}}{Produção total de batata resultante da soma dos
#'     valores observados nos 4 blocos de cada experimento, em t
#'     ha\eqn{^{-1}}.}
#'
#' }
#'
#' Esse \code{data.frame} não possuí o valor individual de cada parcelas
#'     mas sim a soma do valor (total) nas parcelas de um mesmo genótipo
#'     em cada um dos experimentos. As estimativas dos quadrados médios
#'     residuais em cada experimento estão disponíveis no atributo
#'     \code{"qmr"} do objeto.
#' @keywords GE
#' @source BANZATTO; KRONKA (2013), Quadro 8.3.1, pág. 196.
#'
#' Filgueira, F. A. R. (1991). Interação genótipo ambiente em batata
#'     (\emph{Solanum tuberosum} L. spp \emph{tuberosum}). Tese
#'     (Doutorado em Produção Vegetal). Faculdade de Ciências Agrárias e
#'     Veterinárias, Universidade Estadual Paulista, Jaboticabal: SP.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd8.3.1)
#'
#' str(BanzattoQd8.3.1)
#'
#' attr(x = BanzattoQd8.3.1, which = "qmr")
#'
#' with(BanzattoQd8.3.1,
#'      addmargins(tapply(prod, list(genot, exper), FUN = mean)))
#'
#' xyplot(prod ~ genot, groups = exper, data = BanzattoQd8.3.1,
#'        type = c("p", "a", "g"),
#'        auto.key = list(title = "Experimento",
#'                        cex.title = 1, columns = 4),
#'        scales = list(x = list(rot = 90)),
#'        xlab = "Genótipos",
#'        ylab = expression(
#'            "Produção total de tubérculos de 4 parcelas"~(t~ha^{-1})))
#'
NULL

#' @name BanzattoQd8.4.1
#' @title Grupo de Ensaios de Competi\enc{çã}{ca}o de Gen\enc{ó}{o}tipos
#'     de Cebola
#' @description Grupo de experimentos de competição de genótipos de
#'     cebola realizado por Santos (2003). O delineamento considerado em
#'     cada ensaio não foi informado.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de níveis categóricos que representa os
#'     experimentos.}
#'
#' \item{\code{genot}}{Fator de níveis categóricos que representa os
#'     genótipos de cebola.}
#'
#' \item{\code{prod}}{Produção média de bulbos dos genótipos em cada
#'     experimento (média das repetições), em t ha\eqn{^{-1}}.}
#'
#' }
#' @keywords GE
#' @source BANZATTO; KRONKA (2013), Quadro 8.4.1, pág. 200.
#'
#' Santos, G. M. (2003). Adaptabilidade e estabilidade de genótipos de
#'     cebola. Tese (Doutorado em Genética e Melhoramento de
#'     Plantas). Faculdade de Ciências Agrárias e Veterinárias,
#'     Universidade Estadual Paulista, Jaboticabal: SP.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd8.4.1)
#'
#' str(BanzattoQd8.4.1)
#'
#' with(BanzattoQd8.4.1,
#'      addmargins(tapply(prod, list(genot, exper), FUN = mean)))
#'
#' xyplot(prod ~ genot, groups = exper, data = BanzattoQd8.4.1,
#'        type = c("p", "a", "g"),
#'        auto.key = list(title = "Experimento",
#'                        cex.title = 1, columns = 3),
#'        scales = list(x = list(rot = 90)),
#'        xlab = "Genótipos de cebola",
#'        ylab = expression(
#'            "Produção média de bulbos"~(t~ha^{-1})))
#'
NULL

#' @name BanzattoQd8.4.3
#' @title Grupo de Experimentos de Aduba\enc{çã}{ca}o Nitrogenada em
#'     Milho
#' @description Dados referentes à produção de milho em grãos de ensaios
#'     fatoriais \eqn{3^3} de adubação NPK na cultura do milho. Os
#'     experimentos foram realizados em 8 locais. O delineamento
#'     experimental não foi informado.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{local}}{Fator de níveis categóricos que identifica os
#'     locais onde foram instalados os experimentos.}
#'
#' \item{\code{nitro}}{Nível de nitrogênio fornecido na adubação. A
#'     escala de medida dos níveis originais não foi informada. Os
#'     níveis foram representados por inteiros (0, 1 e 2), o que sugere
#'     que são equidistantes na escala original.}
#'
#' \item{\code{prod}}{Produção média de grãos de milho (média das
#'     repetições em cada experimento), em kg ha\eqn{^{-1}}.}
#'
#' }
#'
#' O \code{data.frame} possui um atributo com os quadrados médios
#'     residuais em cada experimento.
#' @keywords GE
#' @source BANZATTO; KRONKA (2013), Quadro 8.4.3, pág. 202.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd8.4.3)
#'
#' str(BanzattoQd8.4.3)
#'
#' with(BanzattoQd8.4.3,
#'      addmargins(tapply(prod, list(local, nitro), FUN = mean)))
#'
#' xyplot(prod ~ nitro, groups = local, data = BanzattoQd8.4.3,
#'        type = "o",
#'        auto.key = list(title = "Local",
#'                        cex.title = 1, columns = 2),
#'        xlab = "Níveis de nitrogênio",
#'        ylab = expression(
#'            "Produção média de grãos de milho"~(kg~ha^{-1})))
#'
NULL

#' @name BanzattoQd9.2.1
#' @title Produ\enc{çã}{ca}o de Variedades de Milho
#' @description Resultados de um experimento para avaliação da produção
#'     de cultivares de milho. O experimento foi instalado em
#'     delineamento de blocos casualizados. Além da produção em cada
#'     parcela, contou-se o número de plantas por parcela (stand)
#' @format Um \code{data.frame} com 24 observações e 6 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis categóricos que representa as
#'     variedades de milho.}
#'
#' \item{\code{A}}{Fator de níveis categóricos que representa os níveis
#'     de um fator fictício A.}
#'
#' \item{\code{B}}{Fator de níveis categóricos que representa os níveis
#'     de um fator fictício B.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que indica os blocos
#'     do experimento.}
#'
#' \item{\code{nppp}}{Número de plantas por parcela.}
#'
#' \item{\code{prod}}{Produção de milho (g) por parcela.}
#'
#' }
#'
#' Os fatores A e B são fictícios pois foram criados apenas para
#'     demonstrar como fazer a análise caso o experimento fosse um
#'     fatorial 3 \eqn{\times} 2 ao invés de ter um único fator de 6
#'     níveis.
#'
#' @keywords DBC COV
#' @source BANZATTO; KRONKA (2013), Quadro 9.2.1, pág. 206.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd9.2.1)
#'
#' str(BanzattoQd9.2.1)
#'
#' xyplot(prod ~ varied, data = BanzattoQd9.2.1,
#'        groups = bloco, type = c("p", "a", "g"), as.table = TRUE,
#'        cex = with(BanzattoQd9.2.1,
#'                   0.5 + (nppp - min(nppp))/diff(range(nppp))),
#'        auto.key = list(space = "right", title = "Bloco",
#'                        cex.title = 1, columns = 1),
#'        xlab = "Variedades de milho",
#'        ylab = expression("Produção"~(g~parcela^{-1})))
#'
NULL
