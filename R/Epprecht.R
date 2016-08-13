#' @name EpprechtTb2.1
#' @title Volumes em embalagens de leite
#' @description Dados referentes aos volumes verificados de 
#'     leite em 100 embalagens de 1000 ml.      
#' 
#' @format Um \code{data.frame} com 100 observações e 2 variáveis, em 
#'     que
#' 
#' \describe{
#'
#' \item{\code{id}}{Identificação da embalagem.}
#' 
#' \item{\code{X}}{Volume de leite presente na embalagem (ml).}
#' 
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 23).
#' 
#' @examples
#'
#' data(EpprechtTb2.1) 
#' 
#' hist(EpprechtTb2.1$x, xlab="Volume (ml)", ylab="Frequência", main="")
#'                   
NULL

#' @name EpprechtTb2.2
#' @title Volumes em embalagens de leite
#' @description Dados referentes aos volumes verificados de 
#'     leite em 100 embalagens de 1000 ml. Os dados foram extraídos 
#'     após uma alteração da pressão de operação, configurando uma causa 
#'     especial de variação.
#' 
#' @format Um \code{data.frame} com 100 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{id}}{Identificação da embalagem.}
#' 
#' \item{\code{X}}{Volume de leite na embalagem (ml).}
#' 
#' 
#' }
#'
#' @keywords variabilidade
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 26).
#' 
#' @examples
#'
#' data(EpprechtTb2.2) 
#' 
#' hist(EpprechtTb2.2$x, xlab="Volume (ml)", ylab="Frequência", main="")
#'                   
NULL

#' @name EpprechtTb2.3
#' @title Volumes em embalagens de leite
#' @description Dados referentes aos volumes  de leite em 100 embalagens
#'     de 1000 ml. Os dados são extraídos de um processo isento de
#'     causas especiais de variação.
#' 
#' @format Um \code{data.frame} com 100 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{id}}{Identificação da embalagem.}
#' 
#' \item{\code{X}}{Volume de leite presente na embalagem (ml).}
#' 
#' }
#'
#' @keywords CEQ
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 35).
#' 
#' @examples
#'
#' data(EpprechtTb2.3) 
#' 
#' hist(EpprechtTb2.3$x, xlab="Volume (ml)", ylab="Frequência", main="")
#'                   
NULL

#' @name EpprechtTb5.2
#' @title Medidas de pe\enc{ç}{c}as em uma linha de produ\enc{çã}{ca}o
#' @description Dados referentes às medidas de peças de uma linha de
#'     produção. O objetivo é analisar a repetitividade e a 
#'     reprodutividade de um micrômetro com leitura milesimal, usado na
#'     medição de um componente de um processo de usinagem. Três 
#'     operadores treinados mediram duas vezes cada uma de 10 peças. 
#'     A sequência em que cada um dos operadores mede cada uma das 
#'     peças foi aleatorizada.
#'     
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{pc}}{Identificação da peça.}
#' 
#' \item{\code{op}}{Fator que indica o operador que realizou a medição
#'     da peça (de 1 a 3).}
#'     
#' \item{\code{tam}}{Tamanho da peça (µm).}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 152).
#' 
#' @examples
#'
#' data(EpprechtTb5.2)
#' 
#' boxplot(tam ~ op, data = EpprechtTb5.2,
#'         xlab = "Operário", 
#'         ylab = "Tamanho", 
#'         main = "Boxplots para os tamanhos das peças aferidos pelos três 
#'             operários",
#'         col = c("#F0FFFF","#FFDAB9", "#C1FFC1"))
#' 
#'                   
NULL

#' @name EpprechtTb5.4
#' @title Capacidade de medi\enc{çã}{ca}o de um rel\enc{ó}{o}gio apalpador 
#' @description Dados utilizados para avaliar a capacidade
#'     de um relógio apalpador na medição do erro de batida radial de 
#'     um eixo retificado. São 20 peças medidas por um mesmo
#'     operador, duas vezes cada. 
#' 
#' @format Um \code{data.frame} com 40 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{pc}}{Identificação da peça.}
#' 
#' 
#' \item{\code{tam}}{Tamanho da peça (décimos de mícrons).}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 155).
#' 
#' @examples
#'
#' data(EpprechtTb5.4)
#' 
#' plot(tam ~ pc,data=EpprechtTb5.4,
#'      ylab = "Tamanho",
#'      xlab = "Peça", xaxt = "n")
#' axis(1, 1:20)
#' abline(mean(EpprechtTb5.4$tam), 0, lty=2)
#' 
#'                   
NULL

