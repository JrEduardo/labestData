#' @name FariaEg2.9.5
#' @title Varia\enc{çã}{ca}o de M\enc{é}{e}todos para a Determina\enc{çã}{ca}o da CTC do Solo
#' @description Dois métodos de CTC do solo são usados em uma amostra de
#'     controle e fornecem os resultados em cmol kg\eqn{^{-1}}.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{metod}}{Fator que identifica os métodos para a
#'     determinação aplicados nas amostras de solo.}
#'
#' \item{\code{ctc}}{CTC da amostra de solo, em cmol kg\eqn{^{-1}}.}
#'
#' }
#' @keywords ASS
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Exemplo 2.9.5, pág 39)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaEg2.9.5)
#' str(FariaEg2.9.5)
#'
#' aggregate(ctc ~ metod, data = FariaEg2.9.5,
#'           FUN = function(x) {
#'               c(media = mean(x), variancia = var(x))
#'           })
#'
#' xyplot(ctc ~ metod, data = FariaEg2.9.5)
#'
NULL

#' @name FariaEg3.2.4
#' @title Produ\enc{çã}{ca}o de Am\enc{ê}{e}ndoas de Clones de Cacau
#' @description Experimento em delineamento inteiramente casualizado que
#'     estudou a produção de amendoas de clones de cacau.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator categórico que representam os clones de
#'     cacau.}
#'
#' \item{\code{rept}}{Inteiro que indica a repetição de cada clone.}
#'
#' \item{\code{prod}}{Produção de amendoas, em kg 10 plantas\eqn{{-1}}
#'     ano\eqn{{-1}}.}
#'
#' }
#' @keywords DIC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus, BA: UESC. (Tabela 3.2.4, pág 46)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaEg3.2.4)
#' str(FariaEg3.2.4)
#'
#' unstack(x = FariaEg3.2.4, form = prod ~ clone)
#'
#' xyplot(prod ~ clone, data = FariaEg3.2.4,
#'        ylab = expression("Produção"~
#'                              (kg~10~plantas^{-1}~ano^{-1})),
#'        xlab = "Clones de cacau")
#'
NULL

#' @name FariaQd11.4
#' @title Produ\enc{çã}{ca}o de Batatas em Fun\enc{çã}{ca}o da Calagem e Aduba\enc{çã}{ca}o
#' @description Experimento montado em delineamento inteiramente
#'     casualizado para estudar o efeito da combibação dos fatores
#'     irrigação e calagem da produção de batata.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{irri}}{Fator categórico que indica o uso ou não de
#'     irrigação para o cultivo da batata.}
#'
#' \item{\code{calc}}{Fator categórico que indica o uso ou não de
#'     calagem para o cultivo da batata.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições das
#'     combinações dos fatores acima mencionados.}
#'
#' \item{\code{result}}{Produção de batata, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC FAT2
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Quadro 11.4, pág. 134)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd11.4)
#' str(FariaQd11.4)
#'
#' xtabs(~irri + calc, data = FariaQd11.4)
#'
#' xyplot(prod ~ factor(irri), groups = calc, data = FariaQd11.4,
#'        type = c("p", "a"),
#'        xlab = "Uso de irrigação",
#'        ylab = expression("Produção de batata"~(kg~parcela^{-1})),
#'        auto.key = list(title = "Use de calagem", cex.title = 1.1,
#'                        columns = 2))
#'
NULL

#' @name FariaQd11.9
#' @title Qualidade de Mudas em Fun\enc{çã}{ca}o do Recipiente da Esp\enc{é}{e}cie
#' @description Experimento montado no delineamento inteiramente
#'     casualizado cujo resultado é a qualidade de mudas em função do
#'     recipiente utilizado e para cada espécie cultiavda.
#' @format Um \code{data.frame} com 12 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{recip}}{Fator categórico cujos níveis representam os
#'     recipientes utilizados para o cultivo das mudas.}
#'
#' \item{\code{espécie}}{Fator categórico cujos níveis representam as
#'     espécies cultivadas.}
#'
#' \item{\code{rept}}{Inteiro que indica as repetições das combinações
#'     dos fatores.}
#'
#' \item{\code{quali}}{Resposta correspondente à qualidade das mudas.}
#'
#' }
#' @keywords DIC FAT2
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Quadro 11.9, pág 145)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd11.9)
#' str(FariaQd11.9)
#'
#' xtabs(~recip + espec, data = FariaQd11.9)
#' with(FariaQd11.9, tapply(quali, list(recip, espec), FUN = sum))
#'
#' xyplot(quali ~ recip, groups = espec, data = FariaQd11.9,
#'        type = c("p", "a"),
#'        xlab = "Recipientes", ylab = "Qualidade da muda",
#'        auto.key = list(title = "Espécie", cex.title = 1.1,
#'                        columns = 2))
#'
NULL

