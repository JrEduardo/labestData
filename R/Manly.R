#' @name ManlyTb6.7
#' @title Consumo de prote\enc{í}{i}na  
#'
#' @description Estimativas do consumo médio de proteínas de diferentes fontes de alimentos para os habitantes de 25 países europeus. Medida em gramas por pessoa por dia
#'
#' @format Um \code{data.frame} com 25 países em 9 variáveis.
#' 
#' \describe{
#'
#' \item{\code{pais}}{Identificação do país.}
#' 
#' \item{\code{cv}}{Consumo de carne vermelha medida em gramas por pessoa por dia.}
#' 
#' \item{\code{cb}}{Consumo de carne branca.}
#'
#' \item{\code{ovo}}{Consumo de ovos.}
#' 
#' \item{\code{leite}}{Consumo de leite.}
#' 
#' \item{\code{peixe}}{Consumo de peixe.}
#' 
#' \item{\code{cere}}{Consumo por cereais.}
#'  
#' \item{\code{carb}}{Consumo de carboidratos.}
#' 
#' \item{\code{gnso}}{Consumo de grãos, nozes e sementes oleaginosas.}
#'  
#' \item{\code{fv}}{Consumo de frutas e vegetais.}
#'  
#' \item{\code{total}}{Total de consumo do país.}
#' 
#' }
#' @keywords CP
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - uma introdução.
#'      Porto Alegre, RS: Bookman (pg 103)
#' @examples
#'
#' data(ManlyTb6.7)
#' 
#' pairs(~ cv + cb + ovo + leite + peixe + cere + carb + gnso + fv,
#'       data = ManlyTb6.7, 
#'       main="Matriz das variáveis de consumo de proteína")
NULL

#' @name ManlyTb1.1
#' @title Pardais sobreviventes da tempestade
#' @description Estudo em 1898, para a teoria da evolução de Darwin com
#'     pardais moribundos, com total de 49 dados.
#' @format Um \code{data.frame} com 49 registros e 6 variáveis.
#'
#' \describe{
#'
#' \item{\code{ct}}{Comprimento total do pardal (mm).}
#'
#' \item{\code{ea}}{Extensão alar (mm).}
#'
#' \item{\code{cbc}}{Comprimento do bico e cabeça (mm).}
#'
#' \item{\code{cdu}}{Comprimento do úmero (mm).}
#'
#' \item{\code{cqe}}{Comprimento da quilhado esterno (mm).}
#'
#' \item{\code{sobrev}}{Se o animal sobreviveu: S = Sim e N = Não.}
#'
#' }
#'
#' @keywords TODO
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados:
#'     uma introdução. Porto Alegre, RS: Bookman (Tabela 1.1,  pág 14 e
#'     15)
#' @examples
#'
#' data(ManlyTb1.1)
#'
#' pairs(~ct + ea + cbc + cdu + cqe + sobrev,
#'       data = ManlyTb1.1,
#'       main = "Gráfico de dispersão das variáveis nos pardais")
#'
NULL

#' @name ManlyTb1.2
#' @title Cr\enc{â}{a}nios eg\enc{í}{i}pcios
#'
#' @description Medidas de crânios egípcios masculinos em cinco períodos 
#' de tempo. Medidas tomadas em milímetros.
#'
#' @format Um \code{data.frame} com os tamanhos de 30 crânios para cada 
#' período de tempo, com quatro variáveis.
#' 
#' \describe{
#' 
#' \item{\code{grup}}{Identificação do período}
#'
#' \item{\code{x1}}{Largura máxima.}
#' 
#' \item{\code{x2}}{Altura basibregamática.}
#'
#' \item{\code{x3}}{Comprimento basialveolar.}
#'
#' \item{\code{x4}}{Altura nasal.}
#' 
#' }
#' 
#' A figura abaixo descreve as medidas do crânio.
#' \if{html}{\figure{ManlyTb1-2.jpg}{options: width="250px"}}
#' \if{latex}{\figure{ManlyTb1-2.jpg}{options: width=1.75in}} 
#' 
#' @keywords Afd
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - 
#'      uma introdução. Porto Alegre, RS: Bookman (pg 16)
#' @examples
#'
#' data(ManlyTb1.2)
#' require(lattice)
#' require(reshape2)
#'
#' splom(~ManlyTb1.2[2:5] | grup, data = ManlyTb1.2, 
#'     layout=c(3,2), 
#'     pscales = 0,
#'     varnames = c("x1", "x2","x3", "x4"),
#'     main = "Gráfico de dispersão das medidas de crânio para cada período")
#'     
#' ManlyTb1.2long <- melt(ManlyTb1.2, id.vars = "grup")
#'  
#' bwplot(value ~grup | variable, data = ManlyTb1.2long,
#'        scales = list(relation = "free"), 
#'        ylab = "", 
#'        main = "Boxplot das medições de crânio em cada período" )
#'
#'             
NULL