#' @name EpprechtTb5.5
#' @title Medidas de dureza de pe\enc{ç}{c}as de uma linha de produ\enc{çã}{ca}o
#' @description Dados referentes a medidas de dureza de peças, para avaliar a 
#'     capacidade de medição de um durômetro. São 10 peças medidas três vezes
#'     cada por um mesmo operador.
#' 
#' 
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{pc}}{Identificação da peça.}
#' 
#' \item{\code{dur}}{Dureza da peça.}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 155).
#' 
#' @examples
#'
#' data(EpprechtTb5.5)
#' 
#' plot(tam~pc, data=EpprechtTb5.5,
#'      ylab="Tamanho",
#'      xlab="Peça", xaxt="n")
#' axis(1, 1:10)
#' abline(mean(EpprechtTb5.5$tam), 0, lty=2)
#'  
#'                   
NULL

#' @name EpprechtTb5.6
#' @title Avalia\enc{çã}{ca}o das leituras de um micr\enc{ô}{o}metro
#' @description Dados referentes às leituras de um micrômetro usado para 
#'     medir peças com dimensão nominal de 20 mm, utilizando um bloco padrão de 
#'     dimensão 20 mm como referência. O bloco foi
#'     medido dez vezes por um mesmo operador.
#' 
#' 
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{med}}{Identificador de medição da peça.}
#' 
#' \item{\code{leit}}{Leitura do micrômetro (mm).}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 156).
#' 
#' @examples
#'
#' data(EpprechtTb5.6)
#'  
#' boxplot(EpprechtTb5.6$leit, 
#'         col="#F0FFFF",
#'         ylab="Leitura",
#'         main="Leituras do micrômetro")
#' grid(nx=NA, ny=NULL, col='grey')
#'                   
NULL

#' @name EpprechtTb5.9
#' @title Medidas de pe\enc{ç}{c}as de uma linha de produ\enc{çã}{ca}o
#' @description Após a aquisição de um equipamento de medição mais 
#'     sofisticado que o anterior, foi realizado um estudo de 
#'     repetitividade e reprodutividade do processo de medida com o 
#'     novo equipamento. Cada peça foi medida três vezes por cada um de
#'     dois operadores.
#' 
#' 
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{pc}}{Identificação da peça.}
#' 
#' \item{\code{op}}{Fator que indica o operador que realizou a medição
#'     da peça (1 = primeiro operador, 2 = segundo operador).}
#'  
#' \item{\code{tam}}{Tamanho da peça.}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 157).
#' 
#' @examples
#'
#' data(EpprechtTb5.9)
#' 
#' EpprechtTb5.9$op <- as.factor(EpprechtTb5.9$op)
#' 
#' boxplot(tam~op, data=EpprechtTb5.9,
#'         xlab="Operador", 
#'         ylab="Tamanho", 
#'         main="Boxplot dos tamanhos das peças medidas pelos dois operadores",
#'         col=c("#F0FFFF","#FFDAB9"))
#' grid(nx=NA, ny=NULL, col="grey")
#'                   
NULL

#' @name EpprechtTb6.10
#' @title Concentra\enc{çã}{ca}o de um Processo Qu\enc{í}{i}mico
#' @description Dados referentes à concentração de um processo químico
#'     registrada a cada 3 minutos.
#' 
#' 
#' @format Um \code{data.frame} com 100 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{conc}}{Concentração registrada na amostra.}
#'  
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 182).
#' 
#' @examples
#'
#' data(EpprechtTb6.10)
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb6.10$conc, type="xbar.one", nsigmas=3,
#'     xlab=" ", ylab="Concentração", title=" ")
#' 
#'                   
NULL

