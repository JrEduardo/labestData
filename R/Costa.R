#' @name CostaEx5.7.2
#' @title Densidade do Solo ao Longo do Perfil em Zonas de
#'     Compacta\enc{çã}{ca}o
#' @description Os dados são resultados de um estudo feito em zonas de
#'     compactação e referem-se a valores de densidade do solo em
#'     amostras retiradas de diferentes profundidades no perfil do solo.
#' @format Um \code{data.frame} com 10 observações e 2 variáveis.
#'
#' \describe{
#'
#' \item{\code{prof}}{Variável métrica que representa a profundidade
#'     (cm), no perfil do solo, de onde a amostra de solo foi retirada.}
#'
#' \item{\code{dens}}{Densidade do solo (g cm\eqn{^{-3}}) determinada na
#'     amostra retirada do perfil do solo.}
#'
#' }
#' @keywords RL
#' @source Costa (2013), Exemplo 5.7.2.1, pág. 90.
#' @examples
#'
#' library(lattice)
#'
#' data(CostaEx5.7.2)
#'
#' str(CostaEx5.7.2)
#'
#' xyplot(dens ~ prof, data = CostaEx5.7.2,
#'        type = c("p", "smooth", "g"),
#'        xlab = expression("Profundidade"~(cm)),
#'        ylab = expression("Densidade do solo"~(g~cm^{-3})))
#'
NULL

#' @name CostaEx5.7.3
#' @title Efeito de Aduba\enc{çã}{ca}o Nitrogenada na Cultura do Milho
#' @description Experimento instalado em delineamento inteiramente
#'     casualizado que mediu o efeito da adubação nitrogenada na
#'     produção de milho.
#' @format Um \code{data.frame} com 15 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{dose}}{Quantidade aplicada de adubação nitrogenada (kg
#'     ha\eqn{^{-1}})}
#'
#' \item{\code{rept}}{Identifica as repetições de cada dose.}
#'
#' \item{\code{prod}}{Produção de milho (ton ha\eqn{^{-1}}).}
#'
#' }
#' @keywords DIC RegSeg
#' @source Costa (2013), Exemplo 5.7.3.1, pág. 95.
#' @examples
#'
#' library(lattice)
#'
#' data(CostaEx5.7.3)
#'
#' str(CostaEx5.7.3)
#'
#' xyplot(prod ~ dose, data = CostaEx5.7.3,
#'        type = c("p", "smooth", "g"),
#'        xlab = expression("Dose de nitrogênio"~(kg~ha^{-1})),
#'        ylab = expression("Produção de milho"~(ton~ha^{-1})))
#'
NULL

#' @name CostaTb4
#' @title Massa Seca de Parte A\enc{é}{e}rea em Cana-de-a\enc{çú}{cu}car
#' @description Resultados de um experimento conduzido em casa de
#'     vegetação em delineamento inteiramente casualizado para avaliar a
#'     massa seca de parte aérea de variedades de cana-de-açúcar. A
#'     unidade experimental (parcela) era um vaso com 3 plantas.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator nominal. Variedades de cana-de-açúcar.}
#'
#' \item{\code{rept}}{Inteiro que representa a unidade experimental em
#'     cada variedade.}
#'
#' \item{\code{mspa}}{Variável resposta observada (contínua) que é a
#'     massa seca de parte aérea de cada unidade experimental (g
#'     parcela\eqn{^{-1}})}
#'
#' }
#' @keywords DIC
#' @source Costa (2013), Tabela 4, pág. 58.
#' @examples
#'
#' library(lattice)
#'
#' data(CostaTb4)
#'
#' aggregate(mspa ~ varied,  data = CostaTb4,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(mspa ~ varied, data = CostaTb4,
#'        xlab = "Variedade de cana-de-açúcar",
#'        ylab = expression(Massa~seca~de~parte~aérea~(g~parcela^{-1})))
#'
NULL