#' @name ManlyTb1.3
#' @title Distribui\enc{ç}{c}ao de uma esp\enc{é}{e}cie de borboletas
#'
#' @description Estudo de colônias de borboletas do tipo \emph{Euphydryas 
#' editha} na Califórnia e em Oregon, EUA, com variáveis ambientais e 
#' frequências gênicas.
#'
#' @format Um \code{data.frame} com 16 colônias de borboletas com 11 variáveis.
#' 
#' \describe{
#'
#' \item{\code{colo}}{Identificação da colônia.}
#' 
#' \item{\code{alt}}{Altitude (em pés).}
#' 
#' \item{\code{precip}}{Precipitação anual (em polegadas).}
#'
#' \item{\code{tempmax}}{Temperatura máxima.}
#' 
#' \item{\code{tempmin}}{Temperatura mínima.}
#' 
#' \item{\code{dg0.4}}{Frequência 0.4 em demobilidade gênica PGi (porcentagem).}
#' 
#' \item{\code{dg0.6}}{Frequência 0.6 em demobilidade gênica PGi.}
#'  
#' \item{\code{dg0.8}}{Frequência 0.8 em demobilidade gênica PGi.}
#' 
#' \item{\code{dg1}}{Frequência 1 em demobilidade gênica PGi.}
#'  
#' \item{\code{dg1.16}}{Frequência 1.16 em demobilidade gênica PGi.}
#' 
#'\item{\code{dg1.3}}{Frequência 1.3 em demobilidade gênica PGi.}
#'  
#' }
#' @keywords CP
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados 
#'      - uma introdução. Porto Alegre, RS: Bookman (pg 19)
#' @examples
#'
#' data(ManlyTb1.3)
#' 
#' pairs(~ alt + precip + tempmax + tempmin + dg0.4 + dg0.6 + dg0.8 + 
#'       dg1 + dg1.16 + dg1.3, data = ManlyTb1.3, cex.labels = 1.4,
#'       main="Matriz de gráficos de dispersão")
NULL

#' @name ManlyTb1.4
#' @title C\enc{ã}{a}es pr\enc{é}{e}-hist\enc{ó}{o}ricos da Tail\enc{â}{a}ndia
#'
#' @description Estudo em ancestrais de cães da Tailândia, 
#' através de medições das mandíbulas.
#'
#' @format Um \code{data.frame} com 7 grupos caninos e 6 variáveis. 
#' 
#' \describe{
#'
#' \item{\code{grup}}{Grupo canino}
#' 
#' \item{\code{largm}}{Largura da mandíbula (mm)}
#' 
#' \item{\code{altm}}{Altura da mandíbula abaixo do primeiro molar (mm).}
#'
#' \item{\code{comppm}}{Comprimento do primeiro molar (mm).}
#' 
#' \item{\code{largpm}}{Largura do primeiro molar (mm).}
#' 
#' \item{\code{comppt}}{Comprimento do primeiro ao terceiro molar (mm).}
#' 
#'  \item{\code{comppq}}{Comprimento do primeiro ao quarto molar (mm).}
#' }
#'
#' @keywords AnaClust
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- uma introdução.
#'      Porto Alegre, RS: Bookman (pg 21)
#' @examples
#'
#'
#' data(ManlyTb1.4)
#' 
#' pairs(~largm + altm + comppm + largpm + comppt + comppq,
#'       data = ManlyTb1.4, 
#'       main="Gráfico de dispersão para as medições da mandíbula")
NULL