#' @name EpprechtTb6.12
#' @title Peso de um Produto
#' @description Trinta observações registradas referentes aos pesos de um 
#'     produto.
#' 
#' 
#' @format Um \code{data.frame} com 30 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{peso}}{Peso do produto.}
#'     
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 184).
#' 
#' @examples
#'
#' data(EpprechtTb6.12)
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb6.12$peso, type="xbar.one", nsigmas=3,
#'     xlab=" ", ylab="Peso", title=" ")
#' 
#'                   
NULL

#' @name EpprechtTb6.4
#' @title Temperatura do Banho Qu\enc{í}{i}mico
#' @description A cada 30 minutos registram-se três temperaturas do 
#'     banho, espaçadas de 3 minutos. Exemplo: na primeira amostra 
#'     efetua-se uma medida às 8h00, outra às 8h03 e outra às 8h06. Na 
#'     segunda amostra são registradas as temperaturas nos horários 
#'     8h30, 8h33 e 8h36, e assim por diante.
#' 
#' @format Um \code{data.frame} com 60 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{amostra}}{Identificação da amostra.}
#'  
#' \item{\code{temp}}{Temperaturas registradas.}
#'  
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 167).
#' 
#' @examples
#'
#' data(EpprechtTb6.4)
#' 
#' library(qcc)
#'
#' obj <- qcc.groups(EpprechtTb6.4$temp, EpprechtTb6.4$amostra)
#' qcc(obj, type="xbar", nsigmas=3, 
#'    xlab="Amostra", ylab="Temperatura", title=" ")
#'                   
NULL

#' @name EpprechtTb6.9
#' @title Volume de Refrigerante em Garrafas Pl\enc{á}{a}sticas
#' @description Os dados referem-se aos volumes de refrigerante em 
#'     20 amostras, cada uma delas composta por 3 garrafas. 
#' 
#' @format Um \code{data.frame} com 60 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{amostra}}{Identificação da amostra.}
#'  
#' \item{\code{vol}}{Volumes registrados.}
#' 
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 180).
#' 
#' @examples
#'
#' data(EpprechtTb6.9)
#' 
#' library(qcc)
#' 
#' obj <- qcc.groups(EpprechtTb6.9$vol, EpprechtTb6.9$amostra)
#' qcc(obj, type="xbar", nsigmas=3,
#'     xlab="Amostra", ylab="Volume", title=" ")
#' 
#'                   
NULL

#' @name EpprechtTb7.5
#' @title Qualidade de um Processo
#' @description Uma característica de qualidade de um processo  
#'     monitorada por meio de quinze observações.
#' 
#' 
#' @format Um \code{data.frame} com 15 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{x}}{Observações registradas do processo.}
#' 
#' }
#'
#' @keywords CEQ EWMA
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 198).
#' 
#' @examples
#'
#' data(EpprechtTb7.5)
#' 
#' library(qcc)
#' 
#' 
#' qcc(EpprechtTb7.5, type="xbar.one", nsigmas=3,
#'      xblab=" ", ylab="Observações", title=" ")
#' ewma(EpprechtTb7.5, nsigmas = 3,plot = TRUE,
#'      xblab=" ", ylab="Observações", title=" ")
#' 
#'                   
NULL

#' @name EpprechtTb8.12
#' @title Controle de qualidade para a fra\enc{çã}{ca}o de n\enc{ã}{a}o conformes. 
#' @description Dados de 20 amostras, representando o número 
#'     de peças não-conformes em amostras de tamanho 100.
#' 
#' @format Um \code{data.frame} com 20 observações e 1 variável, 
#'     em que
#' 
#' \describe{ 
#' 
#' \item{\code{nconf}}{Número de peças não conformes nas amostras.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 227).
#' 
#' @examples
#'
#' data(EpprechtTb8.12) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.12, type="p", size=100,
#'     xlab="Amostra", ylab="Proporção de itens não conformes", title=" ")
#'                   
NULL

