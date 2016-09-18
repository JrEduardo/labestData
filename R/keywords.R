#' @name keywords
#' @title Keywords para Classificar os Conjuntos de Dados
#' @description As keywords servem para classificar os conjuntos de
#'     dados por características que definem, geralmente, o tipo de
#'     análise a ser aplicada aos dados. Isso orienta os estudantes e
#'     professores a escolherem os conjuntos de dados para listas de
#'     exercício, por exemplo.
#' @format Um \code{data.frame} com 596 observações e 2 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{name}}{Nome do conjunto de dados no pacote labestData.}
#'
#' \item{\code{keyword}}{Keyword atribuída ao conjunto de dados.}
#'
#' }
#' @details As keywords estão organizadas por tema e estão descritas nas
#'     tabelas abaixo.
#'
#' \describe{
#'
#'     \item{Técnicas multivariadas}{
#'     \tabular{ll}{
#'       AnaCorCan  \tab  Análise de correlação canônica    \cr
#'       AnaAgrup   \tab  Análise de agrupamento            \cr
#'       AnaComPrin \tab  Análise de componentes principais \cr
#'       AnaDisc    \tab  Análise discriminante             \cr
#'       AnaFat     \tab  Análise fatorial                  \cr
#'       manova     \tab  Análise de variância multivariada
#'     }
#'     }
#'     \item{Área da Estatística}{
#'     \tabular{ll}{
#'       TODO          \tab  Keywords a ser atribuída                  \cr
#'       AAS           \tab  Amostra aleatória simples                 \cr
#'       AASM          \tab  Amostra aleatória simples multivariada    \cr
#'       AASI          \tab  Amostras aleatórias simples independentes \cr
#'       AASP          \tab  Amostras aleatórias simples pareadas      \cr
#'       contingência  \tab  Tabela de contingência                    \cr
#'       CEQ           \tab  Controle estatístico da qualidade         \cr
#'       TS            \tab  Séries temporais                          \cr
#'       sensorial     \tab  Análise sensorial                         \cr
#'       sobrevivência \tab  Análise de sobrevivência
#'     }
#'     }
#'     \item{Tipo de resposta}{
#'     \tabular{ll}{
#'       binário   \tab  Resposta do tipo binária (dicotômica)\cr
#'       binomial  \tab  Resposta do tipo binomial            \cr
#'       contagem  \tab  Resposta do tipo contagem            \cr
#'       proporção \tab  Resposta do tipo proporção           \cr
#'       unitário  \tab  Resposta no intervalo unitário
#'     }
#'     }
#'     \item{Estrutura do dado}{
#'     \tabular{ll}{
#'       DIC           \tab  Delineamento inteiramente casualizado                   \cr
#'       DBC           \tab  Delineamento em blocos casualizados completos           \cr
#'       DQL           \tab  Delineamento quadrado latino                            \cr
#'       DBI           \tab  Delineamento em blocos casualizados incompletos         \cr
#'       BAF           \tab  Delineamento de blocos aumentados de Federer            \cr
#'       LAT           \tab  Experimento em látice                                   \cr
#'       RET           \tab  Experimento em delineamento reticulado                  \cr
#'       FAT2          \tab  Experimento fatorial duplo                              \cr
#'       FAT3          \tab  Experimento fatorial triplo                             \cr
#'       FAT2K         \tab  Experimento fatorial de K fatores com 2 níveis          \cr
#'       FAT3K         \tab  Experimento fatorial de K fatores com 3 níveis          \cr
#'       FATADI        \tab  Experimento fatorial com tratamento(s) adicionai(s)     \cr
#'       ClaHier       \tab  Classificação hierárquica de fatores                    \cr
#'       FRAC          \tab  Experimento fatorial fracionado                         \cr
#'       PS            \tab  Experimento em parcela subdividida                      \cr
#'       PSS           \tab  Experimento em parcela subsubdividida                   \cr
#'       EF            \tab  Experimento em faixas                                   \cr
#'       GE            \tab  Grupo de experimentos                                   \cr
#'       COV           \tab  Análise de covariância                                  \cr
#'       ER            \tab  Ensaio de reversão                                      \cr
#'       dialelo       \tab  Experimento de cruzamento dialelo                       \cr
#'       desbalanceado \tab  Experimento desbalanceado                               \cr
#'       contrastes    \tab  Fator com níveis para aplicação de contrastes planejados\cr
#'       confundimento \tab  Experimento com confundimento de efeitos                \cr
#'       replicata     \tab  Experimento com amostra dentro de parcela               \cr
#'       incompleto    \tab  Experimento fatorial de cruzamento incompleto           \cr
#'       longitudinal  \tab  Dados com estrutura longitudinal
#'     }
#'     }
#'     \item{Modelo de regressão}{
#'     \tabular{ll}{
#'       MLG       \tab  Modelo linear generalizado          \cr
#'       RS        \tab  Regressão linear simples            \cr
#'       RM        \tab  Regressão múltipla                  \cr
#'       RNL       \tab  Regressão não linear                \cr
#'       dummy     \tab  Variáveis categóricas para regressão\cr
#'       heterovar \tab  Variância heterogênea
#'     }
#'     }
#'
#' }
#'
#' @examples
#'
#' data(keywords)
#' str(keywords)
#'
#' library(lattice)
#'
#' tb <- table(keywords$keyword)
#'
#' barchart(sort(tb),
#'          ylab = "Keyword",
#'          xlab = "Frequência absoluta")
#'
#' subset(keywords, keyword == c("DBI"))
#' subset(keywords, keyword %in% c("proporção", "contagem"))
#'
NULL