#' @name ManlyTb1.5
#' @title Emprego em paises europeus
#'
#' @description Porcentagens da força de trabalho de empregados para nove 
#' diferentes campos de trabalho em 30 países europeus
#'
#' @format Um \code{data.frame} com 30 registros em 11 variáveis.
#' 
#' \describe{
#'
#' \item{\code{pais}}{Identificação do país.}
#' 
#' \item{\code{grup}}{Grupo econômico ao qual pertencente o país: União 
#'      Europeia (UE); Área europeia de livre comércio (AELC); Leste; Outro}
#' 
#' \item{\code{afp}}{Porcentagem da população ativa empregada na agricultura, 
#'      florestal e pesca.}
#'
#' \item{\code{mep}}{Porcentagem empregada na mineração e exploração de pedreiras.}
#' 
#' \item{\code{fab}}{Porcentagem empregada nas fábricas.}
#' 
#' \item{\code{fea}}{Porcentagem empregada nas áreas de fornecimento de 
#'      energia e água.}
#' 
#' \item{\code{con}}{Porcentagem empregada na construção.}
#'  
#' \item{\code{ser}}{Porcentagem empregada na área de serviços.}
#'  
#' \item{\code{fin}}{Porcentagem empregada na área de finanças.}
#'  
#' \item{\code{ssp}}{Porcentagem empregada na área de serviços sociais e
#'     pessoais.}
#' 
#' \item{\code{tc}}{Porcentagem empregada nas áreas de transportes e 
#'      comunicações.}
#' 
#' }
#'
#' @keywords AnaClust
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- 
#'      uma introdução. Porto Alegre, RS: Bookman (pg 22)
#' @examples
#'
#
#' data(ManlyTb1.5)
#' 
#' pairs(~afp + mep + fab + fea + con + ser + fin + ssp + tc,
#'       data = ManlyTb1.5, 
#'       main="Matriz das variáveis de força de trabalho"
#'       )
NULL

#' @name ManlyTb10.2
#' @title Vari\enc{á}{a}veis solo e vegeta\enc{çã}{ca}o em Belize
#'
#' @description Estudo no distrito de Corozal, em Belize, com 4 variáveis 
#' de solo e 4 variáveis de vegetação registradas para quadrados 
#' de 2,5 x 2,5 km.
#'
#' @format Um \code{data.frame} com 151 linhas e 8 variáveis.
#' 
#' \describe{
#' \item{\code{ser}}{Porcentagem de solo com enriquecimento constante de 
#' calcário.}
#'
#' \item{\code{spc}}{Porcentagem de solo de prado com cálcio na água 
#' subterrânea.}
#' 
#' \item{\code{smc}}{Porcentagem de solo com matriz de coral sob 
#' condições de enriquecimento constante de calcário.}
#' 
#' \item{\code{sao}}{Porcentagem de solos aluvial e orgânico adjacentes 
#' a rios e solo orgânico salino na costa.}
#'
#' \item{\code{dfe}}{Porcentagem de floresta decídua estacional com 
#' ervas de folhas largas.}
#' 
#' \item{\code{flab}}{Porcentagem de floresta de locais altos e baixos 
#' coberta com água e plantas herbáceas em lugares úmidos e pântano.}
#' 
#' \item{\code{fpc}}{Porcentagem de floresta palma de cohune.}
#' 
#' \item{\code{fm}}{Porcentagem de floresta mista.}
#' }
#'  
#' @keywords ACC
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - 
#' uma introdução.Porto Alegre, RS: Bookman (pg 167 à 170)
#' @examples
#'
#' data(ManlyTb10.2)
#' pairs(~ ser + spc + smc + sao + fde + flab + fpc + fm,
#'       data = ManlyTb10.2, 
#'       main="Matriz de gráficos para as variáveis de solo")
#'
#'             
NULL