#' @name CostaTb6
#' @title Efeito da Cobertura Morta no Peso Seco de Br\enc{ó}{o}colis
#' @description Experimento instalado em delineamento de blocos
#'     casualizados para estudar o efeito de tipos de cobertura morta no
#'     peso seco de brócolis.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis.
#' \describe{
#'
#' \item{\code{cobert}}{Fator nominal com níveis de cobertura morta
#'     aplicada sobre o solo onde foi cultivado o brócolis: cobertura
#'     com sorgo, com crotalária, com milheto e com a vegetação
#'     espontânea.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais considerado para
#'     controle local, possivelmente os canteiros da horta, com 5
#'     níveis.}
#'
#' \item{\code{peso}}{Variável resposta contínua, peso seco (g
#'     parcela\eqn{^{-1}}) de brócolis.}
#'
#' }
#' @keywords DBC
#' @source Costa (2013), Tabela 6 pág. 63.
#' @examples
#'
#' library(lattice)
#'
#' data(CostaTb6)
#'
#' with(CostaTb6, addmargins(tapply(X = peso,
#'                                  INDEX = list(bloco, cobert),
#'                                  FUN = sum)))
#'
#' xyplot(peso ~ cobert, data = CostaTb6,
#'        groups = bloco, type = "b",
#'        xlab = "Tipos de cobertura do solo",
#'        ylab = expression("Peso seco de brócolis"~(g~parcela^{-1})),
#'        auto.key = list(corner = c(0.1, 0.1), columns = 2,
#'                        title = "Blocos", cex.title = 1))
#'
NULL

#' @name CostaTb7
#' @title Tipos de Inoculantes em Variedades de Cana-de-a\enc{çú}{cu}car
#' @description Experimento fatorial que avaliou o peso do colmo de duas
#'     variedades de cana-de-açúcar em resposta a três inoculantes
#'     aplicados.
#' @format Um \code{data.frame} com 24 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis nominais que representa as
#'     cultivares de cana-de-açúcar.}
#'
#' \item{\code{inocu}}{Fator de níveis nominais que representa os
#'     inoculantes aplicados. Possivelmente são inóculos de bactérias
#'     para fixação de nitrogênio.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que são os blocos do
#'     experimento.}
#'
#' \item{\code{peso}}{Variável resposta contínua que é o peso de colmos,
#'     em ton ha^{^{-1}}.}
#'
#' }
#' @keywords DBC FAT2
#' @source Costa (2013), Tabela 7, pág. 68.
#' @examples
#'
#' library(lattice)
#'
#' data(CostaTb7)
#'
#' str(CostaTb7)
#'
#' ftable(with(CostaTb7,
#'             tapply(peso,
#'                    list(varied = varied,
#'                         inocu = inocu,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(peso ~ inocu, groups = varied, data = CostaTb7,
#'        as.table = TRUE, layout = c(NA, 1),
#'        jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Variedade de cana-de-açúcar",
#'                        cex.title = 1, columns = 2),
#'        xlab = "Tipo de inoculante",
#'        ylab = expression("Peso de colmo"~(ton~ha^{-1})))
#'
NULL

#' @name CostaTb8
#' @title Irriga\enc{çã}{ca}o no Tamanho de Frutos de Variedades de
#'     Banana
#' @description Experimento em parcelas subdivididas que estudou o
#'     comprimento de frutos de variedades de banana em função do nível
#'     de irrigação fornecido.
#' @format Um \code{data.frame} com 32 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis nominais que representa as
#'     variedades de banana. As variedade de banana é o fator com níveis
#'     casualizados nas parcelas dentro dos blocos.}
#'
#' \item{\code{irrig}}{Fator de níveis número que indica o número de
#'     linhas de irrigação recebidas pelas plantas, 1 ou 2 linhas. A
#'     irrigação é o fator casualizado depois das variedades e dentro
#'     das parcelas que são de alguma das variedades. Portato, é o fator
#'     com níveis nas subparcelas.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que representam os
#'     blocos do experimento.}
#'
#' \item{\code{comp}}{Comprimento (cm) do fruto central da terceira
#'     penca do cacho de bananas.}
#'
#' }
#' @keywords DBC PS
#' @source Costa (2013), Tabela 8, pág. 76.
#' @examples
#'
#' library(lattice)
#'
#' data(CostaTb8)
#'
#' str(CostaTb8)
#'
#' ftable(with(CostaTb8,
#'             tapply(comp,
#'                    list(varied = varied,
#'                         irrig = irrig,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(comp ~ varied, groups = irrig, data = CostaTb8,
#'        as.table = TRUE, layout = c(NA, 1),
#'        jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Linhas de irrigação",
#'                        cex.title = 1, columns = 2),
#'        xlab = "Variedade de banana",
#'        ylab = expression("Comprimento do fruto"~(cm)))
#'
NULL
