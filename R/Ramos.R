#' @name RamosAnC1
#' @title Temperatura do \enc{Ó}{O}leo de Misturadores
#' @description Conjunto de dados da temperatura do óleo de
#'     misturadores, com 25 amostras de tamanho 8 de um processo
#'     metalúrgico.
#' @format Um \code{data.frame} com 200 observações e 2 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{oleo}}{Temperatura ddo óleo (em \eqn{^\circ}C).}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 133.
#' @examples
#'
#' data(RamosAnC1)
#' str(RamosAnC1)
#'
#' library(qcc)
#'
#' obj <- qcc.groups(RamosAnC1$oleo, RamosAnC1$amostra)
#'
#' qcc(obj, type = "xbar", nsigmas = 3,
#'     xlab = "Amostra", ylab = "Temperatura média",
#'     title = "")
#'
NULL

#' @name RamosAnC2
#' @title Teor de S\enc{ó}{o}dio em um Processo Qu\enc{í}{i}mico
#' @description Conjunto de dados do teor de sódio (Na) em 25 amostras
#'     de tamanho 5 de um processo químico.
#' @format Um \code{data.frame} com 125 observações e 2 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{sodio}}{Teor do sódio.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 134.
#' @examples
#'
#' data(RamosAnC2)
#'
#' library(qcc)
#'
#' obj <- qcc.groups(RamosAnC2$sodio, RamosAnC2$amostra)
#'
#' qcc(obj, type = "xbar", nsigmas = 3,
#'     ylab = "Média amostral", xlab = "Amostra", title = "")
#'
NULL

#' @name RamosAnC4
#' @title Processo Produtivo de Canetas
#' @description Conjunto de dados de um processo produtivo
#'     de canetas, com 34 amostras de tamanhos diferentes.
#' @format Um \code{data.frame} com 34 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{tamamostra}}{Tamanho da amostra.}
#'
#' \item{\code{naoconf}}{Número de canetas não conformes na amostra.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 135.
#' @examples
#'
#' data(RamosAnC4)
#'
#' library(qcc)
#'
#' qcc(RamosAnC4$naoconf,
#'     sizes = RamosAnC4$tamamostra,
#'     type = "p",
#'     xlab = "Amostra",
#'     ylab = "Número de canetas não conformes",
#'     title = "")
#'
NULL

#' @name RamosAnC6
#' @title Processo de Fabrica\enc{çã}{ca}o de Panelas
#' @description Conjunto de dados de um processo de fabricação de
#'     panelas, com 30 amostras com tamanhos diferentes.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{tamamostra}}{Tamanho da amostra de panelas avaliadas.}
#'
#' \item{\code{naoconf}}{Número de não conformidades nas panelas.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 136.
#' @examples
#'
#' data(RamosAnC6)
#'
#' library(qcc)
#'
#' qcc(RamosAnC6$naoconf, sizes = RamosAnC6$tamamostra, type = "u",
#'     ylim = c(0,2.5), xlab = "Amostra", ylab = "Número de não
#'     conformidades em panelas", title = "")
#'
#'
NULL

#' @name RamosAnC7
#' @title Processo Qu\enc{í}{i}mico
#' @description Conjunto de dados de um processo químico com o pH da
#'     água, e pH do cloreto de potássio em 30 amostras de tamanho 1.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{phagua}}{pH da água.}
#'
#' \item{\code{phclore}}{pH do cloreto de potássio.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 137.
#' @examples
#'
#' data(RamosAnC7)
#'
#' library(qcc)
#'
#' qcc(RamosAnC7$phagua, type="xbar.one",
#'     xlab = "Amostra", ylab = "Ph da água",
#'     title = "")
#'
#' qcc(RamosAnC7$phclore, type="xbar.one",
#'     xlab = "Amostra", ylab = "Ph do cloreto",
#'     title = "")
#'
NULL

#' @name RamosAnC8
#' @title Teor de Elementos Qu\enc{í}{i}micos
#' @description Conjunto de dados de teor de elementos químicos
#'     resultantes de análises de laboratório em 30 amostras unitárias.
#' @format Um \code{data.frame} com 30 observações e 8 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{magnes}}{Teor do magnésio.}
#'
#' \item{\code{ferro}}{Teor do ferro.}
#'
#' \item{\code{fosfor}}{Teor do fósforo.}
#'
#' \item{\code{potass}}{Teor do potássio.}
#'
#' \item{\code{calcio}}{Teor do cálcio.}
#'
#' \item{\code{aluminio}}{Teor do alumínio.}
#'
#' \item{\code{vanad}}{Teor do vanádio.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 138.
#' @examples
#'
#' data(RamosAnC8)
#'
#' library(qcc)
#'
#' qcc(RamosAnC8$magnes, type = "xbar.one",
#'     xlab = "Amostras", ylab = "Teor do magnésio",
#'     title = "")
#'
#' qcc(RamosAnC8$ferro, type = "xbar.one",
#'     xlab = "Amostras", ylab = "Teor do ferro",
#'     title = "")
#'
NULL

#' @name RamosTb2.5
#' @title Resist\enc{ê}{e}ncia \enc{à}{a} Ruptura de Garrafas
#' @description Distribuição de frequências para as resistências à
#'     ruptura de 100 garrafas de refrigerante de um litro.
#' @format Um \code{data.frame} com 9 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{forca}}{Resistência das garrafas.}
#'
#' \item{\code{freq}}{Frequências observadas para as resistências.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 29.
#' @examples
#'
#' data(RamosTb2.5)
#' str(RamosTb2.5)
#'
#' barplot(RamosTb2.5$freq, names = RamosTb2.5$forca,
#'         xlab = "Resistência", ylab = "Frequência")
#'
NULL