#' @name ManlyTb10.4
#' @title Combina\enc{çã}{ca}o de tabelas 1.5 e 6.7
#'
#' @description Dados referentes a consumo de proteína e força de trabalho 
#' em países europeus.
#'
#' @format Um \code{data.frame} com 22 países e 18 variáveis.
#' 
#' \describe{
#' \item{\code{pais}}{Identificação do país.}
#' 
#' \item{\code{cv}}{Consumo de carne vermelha medida em gramas por 
#' pessoa por dia.}
#' 
#' \item{\code{cb}}{Consumo de carne branca.}
#'
#' \item{\code{ovo}}{Consumo de ovos.}
#' 
#' \item{\code{leite}}{Consumo de leite.}
#' 
#' \item{\code{peixe}}{Consumo de peixe.}
#' 
#' \item{\code{cere}}{Consumo por cereais.}
#'  
#' \item{\code{carb}}{Consumo de carboidratos.}
#' 
#' \item{\code{gnl}}{Consumo de grãos, nozes e sementes oleaginosas.}
#'  
#' \item{\code{fv}}{Consumo de frutas e vegetais.}
#' 
#' \item{\code{agr}}{Porcentagem da população ativa empregada na 
#' agricultura, florestal e pesca.}
#'
#' \item{\code{min}}{Mineração e exploração de pedreiras.}
#' 
#' \item{\code{fab}}{Fabricação.}
#' 
#' \item{\code{fea}}{Fornecimento de energia e água.}
#' 
#' \item{\code{con}}{Construção.}
#'  
#' \item{\code{ser}}{Serviços.}
#'  
#' \item{\code{fin}}{Finanças.}
#'  
#' \item{\code{ssp}}{Serviços sociais e pessoais.}
#' 
#' \item{\code{tc}}{Transportes e comunicações.}
#' 
#' }
#'
#' @keywords ACC
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- 
#' uma introdução. Porto Alegre, RS: Bookman (pg 175)
#' @examples
#'
#' data(ManlyTb10.4)
#' 
#' pairs(~ cv + cb + ovo + leite + peixe + cere + carb + gnl+ agr + 
#' min + fab + fea + con + ser + fin + ssp + tc,
#'       data = ManlyTb10.4, 
#'       main = "Matriz de gráficos para as variáveis de força de trabalho 
#'       e consumo de proteínas diárias"
#'       )
NULL

#' @name ManlyTb11.3
#' @title Dist\enc{â}{a}ncias rodovi\enc{á}{a}rias
#'
#' @description Distâncias rodoviárias (em milhas) entre cidades na ilha
#' Sul da Nova Zelândia
#'
#' @format Uma matriz (13x13) com as distâncias rodoviárias entre as 
#' cidades da ilha Sul da Nova Zelândia.
#' 
#' @keywords EM
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - 
#'      uma introdução. Porto Alegre, RS: Bookman (pg 182)
#'      
#' @examples
#'
#' data(ManlyTb11.3)
#' 
#' require(lattice)
#' 
#' levelplot(ManlyTb11.3, xlab = "", ylab = "", main = "Gráfico das 
#' distâncias rodoviárias", scales = list(x = list(rot=90)))
NULL

#' @name ManlyTb11.5
#' @title Vota\enc{çõ}{co}es de parlamentares
#'
#' @description Número de votos discordantes entre os parlamentares de 
#' Nova Jersey em leis referentes a problemas ambientais
#'
#' @format Uma matriz com os números de votos discordantes entre 15
#' parlamentares de Nova Jersey.
#' 
#' @keywords EM
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados 
#'      - uma introdução. Porto Alegre, RS: Bookman (pg 185)
#'      
#' @examples
#'
#' data(ManlyTb11.5)
#' 
#' require(lattice)
#' 
#' levelplot(ManlyTb11.5, xlab = "", ylab = "", main = "Gráfico das 
#' distâncias entre parlamentares", scales = list(x = list(rot=90)))
NULL