#' @name FariaQd12.5
#' @title Coloniza\enc{çã}{ca}o do TVC em Vassoura-de-bruxa
#' @description Os dados referem-se a contagem da colonização de um
#'     antagonista (\emph{trichoderma} - TVC) aplicado sobre as
#'     vassouras-de-bruxa de uma cultura de cacau no Município de
#'     Ibatuma - BA em em 2000. Foram consideradas 3 intervalos de
#'     aplicação e as avaliações foram feitas em 3 tempos. O experimento
#'     foi instaldo em delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{aplic}}{Fator métrico que representa o número de
#'     aplicações pois os intervalos entre aplicação do antagonista
#'     foram: de 15 em 15 dias (0, 15, 30, 45, 60), de 30 em 30 dias (0,
#'     30, 60) e testemunha, que não recebeu nenhuma aplicação.}
#'
#' \item{\code{avali}}{Fator métrico que representa as datas das
#'     avaliações, em dias após o início das aplicações de TVC (dia 0).}
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos do
#'     experimento.}
#'
#' \item{\code{colon}}{Colonização (\%) do TVC em vassouras-de-bruxa.}
#'
#' }
#'
#' As parcelas da testemunha, que não receberam aplicação de TVC,
#'     exibiram um valor 0 para a colonização das vassouras-de-bruxa.
#' @keywords DBC PS
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. ( Quadro 12.5, pág. 159)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd12.5)
#' str(FariaQd12.5)
#'
#' xtabs(~aplic + avali, data = FariaQd12.5)
#'
#' xyplot(colon ~ aplic, data = FariaQd12.5,
#'        groups = avali, type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Número de aplicações equiespaçadas em 60 dias",
#'        ylab = "Colonização de TVC em vassouras-de-bruxa (%)",
#'        auto.key = list(title = "Dias após início das aplicações",
#'                        cex.title = 1.1, columns = 3))
#'
NULL

#' @name FariaQd14.2
#' @title Aduba\enc{çã}{ca}o Nitrogenada na Produ\enc{çã}{ca}o de Milho
#' @description Os dados abaixo são provenientes de um ensaio em que
#'     foram utilizadas 7 doses de nitrogênio aplicado em cobertura para
#'     avaliar a produtividade de milho. O experimento foi montado em
#'     delineamento inteiramente casualizado, com 5 repetições.
#' @format Um \code{data.frame} com 35 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{N}}{Fator métrico que é a dose de nitrogênio aplicado em
#'     cobertura, kg ha\eqn{^{-1}}.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições das doses.}
#'
#' \item{\code{result}}{Produção de milho, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC RL
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Quadro 14.2 pág. 198)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd14.2)
#' str(FariaQd14.2)
#'
#' aggregate(prod ~ N, data = FariaQd14.2, FUN = mean)
#'
#' xyplot(prod ~ N, data = FariaQd14.2,
#'        jitter.x = TRUE, type = c("p", "smooth"))
#'
NULL

#' @name FariaQd14.3
#' @title Aduba\enc{çã}{ca}o com F\enc{ó}{o}sforo na Produ\enc{çã}{ca}o de Mat\enc{é}{e}ria Seca de Parte
#'     A\enc{é}{e}rea de Milho
#' @description Os dados abaixo são provenientes de um ensaio
#'     experimental realizado em casa de vegetação, montado no
#'     delineamento em blocos casualizados, com 5 repetições, para
#'     avaliar o efeito de doses de fósforo na produção de matéria seca
#'     da parte aérea do milho.
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{P}}{Fator métrico que representa as doses de fósforo (mg
#'     kg\eqn{^{-1}}).}
#'
#' \item{\code{bloco}}{Fator que representa os blocos dentro da casa de
#'     vegetação.}
#'
#' \item{\code{mspa}}{Massa da matéria seca da parte aérea das
#'     plantas de milho, g vaso\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Quadro 14.3 pág. 200)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd14.3)
#' str(FariaQd14.3)
#'
#' aggregate(mspa ~ P, data = FariaQd14.3, FUN = mean)
#'
#' xyplot(mspa ~ P, data = FariaQd14.3,
#'        groups = bloc, type = "o")
#'
NULL

#' @name FariaQd6.1
#' @title Produ\enc{çã}{ca}o de Variedades de Milho
#' @description Produção de milho, em kg 100 m\eqn{^2} em um experimento
#'     conduzido no delineamento inteiramente casualizado com 5
#'     repetições, onde foram avaliadas quatro variedades de milho.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator categórico que representa as variedades de
#'     milho.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições de cada
#'     variedade.}
#'
#' \item{\code{prod}}{Produção de milho, em kg por 100 m\eqn{^2}.}
#'
#' }
#' @keywords DIC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus, BA: UESC. (Tabela 6.1 pág 76)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd6.1)
#' str(FariaQd6.1)
#'
#' xyplot(prod ~ varied, data = FariaQd6.1)
#'
NULL