#' @name RamosTb2.6
#' @title Resist\enc{ê}{e}ncia \enc{à}{a} Ruptura e Peso de Garrafas
#' @description Resistência e peso de 25 garrafas.
#' @format Um \code{data.frame} com 25 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{forca}}{Força de resistência à ruptura.}
#'
#' \item{\code{peso}}{Peso da garrafa (em gramas).}
#'
#' }
#' @keywords CEQ RS
#' @source RAMOS et al. (2013), pág. 30.
#' @examples
#'
#' data(RamosTb2.6)
#' str(RamosTb2.6)
#'
#' library(lattice)
#'
#' xyplot(forca ~ peso, pch = 20,
#'        data = RamosTb2.6, type = c("g", "p"))
#'
NULL

#' @name RamosTb2.7
#' @title Processo de Fundi\enc{çã}{ca}o de Magn\enc{é}{e}sio
#' @description Dados referente a um processo de fundição de magnésio,
#'     compreendendo a recuperação do metal e os valores do fluxo de
#'     regeneração adicionada.
#' @format Um \code{data.frame} com 7 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{fluxo}}{Fluxo de recuperação do metal no processo
#'     de fundição.}
#'
#' \item{\code{recupe}}{Recuperação do metal.}
#'
#' }
#' @keywords CEQ RS
#' @source RAMOS et al. (2013), pág. 30.
#' @examples
#'
#' data(RamosTb2.7)
#'
#' library(lattice)
#'
#' xyplot(recupe ~ fluxo, pch = 20,
#'        data = RamosTb2.7, type = c( "g", "p"))
#'
NULL

#' @name RamosTb3.1
#' @title Teor de Fl\enc{ú}{u}or de um Processo Qu\enc{í}{i}mico
#' @description Conjunto de dados sobre teor de flúor com 15 amostras de
#'     tamanho 5 de um processo químico.
#' @format Um \code{data.frame} com 75 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{fluor}}{Teor de flúor.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 38.
#' @examples
#'
#' data(RamosTb3.1)
#' str(RamosTb3.1)
#'
#' library(qcc)
#'
#' obj <- qcc.groups(RamosTb3.1$fluor, RamosTb3.1$amostra)
#'
#' qcc(obj, type = "xbar", nsigmas = 3,
#'     xlab = "Amostra", ylab = "Teor médio de fluor", title = "")
#'
NULL

#' @name RamosTb4.1
#' @title Temperatura de Eletrodos de Carbono
#' @description Conjunto de dados referente às temperaturas de eletrodos
#'     de carbono, com 25 amostras de tamanho 8, em um processo de
#'     fabricação de alumínio.
#' @format Um \code{data.frame} com 75 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{temperat}}{Temperatura dos eletrodos de carbono (em
#'     \eqn{^\circ}C).}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 56.
#' @examples
#'
#' data(RamosTb4.1)
#'
#' library(qcc)
#'
#' obj <- qcc.groups(RamosTb4.1$temperat, RamosTb4.1$amostra)
#'
#' qcc(obj, type = "xbar", nsigmas = 3, xlab = "Amostra", ylab =
#'      "Temperatura média", title = " ")
#'
NULL

#' @name RamosTb5.2
#' @title Itens n\enc{ã}{a}o Conformes no Processo Produtivo de Ovos de
#'     Galinha
#' @description Número de ovos não conformes de um processo produtivo de
#'     ovos de galinha, com 30 amostras de tamanhos diferentes.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{tamamostra}}{Número de unidades amostradas.}
#'
#' \item{\code{naoconf}}{Número de ovos não conformes na amostra.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 79.
#' @examples
#'
#' data(RamosTb5.2)
#'
#' library(qcc)
#'
#' qcc(RamosTb5.2$naoconf, sizes = RamosTb5.2$tamamostra, type = "p",
#'     xlab = "Amostra", ylab = "Fração de ovos não conformes",
#'     title = "")
#'
NULL

#' @name RamosTb5.8
#' @title Taxa de Defeitos na Fabrica\enc{çã}{ca}o de Copos de Cristal
#' @description Número de não conformidades em um processo de fabricação
#'     de copos de cristal, com amostras de tamanhos diferentes.
#' @format Um \code{data.frame} com 26 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{tamamostra}}{Número de unidades amostradas.}
#'
#' \item{\code{naoconf}}{Número de não conformidades na amostra.}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 96.
#'
#' @examples
#'
#' data(RamosTb5.8)
#' str(RamosTb5.8)
#'
#' library(qcc)
#'
#' qcc(RamosTb5.8$naoconf, sizes = RamosTb5.8$tamamostra, type = "u",
#'     xlab = "Amostra", ylab = "Taxa de não conformidades",
#'     title = "")
#'
NULL

#' @name RamosTb6.1
#' @title Densidade Aparente de um Processo de Eletrodos
#' @description Dados da densidade aparente de um processo de produtivo
#'     de eletrodos de carbono.
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{densi}}{Densidade aparente (em g/cm^{3} do eletrodo).}
#'
#' }
#' @keywords CEQ
#' @source RAMOS et al. (2013), pág. 106.
#' @examples
#'
#' data(RamosTb6.1)
#'
#' library(qcc)
#'
#' qcc(RamosTb6.1$densi, type = "xbar.one",
#'     std.dev = "SD", nsigmas = 3,
#'     xlab = "Amostra", ylab = "Densidade",
#'     title = "")
#'
NULL