#' @name ManlyTb4.5
#' @title Cr\enc{â}{a}nios eg\enc{í}{i}pcios
#'
#' @title Cães pré-históricos da Tailândia
#'
#' @description Estudo em ancestrais de cães da Tailândia, 
#' através de medições da mandíbula.  
#'
#' @format Um \code{data.frame} com 5 grupo caninos e 10 variáveis.
#' 
#' \describe{
#'
#' \item{\code{grup}}{Grupo canino}
#' 
#' \item{\code{compm}}{Comprimento da mandíbula (mm)}
#' 
#'\item{\code{largmapm}}{Largura da mandíbula, abaixo do primeiro molar (mm)}
#' 
#'\item{\code{largca}}{Largura do côndilo aricular (mm)}
#'
#' \item{\code{altmapm}}{Altura da mandíbula, abaixo do primeiro molar (mm)}
#' 
#' \item{\code{comppm}}{Comprimento do primeiro molar (mm).}
#' 
#' \item{\code{largpm}}{Largura do primeiro molar (mm).}
#' 
#' \item{\code{compptm}}{Comprimento do primeiro ao terceiro molar (mm).}
#' 
#'\item{\code{comppqp}}{Comprimento do primeiro ao quarto pré-molar (mm).}
#'  
#'\item{\code{largci}}{Largura do canino inferior (mm).}
#'
#'\item{\code{sexo}}{Código para sexo, (1 para masculino, 2 para feminino 
#'e caso contrário é desconhecido}
#'
#' }
#' 
#' @keywords TS
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - 
#'      uma introdução. Porto Alegre, RS: Bookman (pg 67 à 69)
#' @examples
#'
#' data(ManlyTb4.5)
#' require(lattice)
#' require(reshape2)
#' 
#' ManlyTb4.5long <- melt(ManlyTb4.5[,-11], id.vars = "grup")
#'
#' bwplot(value ~grup | variable, data = ManlyTb4.5long,
#'         scales = c(list(relation = "free"), list(x=list(draw=FALSE))),
#'       ylab = "",
#'        main = "Boxplot de entre os grupo das medições da mandíbula",
#'        par.settings = list( box.umbrella=list(col = c(1,2,3,4,6)), 
#'                             box.dot=list(col = c(1,2,3,4,6)), 
#'                             box.rectangle = list(col = c(1,2,3,4,6))),
#'        key = list(points = list(col=c(1,2,3,4,6), pch=19),
#'                   space = "top",
#'                   columns=2,
#'                   text=list(c("Caes modernos da Tailandia", "Chacais dourados", "Cuons", 
#'                               "Lobos indianos", "Caes pre-historicos tailandeses"))))
NULL

#' @name ManlyTb6.6
#' @title Ta\enc{ç}{c}as de cer\enc{â}{a}micas pr\enc{é}{e}-hist\enc{ó}{o}ricas
#'
#' @description Dimensões de 25 taças de cerâmicas escavadas de lugares 
#' pré-históricos na Tailândia.
#'
#' @format Um \code{data.frame} com 25 registros em 6 variáveis.
#' 
#' \describe{
#'
#' A figura apresentada descreve as cinco variáveis, correspondentes às
#' dimensões das taças.
#' 
#' \if{html}{\figure{ManlyTb6-6.jpg}{options: width="250px"}}
#' \if{latex}{\figure{ManlyTb6-6.jpg}{options: width=1.75in}} 
#'}
#' @keywords AnaComp
#' 
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- 
#'      uma introdução. Porto Alegre, RS: Bookman (pg 101)
#'      
#' @examples
#'
#' data(ManlyTb6.6)
#'
#' pairs(~ x1 + x2 + x3 + x4 + x5 + x6,
#'       data = ManlyTb6.6, 
#'       main="Matriz de diapersão para as variáveis de medida das taças")
NULL

#' @name ManlyTb6.7
#' @title Consumo de prote\enc{í}{i}na por habitantes de pa\enc{í}{i}ses europeus 
#'
#' @description Estimativas dos consumos médios de proteínas de diferentes 
#' fontes de alimentos para habitantes de 25 países europeus. 
#' Consumos registrados em gramas por pessoa por dia.
#'
#' @format Um \code{data.frame} com 25 países e 9 variáveis.
#' 
#' \describe{
#'
#' \item{\code{pais}}{Identificação do país.}
#' 
#' \item{\code{cv}}{Consumo de carne vermelha.}
#' 
#' \item{\code{cb}}{Consumo de carne branca.}
#'
#' \item{\code{ovo}}{Consumo de ovos.}
#' 
#' \item{\code{leite}}{Consumo de leite.}
#' 
#' \item{\code{peixe}}{Consumo de peixe.}
#' 
#' \item{\code{cere}}{Consumo por cereais.}
#'  
#' \item{\code{carb}}{Consumo de carboidratos.}
#' 
#' \item{\code{gnso}}{Consumo de grãos, nozes e sementes oleaginosas.}
#'  
#' \item{\code{fv}}{Consumo de frutas e vegetais.}
#'  
#' \item{\code{total}}{Total de consumo do país.}
#' 
#' }
#' @keywords AnaComp
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - 
#'      uma introdução. Porto Alegre, RS: Bookman (pg 103)
#'      
#' @examples
#'
#' data(ManlyTb6.7)
#' 
#' pairs(~ cv + cb + ovo + leite + peixe + cere + carb + gnso + fv,
#'       data = ManlyTb6.7, 
#'       main="Matriz das variáveis de consumo de proteína")
NULL

