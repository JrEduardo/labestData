#' @name PaulaEg4.3.6
#' @title Aus\enc{ê}{e}ncia Escolar de Estudantes Australianos
#' @description Dados provenientes de um estudo sociológico desenvolvido
#'     na Austrália com 146 estudantes de 8ª série e ensino médio. Nesse
#'     estudo avaliou-se a ausência escolar (contagem de dias ausentes)
#'     com o objetivo de avaliar sua relaçao com etnia, sexo, ano que
#'     o aluno está cursando e desempenho escolar.
#' @format Um \code{data.frame} com 146 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{etnia}}{Fator com dois níveis que indica se o aluno é
#'     aborígene da própria região (A) ou não aborígene (N).}
#' 
#' \item{\code{sexo}}{Fator com dois níveis que indica o sexo do
#'     aluno: masculino (M) ou feminino (F).}
#' 
#' \item{\code{ano}}{Fator com quatro níveis que indica o ano que o aluno
#'     está cursando: 8ª série (F0), 1º ano do ensino médio (F1), 2º ano
#'     do ensino médio (F2) ou 3º ano do ensino médio (F3).}
#' 
#' \item{\code{desemp}}{Fator com dois níveis que indica o desempenho do
#'     aluno: baixo (SL) ou normal (AL).}
#' 
#' \item{\code{ndias}}{Número de dias ausentes no ano letivo.}
#' 
#' }
#' @keywords contagem superdispersão
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 4.3.6, pág. 312)
#'
#' @references Venables, W. N., Ripley, B. D. (1999). Modern Applied
#'     Statistics with S-Plus (3rd ed.). Springer, New York.
#' @examples
#'
#' data(PaulaEg4.3.6)
#' 
#' str(PaulaEg4.3.6)
#' 
#' # Número de observações em cada combinação. Para modelagem não será
#' # possível a estimação de algumas interações
#' ftable(PaulaEg4.3.6[, -5])
#' 
#' # Ausência escolar seccionadas pelas variáveis explicativas
#' xtabs(ndias ~ ., data = PaulaEg4.3.6)
#' 
#' # Relação média-variância
#' aggregate(ndias ~ ., FUN = function(x) c(mean(x), var(x)),
#'           data = PaulaEg4.3.6)
#' 
#' library(latticeExtra)
#' fl1 <- c("Aborígene", "Não Aborígene")
#' fl2 <- c("Feminino", "Masculino")
#' useOuterStrips(
#'     xyplot(ndias ~ ano | etnia + sexo,
#'            groups = desemp,
#'            data = PaulaEg4.3.6,
#'            type = c("p", "a", "g"),
#'            ylab = 'Número de dias ausente',
#'            auto.key = list(
#'                columns = 2, cex.title = 1,
#'                title = "Desempenho escolar")),
#'     strip = strip.custom(factor.levels = fl1),
#'     strip.left = strip.custom(factor.levels = fl2))
#'
NULL