#' @name EpprechtTb8.13
#' @title Controle de qualidade para o n\enc{ú}{u}mero de pedidos de compra com erro
#' @description Uma grande companhia faz o controle estatístico de
#'     seus processos administrativos. Para isso, são coletados
#'     semanalmente o número de pedidos de compra e o número de pedidos 
#'     de compra com erros.
#' 
#' @format Um \code{data.frame} com 15 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{pc}}{Número de pedidos de compra.}
#' 
#' \item{\code{pce}}{Número de pedidos de compra com erros.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 229).
#' 
#' @examples
#'
#' data(EpprechtTb8.13) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.13$pce, type="p", sizes=EpprechtTb8.13$pc,
#'     xlab="Semana", ylab="Proporção de pedidos com erros", title=" ")
#' 
#'                   
NULL

#' @name EpprechtTb8.14
#' @title Controle de Qualidade para o N\enc{ú}{u}mero de Defeitos na Montagem 
#' de Placas de Circuito
#' 
#' @description Para monitorar um processo de montagem de placas de 
#'     circuitos foram registrados os números de componentes montados 
#'     erradamente a cada 5 placas (cada amostra consiste de 5 placas). 
#' 
#' @format Um \code{data.frame} com 20 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{nconf}}{Número de não-conformidades encontradas na amostra.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 230).
#' 
#' @examples
#'
#' data(EpprechtTb8.14) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.14, type="c", size=5,
#'     xblab="Amostras", ylab="Número de itens não conformes", title=" ")
#'                   
NULL

#' @name EpprechtTb8.15
#' 
#' @title Controle de Qualidade para o N\enc{ú}{u}mero de Defeitos em um Processo 
#' de Produ\enc{çã}{ca}o de Tecidos
#' 
#' @description Para monitorar um processo de produção de tecidos
#'     estampados foram examinados os 10 primeiros rolos, com 200m de 
#'     tecido cada. Foi registrado o número de defeitos encontrados em 
#'     cada rolo. 
#' 
#' @format Um \code{data.frame} com 10 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{def}}{Defeitos encontrados no rolo.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 231).
#' 
#' @examples
#'
#' data(EpprechtTb8.15) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.15, type="c", 
#'     xlab="Amostra", ylab="Número de defeitos", title=" ")
#'                   
NULL

#' @name EpprechtTb8.16
#' @title Controle de qualidade na produ\enc{çã}{ca}o de cabos el\enc{é}{e}tricos
#' @description Dados referentes ao monitoramento do processo de produção
#'     de cabos elétricos. Foi registrada a quantidade de defeitos
#'     encontrados em amostras de determinada quantidade de metros de cabo.
#' 
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{met}}{Quantidade de cabo avaliado em cada amostra (em metros).}
#' 
#' \item{\code{def}}{Número de defeitos encontrados.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 233).
#' 
#' @examples
#'
#' data(EpprechtTb8.16) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.16$def, type="u", sizes=EpprechtTb8.16$met,
#'     xlab="Amostra", ylab="Quantidade de defeitos", title=" ")  
#'                    
NULL

#' @name EpprechtTb8.2
#' @title N\enc{ú}{u}mero de Clientes Insatisfeitos com a Comida 
#' @description Dados referentes ao número de clientes insatisfeitos
#'     com a comida de um restaurante. Esses dados foram obtidos após o
#'     diagnóstico e a eliminação de causas especiais. A cada dia 200
#'     clientes foram consultados, durante 30 dias.
#' 
#' @format Um \code{data.frame} com 30 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{cinsat}}{Número de clientes insatisfeitos.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 204).
#' 
#' @examples
#'
#' data(EpprechtTb8.2) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.2, type="p", size=200,
#'     xlab="Amostra", ylab="Proporção de insatisfeitos", title=" ")
#'                   
NULL

#' @name EpprechtTb8.8
#' @title Controle de qualidade para o n\enc{ú}{u}mero de n\enc{ã}{a}o-conformidades em geladeiras
#' @description Dados referentes aos números de não-conformidades  
#'     em 40 amostras de cinco geladeiras. Foi suposto que o processo
#'     operava sob controle nesse período. 
#' 
#' @format Um \code{data.frame} com 40 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{nconf}}{Número de não-conformidades.} 
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 222).
#' 
#' @examples
#'
#' data(EpprechtTb8.8) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.8, type="c", size=5,
#'     xlab="Amostra", ylab="Número de não-conformidades", title=" ")
#'                   
NULL