#' @name ManlyTb9.7
#' @title Esp\enc{é}{e}cies de plantas em lotes
#'
#' @description Estudo de 25 espécies de plantas em 17 lotes de um prado
#' de pastagem na Reserva Natural em Steneryd na Suécia. Cada valor na 
#' tabela é a soma dos valores cobertos em um intervalo de 0 a 5 por 
#' nove quadrantes de amostra, de modo que um valor 45 corresponde à 
#' completa cobertura pela espécie. 
#'
#' @format Um \code{data.frame} com 25 espécie de plantas com 18 
#' variáveis
#' 
#' \describe{
#'
#' \item{\code{esp}}{Espécie}
#' 
#' \item{\code{l1}}{Medidas de abundância das espécies no lote 1.}
#' 
#' \item{\code{l2}}{Medidas de abundância das espécies no lote 2.}
#' 
#' \item{\code{l3}}{Medidas de abundância das espécies no lote 3.}
#' 
#' \item{\code{l4}}{Medidas de abundância das espécies no lote 4.}
#' 
#' \item{\code{l5}}{Medidas de abundância das espécies no lote 5.}
#' 
#' \item{\code{l6}}{Medidas de abundância das espécies no lote 6.}
#' 
#' \item{\code{l7}}{Medidas de abundância das espécies no lote 7.}
#' 
#' \item{\code{l8}}{Medidas de abundância das espécies no lote 8.}
#' 
#' \item{\code{l9}}{Medidas de abundância das espécies no lote 9.}
#' 
#' \item{\code{l10}}{Medidas de abundância das espécies no lote 10.}
#' 
#' \item{\code{l11}}{Medidas de abundância das espécies no lote 11.}
#' 
#' \item{\code{l12}}{Medidas de abundância das espécies no lote 12.}
#' 
#' \item{\code{l13}}{Medidas de abundância das espécies no lote 13.}
#' 
#' \item{\code{l14}}{Medidas de abundância das espécies no lote 14.}
#' 
#' \item{\code{l15}}{Medidas de abundância das espécies no lote 15.}
#' 
#' \item{\code{l16}}{Medidas de abundância das espécies no lote 16.}
#' 
#' \item{\code{l17}}{Medidas de abundância das espécies no lote 17.}
#' }
#'
#' @keywords AnaClust
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- 
#' uma introdução. Porto Alegre, RS: Bookman (pg 152)
#' @examples
#'
#' data(ManlyTb9.7)
#' 
#' euclid <- as.matrix(dist(ManlyTb9.7[,-1]))
#' 
#' heatmap(euclid, 
#'        margins= c(6,6), 
#'        labRow = ManlyTb9.7$esp, 
#'        labCol = ManlyTb9.7$esp,
#'        main = "Heatmap para a matriz de distâncias para as 25 espécies")
NULL

#' @name ManlyTb9.8
#' @title Bens de t\enc{ú}{u}mulos
#'
#' @description Conjunto de dados referentes a bens de túmulos de um 
#' cemitério em Bannadi, nordeste da Tailândia. São registros de 
#' presença ou ausência de 38 diferentes artigos em cada um dos 46 
#' túmulos, com informação adicional sobre se os restos mortais eram de
#' um adulto masculino, feminino ou criança. Os sepultamentos estão na 
#' ordem de riqueza de diferentes bens (totais variando de 0 a 11), e os
#' bens estão na ordem de frequência de ocorrência (totais variando de 
#' 1 a 18).
#' 
#' @format Um \code{data.frame} com 45 linhas e 38 colunas.
#' 
#' \describe{
#'
#' \item{\code{sep}}{Identifica o sepultamento}
#' 
#' \item{\code{tipo}}{Identifica os restos Mortais (1 = Adulto masculino;
#'  2 = Adulto Feminino; 3 = Criança}
#' 
#' \item{\code{obj1}}{Presença (1) ou ausência (0) do objeto 1}
#' 
#' \item{\code{obj2}}{Presença (1) ou ausência (0) do objeto 2.}
#' 
#' \item{\code{obj3}}{Presença (1) ou ausência (0) do objeto 3.}
#' 
#' \item{\code{obj4}}{Presença (1) ou ausência (0) do objeto 4.}
#' 
#' \item{\code{obj5}}{Presença (1) ou ausência (0) do objeto 5.}
#' 
#' \item{\code{obj6}}{Presença (1) ou ausência (0) do objeto 6.}
#' 
#' \item{\code{obj7}}{Presença (1) ou ausência (0) do objeto 7.}
#' 
#' \item{\code{obj8}}{Presença (1) ou ausência (0) do objeto 8.}
#' 
#' \item{\code{obj9}}{Presença (1) ou ausência (0) do objeto 9.}
#' 
#' \item{\code{obj10}}{Presença (1) ou ausência (0) do objeto 10.}
#' 
#' \item{\code{obj11}}{Presença (1) ou ausência (0) do objeto 11.}
#' 
#' \item{\code{obj12}}{Presença (1) ou ausência (0) do objeto 12.}
#' 
#' \item{\code{obj13}}{Presença (1) ou ausência (0) do objeto 13.}
#' 
#' \item{\code{obj14}}{Presença (1) ou ausência (0) do objeto 14.}
#' 
#' \item{\code{obj15}}{Presença (1) ou ausência (0) do objeto 15.}
#' 
#' \item{\code{obj16}}{Presença (1) ou ausência (0) do objeto 16.}
#' 
#' \item{\code{obj17}}{Presença (1) ou ausência (0) do objeto 17.}
#' 
#' \item{\code{obj18}}{Presença (1) ou ausência (0) do objeto 18.}
#'
#' \item{\code{obj19}}{Presença (1) ou ausência (0) do objeto 19.}
#' 
#' \item{\code{obj20}}{Presença (1) ou ausência (0) do objeto 20.}
#'
#' \item{\code{obj21}}{Presença (1) ou ausência (0) do objeto 21.}
#' 
#' \item{\code{obj22}}{Presença (1) ou ausência (0) do objeto 22.}
#' 
#' \item{\code{obj23}}{Presença (1) ou ausência (0) do objeto 23.}
#' 
#' \item{\code{obj24}}{Presença (1) ou ausência (0) do objeto 24.}
#' 
#' \item{\code{obj25}}{Presença (1) ou ausência (0) do objeto 25.}
#' 
#' \item{\code{obj26}}{Presença (1) ou ausência (0) do objeto 26.}
#' 
#' \item{\code{obj27}}{Presença (1) ou ausência (0) do objeto 27.}
#' 
#' \item{\code{obj28}}{Presença (1) ou ausência (0) do objeto 28.}
#' 
#' \item{\code{obj29}}{Presença (1) ou ausência (0) do objeto 29.}
#' 
#' \item{\code{obj30}}{Presença (1) ou ausência (0) do objeto 30.}
#' 
#' \item{\code{obj31}}{Presença (1) ou ausência (0) do objeto 31.}
#' 
#' \item{\code{obj32}}{Presença (1) ou ausência (0) do objeto 32.}
#' 
#' \item{\code{obj33}}{Presença (1) ou ausência (0) do objeto 33.}
#' 
#' \item{\code{obj34}}{Presença (1) ou ausência (0) do objeto 34.}
#' 
#' \item{\code{obj35}}{Presença (1) ou ausência (0) do objeto 35.}
#' 
#' \item{\code{obj36}}{Presença (1) ou ausência (0) do objeto 36.}
#' 
#' \item{\code{obj37}}{Presença (1) ou ausência (0) do objeto 37.}
#' 
#' \item{\code{obj38}}{Presença (1) ou ausência (0) do objeto 38.}
#'  
#' }
#'
#' @keywords AnaClust
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- 
#' uma introdução. Porto Alegre, RS: Bookman (pg 153 e 154)
#' @examples
#'
#' data(ManlyTb9.8)
#' 
#' matdist <- as.matrix(dist(ManlyTb9.8[,-c(1,2)], method = "binary"))
#' ### Mapa de calor para a matriz de dissimilaridades.
#' heatmap(matdist, 
#'        margins= c(6,6), 
#'        labRow = ManlyTb9.8$sep, 
#'        labCol = ManlyTb9.8$sep)
NULL

