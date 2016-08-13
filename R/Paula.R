#' @name PaulaEg1.12.2
#' @title Pacientes com Processo Infecioso Pulmonar
#' @description Um total de 175 pacientes com processo infecioso 
#'     pulmonar atendidos no hospital no período acima foram classificados
#'     por algumas variáveis. 
#'      
#' @format Um \code{data.frame} com 175 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{tipo}}{Tipo de tumor (maligno, benigno).}
#' 
#' \item{\code{idade}}{Idade do paciente (em anos).}
#' 
#' \item{\code{sexo}}{Sexo do paciente (masculino, feminino).}
#' 
#' \item{\code{hl}}{Intensidade da célula histiócitos-linfócitos (ausente, 
#'     discreta, moderada, intensa).}
#' 
#' \item{\code{ff}}{Intensidade da célula fibrose-frouxa (ausente, 
#'     discreta, moderada, intensa).}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.12.2, p?g. 85)
#'
#' @examples
#'
#' data(PaulaEg1.12.2)
#' 
#' str(PaulaEg1.12.2)
#' 
#' library(lattice)
#' bwplot(idade ~ hl | tipo, 
#'        data = PaulaEg1.12.2,
#'        ylab = "Idade",
#'        xlab = "Intensidade da célula histiócitos-linfócitos")
#' 
#' bwplot(idade ~ ff | tipo, 
#'        data = PaulaEg1.12.2,
#'        ylab = "Idade",
#'        xlab = "Intensidade da célula fibrose-frouxa")
#'        
#' barchart(table(PaulaEg1.12.2$tipo,PaulaEg1.12.2$hl), 
#' auto.key=list(space="top", columns=2, 
#'               cex.title=1,
#'               rectangles = TRUE, 
#'               points=FALSE))
#'
NULL

#' @name PaulaEg1.12.4
#' @title Desenvolvimento de Massa Tumoral em Ratos
#' @description Estudo realizado para avaliar a influência da série
#'     (passagem do tumor) na morte (caquexia) de certa espécie de rato.
#'     Um total de 204 animais teve tumor inoculado num determinado
#'     momento da série. Para cada animal, além do grupo de passagem,
#'     foram observadas as variáveis presença de massa tumoral, caquexia
#'     e o tempo de observação.
#'
#' @format Um \code{data.frame} com 204 observações e 4 variáveis.
#' \describe{
#'
#' \item{\code{grupo}}{Grupo de passagem (0 a 28).}
#'
#' \item{\code{massat}}{Presença de massa tumoral (sim ou não).}
#'
#' \item{\code{caq}}{Caquexia (sim ou não).}
#'
#' \item{\code{tempo}}{Tempo de sobrevivência (em dias).}
#'
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.12.4, pág. 90)
#'
#' @examples
#'
#' data(PaulaEg1.12.4)
#' str(PaulaEg1.12.4)
#'
#' library(lattice)
#'
#' xyplot(tempo ~ grupo | massat,
#'        groups = caq,
#'        data = PaulaEg1.12.4,
#'        type = c("p", "smooth"),
#'        xlab = "Grupo",
#'        ylab = "Tempo",
#'        main = paste("Tempo de sobrevivência vs grupo de passagem\n",
#'                     "(segundo caquexia e presença de massa tumoral)"),
#'        auto.key = list(space = "top", columns = 2,
#'                        title = "Presença de caquexia", cex.title = 1,
#'                        lines = TRUE, points = FALSE))
#'
#' bwplot(tempo ~ massat | caq,
#'        data = PaulaEg1.12.4,
#'        ylab = "Tempo",
#'        xlab = "Presença de massa tumoral",
#'        main = paste("Bwplot para Caquexia não Presente\n",
#'                     "(à esquerda) ou Presente (à direita)"))
#'
NULL

#' @name PaulaEg1.12.5
#' @title Consumo de Combust\enc{í}{i}vel
#' @description Dados referentes ao consumo de combustível em 48 estados 
#'     norte-americanos. O interesse nesse estudo é tentar explicar o 
#'     consumo de combustível com base em variáveis econômicas.
#'      
#' @format Um \code{data.frame} com 48 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{est}}{Estado.}
#' 
#' \item{\code{taxa}}{Taxa do combustível no estado (em USD).}
#' 
#' \item{\code{licen}}{Proporção de motoristas licenciados.}
#' 
#' \item{\code{renda}}{Renda percapita (em USD).}
#' 
#' \item{\code{estr}}{Ajuda federal para as estradas (em 1000 USD).}
#' 
#' \item{\code{cons}}{Consumo de combustível por habitante.}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.12.5, p?g. 94)
#'
#' @examples
#'
#' data(PaulaEg1.12.5)
#' 
#' str(PaulaEg1.12.5)
#' 
#' library(lattice)
#' 
#' library(car)
#' 
#' scatterplotMatrix( ~ cons + taxa + licen + renda + estr,
#'                   data = PaulaEg1.12.5)
#' 
#' xyplot(cons ~ est,
#'        ylab = "Consumo",
#'        xlab = "Estados",
#'        data = PaulaEg1.12.5,
#'        type = 'h',
#'        main = "Consumo por Habitante em cada Estado",
#'        grid = TRUE)
#'
NULL

#' @name PaulaEg1.12.6
#' @title Sal\enc{á}{a}rio de Executivos
#' @description Dados referentes ao salário anual de uma 
#'     amostra aleatória de 220 executivos (145 homens e 75 mulheres). O 
#'     salário será relacionado com as variáveis: sexo, anos de experiência 
#'     no cargo e posição na empresa.
#'      
#' @format Um \code{data.frame} com 220 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{sal}}{Salário anual (em mil USD).}
#' 
#' \item{\code{sexo}}{Sexo (masculino, feminino).}
#' 
#' \item{\code{pos}}{Posição na empresa (escore de 1 a 9).}
#' 
#' \item{\code{aexp}}{Experiência (em anos).}
#' 
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.12.6, p?g. 97)
#'
#' @examples
#'
#' data(PaulaEg1.12.6)
#' 
#' str(PaulaEg1.12.6)
#' 
#' library(lattice)
#' 
#' xyplot(sal ~ aexp | sexo,
#'        data = PaulaEg1.12.6,
#'        type = c("p", "smooth"),
#'        xlab = "Anos de experiência",
#'        ylab = "Salário",
#'        main = "Dispersão de Salário por Anos de Experiência")
#'
NULL

#' @name PaulaEg2.4.2
#' @title Captura de Peixes via Espinhel de Fundo no Litoral Paulista
#' @description Dados parciais de um estudo sobre a atividade de frotas
#'     pesqueiras de espinhel de fundo baseadas no litoral paulista (
#'     Santos e Ubatuba). Neste estudo uma amostra de 156 embarcações
#'     pesqueiras, destinadas à pesca do peixe-batata, foi
#'     analisada no período de 1995 a 1999. Para cada embarcação foram
#'     consideradas variáveis sobre a frota (Santos ou Ubatuba), ano,
#'     trimestre, latitude, longitude, dias de pesca, quantidade de
#'     peixes capturados e a captura por unidade de esforço (definida
#'     como divisão da quantidade de peixe capturado pelos dias de
#'     pesca). 
#' @format Um \code{data.frame} com 156 observações e 8 variáveis.
#'     \describe{
#' 
#' \item{\code{frota}}{Fator com dois níveis que indica de qual frota é
#'     a embarcação, \code{Santos} ou \code{Ubatuba}.}
#' 
#' \item{\code{ano}}{Fator com cinco níveis que representa o ano, de
#'     \code{1995} a \code{1996}.}
#' 
#' \item{\code{trim}}{Fator com quatro níveis que representa o trimestre
#'     em estudo, de \code{1} a \code{4}.}
#' 
#' \item{\code{lat}}{Latitude, definida como distância ao Equador medida
#'     ao longo do meridiano de Greenwich.}
#' 
#' \item{\code{long}}{Longitude, definida como distância ao meridiano de
#'     Greenwich medida ao longo do Equador.}
#' 
#' \item{\code{dias}}{Dias de pesca.}
#' 
#' \item{\code{captura}}{Quantidade de peixes-batata capturados, em kg.}
#' 
#' \item{\code{cpue}}{Captura por unidade de esforço, calculada como
#'     razão da quantidade de peixes-batata capturados (\code{captura})
#'     pelo número de dias de pesca \code{dias}.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 2.4.2, pág. 127)
#'
#' @references Paula, G. A., Oshiro, C. H. (2001). Relatório de Análise
#'     Estatística sobre o Projeto: Análise de Captura por Unidade de
#'     Esforço de Peixe-Batata na Frota Paulista. RAE-CEA0102, IME-USP.
#' @examples
#' data(PaulaEg2.4.2)
#' 
#' str(PaulaEg2.4.2)
#' 
#' # Separando as covariáveis numéricas
#' index <- sapply(PaulaEg2.4.2, is.numeric)
#' 
#' # Número de observações em cada combinação das covariáveis
#' # não numéricas
#' ftable(table(PaulaEg2.4.2[, !index]))
#' 
#' library(lattice)
#' 
#' # Relação marginal da variável resposta com as covariáveis
#' # não numéricas
#' bwplot(cpue ~ frota, data = PaulaEg2.4.2)
#' bwplot(cpue ~ ano, data = PaulaEg2.4.2)
#' bwplot(cpue ~ trim, data = PaulaEg2.4.2)
#' 
#' # Relação da variável resposta com as combinações das
#' # covariáveis não numéricas
#' ue <- with(PaulaEg2.4.2, paste(ano, trim, sep = "-"))
#' bwplot(cpue ~ ue | frota, data = PaulaEg2.4.2,
#'        scales = list(x = list(rot = 90)))
#' 
#' # Verificando a suposição de coeficiente de variação constante,
#' # desconsiderando as covariáveis tri e numéricas
#' resumo <- aggregate(cpue ~ frota + ano, data = PaulaEg2.4.2,
#'                     FUN = function(x) {
#'                         c("Média" = mean(x),
#'                           "D.Padrão" = sd(x),
#'                           "C.Variação" = sd(x)/mean(x),
#'                           "n" = length(x))
#'                     })
#' ftable(xtabs(cpue ~ frota + ano, data = resumo))
#' 
#' # Relação das covariáveis numéricas
#' splom(~PaulaEg2.4.2[, index], groups = frota,
#'       data = PaulaEg2.4.2,
#'       auto.key = list(column = 2))
#'
NULL

#' @name PaulaEg2.4.3
#' @title Valores Pagos de Seguros sob Influ\enc{ê}{e}ncia de Representa\enc{çã}{ca}o Legal
#' @description Dados referentes aos valores pagos de seguros
#'     individuais por danos com acidentes pessoais no período de
#'     janeiro de 1998 a junho de 1999 (18 meses). O estudo completo
#'     (Jong e Heller, 2008) contém o acompanhamento dos seguros desde
#'     1989. No período considerado aqui foram pagos 769 seguros, sendo 
#'     armazenadas as informações: se houve representação
#'     legal, tempo operacional para pagamento e mês em que ocorreu o
#'     acidente.
#' @format Um \code{data.frame} com 769 observações e 4 variáveis.
#'     \describe{
#' 
#' \item{\code{valor}}{Valor pago do seguro, em dólares australianos.}
#' 
#' \item{\code{rl}}{Fator com dois níveis que indica, se no seguro em
#'     análise, há representação legal do indivíduo.}
#' 
#' \item{\code{mes}}{Fator com 15 níveis que indica o mês de ocorrência
#'     do acidente. Os níveis deste fator são codificados e não
#'     informou-se quais os meses que eles representam.}
#' 
#' \item{\code{to}}{Tempo operacional para pagamento do seguro. Essa
#'     variável assume valores de 0,1 a 31,9, pois são considerados
#'     apenas os 18 últimos meses do estudo.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 2.4.3, pág. 136)
#'
#' @references De Jong, P., Heller, G. Z. (2008). Generalized linear
#'     models for insurance data (Vol. 136). Cambridge: Cambridge
#'     University Press. 
#' @examples
#' data(PaulaEg2.4.3)
#' 
#' str(PaulaEg2.4.3)
#' 
#' # Número de seguros pagos em cada combinação de mês e
#' # representação legal
#' ftable(table(PaulaEg2.4.3[, c("mes", "rl")]))
#' table(PaulaEg2.4.3[, c("rl")])
#' 
#' library(lattice)
#' 
#' xyplot(log(valor) ~ to | rl,
#'        data = PaulaEg2.4.3,
#'        type = c("p", "g", "smooth"),
#'        lwd = 2,
#'        strip = strip.custom(
#'            strip.names = TRUE,
#'            var.name = "Representação Legal",
#'            sep = ": "))
#' 
#' densityplot(~valor | rl,
#'             data = PaulaEg2.4.3,
#'             grid = TRUE,
#'             scales = list(x = list(relation = "free")),
#'             strip = strip.custom(
#'                 strip.names = TRUE,
#'                 var.name = "Representação Legal",
#'                 sep = ": "))
#'
NULL

#' @name PaulaEg2.5.2
#' @title Aduba\enc{çã}{ca}o de Nitrog\enc{ê}{e}nio e Fosfato em Milhos
#' @description Dados de um experimento inteiramente casualizado em que
#'     a produtividade de milho é estudada segundo combinações de
#'     quantidades de nitrogênio (N) e fosfato (P2O5) utilizadas na
#'     adubação.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis.
#'     \describe{
#'
#' \item{\code{N}}{Quantidade de nitrogênio utilizada na adubação, em
#'     libras/acre.}
#'
#' \item{\code{P2O5}}{Quantidade de fosfato utilizada na adubação, em
#'     libras/acre.}
#'
#' \item{\code{prod}}{Produtividade de milho, em libras/acre.}
#'
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 2.5.2, pág. 144)
#'
#' @examples
#' data(PaulaEg2.5.2)
#'
#' str(PaulaEg2.5.2)
#'
#' ftable(table(PaulaEg2.5.2[, c("N", "P2O5")]))
#'
#' library(reshape2)
#' da <- melt(PaulaEg2.5.2, id.vars = 3,
#'            variable.name = "adub",
#'            value.name = "qtde")
#'
#' library(lattice)
#' xyplot(prod ~ qtde | adub,
#'        data = da,
#'        type = c("p", "g", "smooth"),
#'        strip = strip.custom(
#'            factor.levels = c("Nitrogênio", "Fosfato")))
#'
NULL

#' @name PaulaEg2.8.1
#' @title Compara\enc{çã}{ca}o de Tipos de Snack
#' @description Dados de um experimento desenvolvido pelo Departamento
#'     de Nutrição da Faculdade de Saúde Pública da USP em que 5 tipos
#'     diferentes de um novo snack, com baixo teor de gordura e de
#'     ácidos graxos, foram comparados ao longo de 20 semanas. Nesse
#'     novo produto a gordura vegetal hidrogenada, responsável pela
#'     fixação do aroma do produto, foi substituída, totalmente ou
#'     parcialmente, por óleo de canola. Ao todo foram produzidas 750 
#'     observações, referentes a 15 avaliações para cada tipo de snack 
#'     a cada 2 semanas.
#' @format Um \code{data.frame} com 750 observações e 3 variáveis.
#'     \describe{
#' 
#' \item{\code{semana}}{Semana da avaliação.}
#' 
#' \item{\code{tipo}}{Tipo de snack avaliado. Os níveis representam as 
#'     seguintes configurações:
#'     \code{A}: 22\% de gordura, 0\% de óleo de canola, \code{B}: 0\%
#'     de gordura, 22\% de óleo de canola, \code{C}: 17\% de gordura,
#'     5\% de óleo de canola, \code{D}: 11\% de gordura, 11\% de óleo de
#'     canola e \code{E}: 5\% de gordura, 17\% de óleo de canola.}
#' 
#' \item{\code{fnpc}}{Força necessária para o cisalhamento.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 2.8.1, pág. 150;
#'     Exemplo 2.9.3, pág. 169.)
#'
#' @examples
#' data(PaulaEg2.8.1)
#' 
#' str(PaulaEg2.8.1)
#' 
#' # Experimento balanceado, 15 observações para cada tipo em cada
#' # semana
#' ftable(PaulaEg2.8.1[, c("tipo", "semana")])
#' xtabs(fnpc ~ tipo + semana, data = PaulaEg2.8.1)
#' 
#' library(lattice)
#' bwplot(fnpc ~ tipo | factor(semana),
#'        data =  PaulaEg2.8.1,
#'        as.table = TRUE,
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "semana"))
#' 
#' # Estatísticas descritivas
#' resumo <- aggregate(fnpc ~ tipo + semana,
#'                     data = PaulaEg2.8.1,
#'                     FUN = function(x) {
#'                         c("Média" = mean(x),
#'                           "D.Padrão" = sd(x),
#'                           "C.Variação" = sd(x)/mean(x),
#'                           "n" = length(x))
#'                     })
#' ftable(xtabs(fnpc ~ tipo + semana, data = resumo))
#' 
#' xyplot(fnpc[, "Média"] ~ semana,
#'        groups = tipo,
#'        data = resumo,
#'        type = c("l", "g"),
#'        auto.key = list(
#'            points = FALSE,
#'            lines = TRUE,
#'            title = 'snack',
#'            corner = c(0.1, 0.9)))
#'
NULL

#' @name PaulaEg3.5.1
#' @title Associa\enc{çã}{ca}o entre fungicida e desenvolvimento de tumor
#' @description Dados de um experimento realizado para avaliar
#'    o possível efeito cancerígeno do fungicida Avadex. Foram utilizados 
#'    403 camundongos. Desses, 65 receberam o fungicida e foram acompanhados 
#'    durante 85 semanas, verificando-se o desenvolvimento ou não de tumor 
#'    cancerígeno. Os demais animais não receberam o fungicida (grupo controle) 
#'    e também foram acompanhados pelo mesmo período.
#'    
#' @format Um \code{data.frame} com 4 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{sexo}{Sexo do camundongo (macho = 1 e fêmea = 0).}
#'     
#' \item{trat}{Identifica a presença ou não do tratamento (sim = 1 e não = 0).}
#'
#' \item{casos}{Número inteiro que identifica a quantidade de casos
#'     ocorridos.}
#'
#' \item{exp}{Quantidade de camundongos expostos.}
#'
#' }
#' 
#' @keywords GLM binarios
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.5.1 pág. 201)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.5.1)
#'
#' barchart(casos/exp ~ trat | sexo,  data = PaulaEg3.5.1,
#'          xlab="Grupo", ylab="Proporção de casos",
#'          scales=list(x=list(labels=c("Controle","Tratado"))),
#'          strip=strip.custom(var.name="Sexo", 
#'          factor.levels=c(" Fêmea", "Macho"),
#'          strip.levels=rep(TRUE,2)), 
#'          main="Associação entre fungicida e desenvolvimento de tumor")
NULL




#' @name PaulaEg3.5.2
#' @title Efeito de extrato vegetal
#' @description Dados de um experimento conduzido para avaliar o efeito de 
#'    diversos extratos vegetais na mortalidade de embriões de 
#'    \emph{Biomphalaria Glabrata}. Para o extrato vegetal aquoso frio de 
#'    folhas de \emph{P. Hyrsiflora} foram consideradas 7 amostras, sendo
#'    que em cada uma delas 50 embriões foram submetidos a uma particular 
#'    dose do extrato vegetal, registrando-se, após o vigésimo dia, o 
#'    número de embriões mortos.
#'    
#' @format Um \code{data.frame} com 2 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{dose}{Dose de extrato vegetal aplicada (em partes por milhão).}
#'
#' \item{emb}{Número observado de embriões mortos.}
#'     
#' }
#' @keywords GLM binarios
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.5.2 pág. 203)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.5.2)
#'
#' str(PaulaEg3.5.2)
#' 
#' barchart(emb/(sum(emb)) ~ dose,  data = PaulaEg3.5.2, 
#'          stack=TRUE, col= "lightblue",
#'          xlab="Dose (em ppm)", ylab="Proporção de embriões mortos", 
#'          main="Efeito de extrato vegetal")
#' 
NULL

#' @name PaulaEg3.6.11a
#' @title Exposi\enc{çã}{ca}o de besouros
#' @description Dados de  um estudo sobre o efeito da exposição de  
#'     besouros adultos a diferentes doses de disulfeto de carbono gasoso 
#'     \emph{(CS2)}, durante cinco horas. Foram registrados os números 
#'     de besouros mortos.  
#' 
#' @format Um \code{data.frame} com 8 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{mortos}{Quantidade observada de besouros mortos.}
#'     
#' \item{exp}{Quantidade de besouros expostos a cada dose.}
#'
#' \item{dose}{Dose de disulfeto de carbono gasoso à qual os besouros
#'    foram expostos.}
#'     
#' }
#' @keywords GLM binarios
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.6.11a pág. 237)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.6.11a)
#' 
#' str(PaulaEg3.6.11a)
#'
#' xyplot(mortos/(sum(mortos)) ~ dose,  data = PaulaEg3.6.11a, 
#'          type = "o",
#'          xlab = "Dose de disulfeto de carbono gasoso", 
#'          ylab = "Proporção de besouros mortos", 
#'          main = expression("Exposição de besouros a"~CS[2]))
#' 
NULL

#' @name PaulaEg3.6.11b
#' @title Idade do in\enc{í}{i}cio da menstrua\enc{çã}{ca}o em garotas de Vars\enc{ó}{o}via
#' @description Dados de  um estudo em que se investigou a idade do início 
#'     da menstruação em 3918 garotas de Varsóvia. Para 25 médias de 
#'     idade foram observadas a ocorrência  ou não  do início de períodos
#'     de menstruação nas adolescentes. 
#'     
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{menst}{Número de garotas menstruando.}
#'     
#' \item{entre}{Número de garotas entrevistadas.}
#'
#' \item{idade}{Idade media.}
#'     
#' }
#' @keywords GLM
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.6.11b pág. 241)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.6.11b)
#'
#'        
#' xyplot((menst/entre) ~ idade,  data = PaulaEg3.6.11b, 
#'        type = c("p","a"),
#'        xlab = "Idade média", 
#'        ylab = "Meninas menstruando/Entrevistadas", 
#'        main = "Idade do início da menstruação em garotas de Varsóvia.")
NULL

#' @name PaulaEg3.6.9c
#' @title Prefer\enc{ê}{e}ncia de consumidores
#' @description Dados sobre a preferência de consumidores americanos com
#'    relação a automóveis. Uma amostra aleatória de 263 consumidores foi 
#'    considerada. As seguintes variáveis foram observadas para cada 
#'    comprador: preferência quanto ao tipo de automóvel, idade, sexo e 
#'    estado civil. 
#'     
#' @format Um \code{data.frame} com 263 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{pref}{Preferência do comprador por um tipo de automóvel (1 = americano, 
#'    0 = japonês).}
#'     
#' \item{idade}{Idade do comprador (em anos).}
#'
#' \item{sexo}{Sexo do comprador (0 =  masculino; 1 = feminino).}
#'
#' \item{est}{Estado civil do comprador (0 = casado, 1 = solteiro).}
#'
#' }
#' @keywords GLM binarios 
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.6.9c pág. 231)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.6.9c)
#'
#' str(PaulaEg3.6.9c)
#' 
#' bwplot(idade ~ pref,  data = PaulaEg3.6.9c, 
#'        type="p",
#'        xlab="Preferência - Japonês e Americano", 
#'        ylab="Idade do Comprador", 
#'        main="Preferência")
#' 
NULL

#' @name PaulaEg4.2.6
#' @title Perfis de Clientes de uma Loja nas \enc{Á}{A}reas de uma Cidade
#' @description Dados apresentados em Neter et al. (1996) sobre um
#'     estudo do perfil dos clientes de determinada loja oriundos de 110
#'     áreas de uma cidade. O interesse do estudo é relacionar o número
#'     esperado de clientes em cada área com as demais cinco variáveis
#'     explicativas registradas
#' @format Um \code{data.frame} com 110 observações e 6 variáveis.
#'     \describe{
#' 
#' \item{\code{nclien}}{Número de clientes da loja na área.}
#' 
#' \item{\code{ndomic}}{Número de domicílios na área (em mil).}
#' 
#' \item{\code{renda}}{Renda média anual da área (em mil USD).}
#' 
#' \item{\code{idade}}{Idade média dos domicílios (em anos).}
#' 
#' \item{\code{distac}}{Distância entre a área e o concorrente mais
#'     próximo (em milhas).}
#' 
#' \item{\code{distal}}{Distância entre a área e a loja (em milhas).}
#'
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 4.2.6, pág. 299)
#'
#' @references Neter, J., Kutner, M. H., Nachtsheim, C. J., Wasserman,
#'     W. (1996). Applie Linear Regression Models (3tr ed.). Irwin,
#'     Illinois.
#' @examples
#'
#' data(PaulaEg4.2.6)
#' 
#' str(PaulaEg4.2.6)
#' 
#' library(lattice)
#' splom(PaulaEg4.2.6, type = c("p", "smooth"), lwd = 2)
#'
NULL

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

#' @name PaulaEg5.2.8a
#' @title N\enc{ú}{u}mero de \enc{Á}{A}caros em Placas de Esterco de Gado
#' @description Dados de um experimento desenvolvido para estudar  
#'     a distribuição do número de ácaros em placas de esterco de gado 
#'     bovino no estado de São Paulo, obtidos por Paula e Tavares, 1992. 
#'     Essas placas são depósitos de ovos da mosca do chifre 
#'     (\emph{Haematobia irritans}), uma das pragas mais importantes da 
#'     pecuária brasileira. Os ácaros são inimigos naturais da mosca do 
#'     chifre, uma vez que se alimentam de ovos e larvas dessas moscas.
#'     
#' @format Um \code{data.frame} com 102 observações e 8 variáveis.
#' \describe{
#' 
#' \item{\code{esp2}}{Número de ácaros coletados da espécie 2.}
#' 
#' \item{\code{esp3}}{Número de ácaros coletados da espécie 3.}
#' 
#' \item{\code{esp6}}{Número de ácaros coletados da espécie 6.}
#' 
#' \item{\code{esp14}}{Número de ácaros coletados da espécie 14.}
#' 
#' \item{\code{placa}}{Número de partes da placa de esterco onde 
#'     foram coletados os ácaros. (1 ou 6)}
#' 
#' \item{\code{posic}}{Posição na placa de esterco onde foram coletados 
#' os ácaros (central ou lateral).}
#' 
#' \item{\code{reg}}{Região onde a placa de esterco foi coletada (São
#'      Roque, Pindamonhangaba, Nova Odessa ou Ribeirão Preto).}
#' 
#' \item{\code{temp}}{Temperatura no local da coleta, medida
#'     \eqn{C^{\circ}}.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 5.2.8a, pág. 359)
#' 
#' @references Paula, G. A. e Tavares, H. R. (1992). Relatório de
#'     Análise Estatística sobre o Projeto: Ácaros Associados ao Esterco
#'     Bovino. Subsídios para Controle Biológico da Mosca do Chifre.
#'     RAECEA 9206, IME-USP
#' @examples
#' 
#' data(PaulaEg5.2.8a)
#'
#' str(PaulaEg5.2.8a)
#'
#' library(lattice)
#'
#' index <- sapply(PaulaEg5.2.8a, is.numeric)
#' splom(PaulaEg5.2.8a[, index],
#'       type = c("p", "g"),
#'       lwd = 2, col.line = 1)
#'
#'
NULL

#' @name PaulaEg5.2.8c
#' @title Manchas na Folha de Cevada
#' @description Dados apresentados em McCullagh e Nelder (1989),
#'     envolvendo a incidência de um tipo de mancha observada na folha
#'     da cevada, com 10 variedades em 9 diferentes locações.
#'
#' @format Um \code{data.frame} com 90 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{incid}}{Proporção da área afetada na folha de cevada.}
#' 
#' \item{\code{local}}{Local onde foi realizado o experimento (1-9).}
#' 
#' \item{\code{varied}}{Variedade de cevada (1-10).}
#' 
#' }
#' 
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 5.2.8a, pág. 367)
#' 
#' @references McCullagh, P. e Nelder, J. A. (1989). Generalized Linear
#'     Models, 2nd. Edition. Chapman and Hall, London. Tabela 9.2.
#' @examples
#'
#' data(PaulaEg5.2.8c)
#'
#' str(PaulaEg5.2.8c)
#'
#' boxplot(incid ~ local, data = PaulaEg5.2.8c,
#'         xlab = "Local",
#'         ylab = "Área Afetada")
#'
#' boxplot(incid ~ varied, data = PaulaEg5.2.8c,
#'         xlab = "Variedade",
#'         ylab = "Área Afetada")
#'
NULL

#' @name PaulaEg5.5.1
#' @title Ensaio Cl\enc{í}{i}nico com Indiv\enc{í}{i}duos Epil\enc{é}{e}pticos
#' @description Dados apresentados em Diggle, Liang e Zeger (1994), 
#'     referentes a um ensaio clínico com 59 indivíduos epilépticos,
#'     aleatorizados de modo que cada um recebesse uma droga
#'     antiepiléptica (progabide) ou placebo.
#'     Os dados de cada indivíduo consistem do número de ataques 
#'     epilépticos num período de oito semanas antes do tratamento, além
#'     do número de ataques em cada período de duas semanas, num total
#'     de quatro períodos após o tratamento. O interesse do estudo é
#'     verificar possível diminuição na taxa de ataques epilépticos.
#'     
#' @format Um \code{data.frame} com 295 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{indiv}}{Identificação do indivíduo.}
#' 
#' \item{\code{period}}{Período de observação (1 = antes do tratamento, 
#'     2 = primeiro período após o tratamento, 3 = segundo período após 
#'     o tratamento e 4 = terceiro período após o tratamento).}
#' 
#' \item{\code{seman}}{Número de semanas em cada período.}
#' 
#' \item{\code{ataq}}{Número de ataques em cada período.}
#' 
#' \item{\code{trat}}{Tratamento aplicado a cada indivíduo (placebo ou
#'     progabide).}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 5.5.1, pág. 379)
#' 
#' @references Diggle, P. J.; Liang, K. Y. e Zeger, S. L. (1994).
#'     Analysis of Longitudinal Data. Oxford University Press.
#'     Seção 8.4.
#' @examples
#' 
#' data(PaulaEg5.5.1)
#'
#' str(PaulaEg5.5.1)
#'
#' library(lattice)
#'
#' xyplot(ataq ~ period | trat, groups = indiv, data = PaulaEg5.5.1,
#'        type = c("p", "a"),
#'        xlab = "Período",
#'        ylab = "Número de ataques epilépticos")
#'        
NULL

#' @name PaulaEg5.5.2
#' @title Estudo sobre Condi\enc{çã}{ca}o Respirat\enc{ó}{o}ria
#' @description Estudo discutido em Myers, Montgomery e Vining (2002)
#'     que envolve a comparação de dois tratamentos aplicados em
#'     pacientes com problemas respiratórios. Nesse estudo foi
#'     considerado um total de 56 pacientes, sendo que 27 receberam o
#'     tratamento com uma droga ativa e 29 receberam placebo.
#'     Cada paciente foi observado em quatro ocasiões em que foi medida
#'     a condição respiratória. Foram também registrados o sexo e a
#'     idade de cada paciente além da pré-existência de um nível base.

#' @format Um \code{data.frame} com 224 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{paci}}{Identificação do paciente.}
#' 
#' \item{\code{trat}}{Tratamento aplicado ao paciente (droga ativa ou
#'     placebo).}
#' 
#' \item{\code{sexo}}{Sexo do paciente.}
#' 
#' \item{\code{idade}}{Idade (em anos).}
#' 
#' \item{\code{nivel}}{Pré-existência de um nível base (ausência ou
#'     presença).}
#' 
#' \item{\code{cond}}{Condição respiratória do paciente (boa ou ruim).}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 5.5.2, pág. 385)
#' 
#' @references Myers, R.H.; Montgomery, D. C.; Vining, G. G. (2002).
#'     Generalized Linear Models: With Applications in Engineering and
#'     the Sciences. John Wiley, New York. Seção 6.5.
#' @examples
#'
#' data(PaulaEg5.5.2)
#'
#' str(PaulaEg5.5.2)
#'            
#' library(latticeExtra)
#'
#' tb <- with(PaulaEg5.5.2, table(nivel, trat, sexo, cond))
#' ftable(tb)
#' ftable(prop.table(tb))
#'
#' useOuterStrips(
#'     barchart(prop.table(tb), stack = FALSE,
#'              xlab = "",
#'              scales = list(x = list(relation = "free")),
#'              between = list(x = 0.5),
#'              auto.key = list(
#'                  title = "Condição Respiratória",
#'                  columns = 2, cex.title = 1)
#'     )
#' )
#'            
NULL

#' @name PaulaEg5.5.3
#' @title Ensaio cl\enc{í}{i}nico da pr\enc{é}{e}-exist\enc{ê}{e}ncia de placa dent\enc{á}{a}ria
#' @description Dados de um ensaio clínico realizado com 109 indivíduos, 
#'     distribuídos de forma aleatória para receberem um líquido
#'     tipo A (34 indivíduos), um líquido tipo B (36 indivíduos) ou um
#'     líquido controle (39 indivíduos). Placas dentárias foram 
#'     avaliadas e classificadas segundo um escore no início do 
#'     tratamento, após 3 e 6 meses.
#'     
#' @format Um \code{data.frame} com 323 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{volunt}}{Identificação do paciente voluntário.}
#' 
#' \item{\code{period}}{Momento de avaliação: (1 = início do tratamento,
#'    2 = após 3 meses e 3 = após 6 meses.}
#' 
#' \item{\code{trat}}{Tipo de tratamento (1 = placebo, 2 = líquido A e
#'     3 = líquido B.}
#' 
#' \item{\code{escore}}{Escore atribuído às placas dentárias.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exemplo 5.5.3, pág. 390)
#' 
#' @references Hadgu, A. e Koch, G. (1999). Application of generalized 
#' estimating equations to a dental randomized clinical trial. Journal 
#' of Biopharmaceutical Statistics 9, 161-178.
#' 
#' @examples
#' 
#' data(PaulaEg5.5.3)
#' 
#' require(lattice)
#' 
#' xyplot(escore ~ period | trat, groups = volunt,
#'       xlab = 'Período', ylab = 'Escore', type = c("p", "a"), 
#'       data = PaulaEg5.5.3)
#'       
NULL

#' @name PaulaEx1.13.19
#' @title Estudo Demogr\enc{á}{a}fico dos Estados Norte-Americanos
#' @description Dados referentes a um estudo demográfico sobre os 50
#'     estados norte-americanos. Neste estudo foram registradas 8
#'     variáveis que contém informações sobre características da
#'     população e do estado. Dentre elas temos a variável expectativa
#'     de vida, havendo interesse em explicá-la utilizando as demais
#'     informações.
#' @format Um \code{data.frame} com 50 observações e 9 variáveis.
#'     \describe{
#'
#' \item{\code{estado}}{Nome do estado.}
#'
#' \item{\code{pop}}{População estimada em julho de 1975.}
#'
#' \item{\code{renda}}{Renda per capita em 1974 (em dólares).}
#'
#' \item{\code{analf}}{Proporção de analfabetos em 1970.}
#'
#' \item{\code{crime}}{Taxa de criminalidade por cem mil habitantes em
#'     1976.}
#'
#' \item{\code{estud}}{Porcentagem de estudantes que concluem o segundo
#'     grau em 1970.}
#'
#' \item{\code{ndias}}{Número de dias do ano com temperatura abaixo de
#'     0\eqn{^\circ C} na cidade mais importante do estado.}
#'
#' \item{\code{area}}{Área do estado (em milhas quadradas).}
#'
#' \item{\code{expvi}}{Expectativa de vida nos anos de 1969-1970.}
#'
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.19,
#'     pág. 109)
#' @examples
#'
#' data(PaulaEx1.13.19)
#' str(PaulaEx1.13.19)
#'
#' library(car)
#'
#' PaulaEx1.13.19$dens <- PaulaEx1.13.19$pop/PaulaEx1.13.19$area
#' scatterplotMatrix(~expvi + analf + crime + estud + ndias + dens,
#'                   data = PaulaEx1.13.19)
#'
#'
NULL

#' @name PaulaEx1.13.20
#' @title Vendas de Telhados de Madeira
#' @description Dados referentes a vendas de um tipo de telhado de madeira 
#'     em 26 filiais de uma rede de lojas de construção. Um dos objetivos do
#'     estudo é tentar prever o número esperado de telhados vendidos
#'     dadas as demais variáveis registradas.
#'     
#' @format Um \code{data.frame} com 26 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{gasto}}{Gasto com publicidade do produto (em mil
#'     dólares).}
#' 
#' \item{\code{ncli}}{Número de clientes cadastrados (em milhares).}
#' 
#' \item{\code{nmar}}{Número de marcas concorrentes do produto}
#' 
#' \item{\code{poten}}{Potencial da loja, informação advinda da rede de
#'     lojas de construção (quanto maior o valor maior o potencial de
#'     venda da filial).}
#' 
#' \item{\code{telha}}{Total de telhados vendidos (em mil metros
#'     quadrados).}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.20,
#'     pág. 110)
#' @examples
#' data(PaulaEx1.13.20)
#' 
#' str(PaulaEx1.13.20)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.20,
#'       type = c("p", "g", "smooth"),
#'       col.line = 1)
#'
NULL

#' @name PaulaEx1.13.21
#' @title N\enc{ú}{u}mero de Octanas na Produ\enc{çã}{ca}o de Gasolina
#' @description Dados referentes à produção de gasolina numa determinada
#'     refinaria segundo três variáveis observadas durante o processo e
#'     uma quarta variável que é uma combinação das três primeiras. A
#'     variável de interesse é o número de octanas da gasolina
#'     produzida.
#' @format Um \code{data.frame} com 82 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{x1}}{Variável não nomeada. Imagina-se que se tenha
#'     relação com o número de octanas da gasolina.}
#' 
#' \item{\code{x2}}{Variável não nomeada. Imagina-se que se tenha
#'     relação com o número de octanas da gasolina.}
#'
#' \item{\code{x3}}{Variável não nomeada. Imagina-se que se tenha
#'     relação com o número de octanas da gasolina.}
#' 
#' \item{\code{x4}}{Valores de uma combinação (não informada) das
#'     variável \code{x1}, \code{x2} e \code{x3}.}
#' 
#' \item{\code{nocta}}{Número de octanas da gasolina produzida.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.21,
#'     pág. 110)
#' @examples
#' data(PaulaEx1.13.21)
#' 
#' str(PaulaEx1.13.21)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.21,
#'       type = c("p", "g", "smooth"),
#'       col.line = 1)
#'
NULL

#' @name PaulaEx1.13.22
#' @title Vendas de Im\enc{ó}{o}veis
#' @description Dados relativos a uma amostra de 27 imóveis vendidos. Os
#'     resgistros visam identificar as características que influenciam
#'     no preço de venda de um imóvel.
#' @format Um \code{data.frame} com 27 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{impos}}{Valor cobrado de imposto, em 100 dólares.}
#' 
#' \item{\code{areat}}{Área do terreno, em 1000 pés quadrados.}
#' 
#' \item{\code{areac}}{Área construída, em 1000 pés quadrados.}
#' 
#' \item{\code{idade}}{Idade da residência, em anos.}
#' 
#' \item{\code{preco}}{Preço de venda do imóvel, em 1000 dólares.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.22,
#'     pág. 111)
#' @examples
#' data(PaulaEx1.13.22)
#' 
#' str(PaulaEx1.13.22)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.22,
#'       type = c("p", "g", "smooth"),
#'       col.line = 1)
#'
NULL

#' @name PaulaEx1.13.23
#' @title Di\enc{â}{a}metro de Cerejeiras da Pensilv\enc{â}{a}nia
#' @description Dados referentes ao registro das variáveis diâmetro,
#'     altura e volume de 31 árvores cerejeiras numa floresta no estado
#'     da Pensilvânia. O objetivo do estudo é predizer o volume da
#'     árvore a partir de sua altura e diâmetro.
#' @format Um \code{data.frame} com 31 observações e 3 variáveis.
#'     \describe{
#' 
#' \item{\code{diam}}{Diâmetro da cerejeira, em polegadas. Provavelmente
#'     o diâmetro foi calculado à altura do peito (\eqn{\approx}
#'     1.30m).}
#' 
#' \item{\code{alt}}{Altura da cerejeira, em pés.}
#' 
#' \item{\code{vol}}{Volume da cerejeira, em pés cúbicos.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.23,
#'     pág. 111)
#' @examples
#' data(PaulaEx1.13.23)
#' 
#' str(PaulaEx1.13.23)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.23,
#'       type = c("p", "g", "smooth"),
#'       lwd = 2, col.line = 1)
#'
NULL

#' @name PaulaEx1.13.24
#' @title Porcentagens de Retorno de A\enc{çõ}{co}es 
#' @description Dados referentes aos retornos diários das ações das
#'     empresas Microsoft, General Eletric (GE) e Ford no período de
#'     janeiro de 2002 a abril de 2003. No registro dessas ações também
#'     se dispõe da taxa de retorno livre de risco e do retorno do
#'     mercado, para padronizar as comparações.
#' @format Um \code{data.frame} com 311 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{tbill}}{Taxa de retorno livre de risco.}
#' 
#' \item{\code{sp500}}{Porcentagem de retorno do mercado.}
#' 
#' \item{\code{micro}}{Porcentagem de retorno das ações da empresa
#'     Microsoft.}
#' 
#' \item{\code{ge}}{Porcentagem de retorno das ações da empresa General
#'     Eletric (GE).}
#' 
#' \item{\code{ford}}{Porcentagem de retorno das ações da empresa Ford.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercicío 1.13.24,
#'     pág. 112)
#' @examples
#' data(PaulaEx1.13.24)
#' 
#' str(PaulaEx1.13.24)
#' 
#' library(reshape)
#' da <- melt(PaulaEx1.13.24, measure.vars = c("micro", "ge", "ford"),
#'            variable_name = "empresa")
#' 
#' library(lattice)
#' densityplot(~value, groups = empresa, data = da,
#'             auto.key = list(corner = c(0.9, 0.9)))
#' 
#' xyplot((sp500 - tbill) ~ (value - tbill) | empresa,
#'        data = da, type = c("p", "smooth", "g"))
#'
NULL

#' @name PaulaEx1.13.25
#' @title Venda de Im\enc{ó}{o}veis em Eugene, Estatdos Unidos
#' @description Dados de um estudo cujo objetivo foi tentar prever o
#'     preço de venda de um imóvel dada sua área total. Foram 50 imóveis
#'     da região de Eugene, Estados Unidos com valores de área e preço
#'     de venda registrados.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis.
#'     \describe{
#' 
#' \item{\code{area}}{Área total do imóvel, em pés quadrados.}
#' 
#' \item{\code{preco}}{Preço de venda do imóvel, em mil dólares.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.25,
#'     pág. 112)
#' @examples
#' data(PaulaEx1.13.25)
#' 
#' str(PaulaEx1.13.25)
#' 
#' library(lattice)
#' xyplot(preco ~ area, data = PaulaEx1.13.25,
#'        type = c("p", "smooth", "g"))
#'
NULL

#' @name PaulaEx2.10.15
#' @title Consumo de Energia em Domic\enc{í}{i}lios
#' @description Dados referentes ao consumo de energia em 53 domicílios
#'     e demanda de energia no horário de pico.
#'     
#' @format Um \code{data.frame} com 53 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{consu}}{Consumo de energia num determinado mês, em
#'     quilowatts-hora.}
#' 
#' \item{\code{deman}}{Demanda de energia no horário de pico (unidade de
#'     medida não informada).}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.15,
#'     pág. 178)
#'
#' @references Montgomery, D. C., Peck, E. A., Vining,
#'     G. G. (2001). Introduction to Linear Regression Analysis (3rd
#'     Ed.). John Wiley, New York.
#'
#' @examples
#' data(PaulaEx2.10.15)
#' 
#' str(PaulaEx2.10.15)
#' 
#' library(lattice)
#' xyplot(deman ~ consu, data = PaulaEx2.10.15,
#'        pch = 19, lwd = 2, type = c("p", "g", "smooth"))
#'
NULL

#' @name PaulaEx2.10.16
#' @title Rela\enc{çã}{ca}o entre Publicidade e Faturamento em Restaurantes
#' @description Dados referentes a faturamentos anuais e gastos com
#'     publicidade de uma amostra de 30 restaurantes. O objetivo
#'     principal é relacionar o faturamento médio com os gastos com
#'     publicidade.
#' @format Um \code{data.frame} com 30 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{fatura}}{Faturamento anual do restaurante, em mil
#'     dólares.}
#' 
#' \item{\code{gastos}}{Gastos do restaurante com publicidade, em mil
#'     dólares.}
#' 
#' }
#' @keywords positivo-assimétrico RS
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.16,
#'     pág. 179)
#'
#' @references Montgomery, D. C., Peck, E. A., Vining,
#'     G. G. (2001). Introduction to Linear Regression Analysis (3rd
#'     Ed.). John Wiley, New York.
#'
#' @examples
#' data(PaulaEx2.10.16)
#' 
#' str(PaulaEx2.10.16)
#' 
#' library(lattice)
#' xyplot(fatura ~ gastos,
#'        data = PaulaEx2.10.16,
#'        type = c("p", "g", "smooth"))
#'
NULL

#' @name PaulaEx2.10.17
#' @title Qualidade de Filme em M\enc{á}{a}quinas Fotogr\enc{á}{a}ficas
#' @description Dados provenientes de um experimento cujo objetivo foi
#'     avaliar a qualidade de determinado filme utilizado em máquinas
#'     fotográficas sob três condições experimentais (relacionadas à
#'     temperatura do filme). Para tal avaliação considerou-se a
#'     variável tempo de duração do filme como a resposta e a
#'     densidade máxima do filme como variável de controle.
#' @format Um \code{data.frame} com 21 observações e 3 variáveis.
#' \describe{
#'
#' \item{\code{temp}}{Fator com três níveis que indicam a condição
#'     experimental do filme (temperaturas \code{72ºC}, \code{82ºC} e
#'     \code{92ºC}).}
#'
#' \item{\code{dmax}}{Valor da densidade máxima do filme (unidade de
#'     medida não informada).}
#'
#' \item{\code{tempo}}{Tempo de duração do filme, mensurado em horas.}
#'
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.17,
#'     pág. 179)
#'
#' @references Myers, R. H., Montgomery, D. C., Vining,
#'     G. G. (2002). Generalized Linear Models: With Applications in
#'     Engineering and the Sciences. John Wiley, New York.
#'
#' @examples
#' data(PaulaEx2.10.17)
#'
#' str(PaulaEx2.10.17)
#'
#' library(lattice)
#' xyplot(tempo ~ dmax,
#'        groups = temp,
#'        data = PaulaEx2.10.17,
#'        type = c("p", "g"),
#'        auto.key = list(
#'            corner = c(0.95, 0.95),
#'            lines = TRUE,
#'            cex.title = 1,
#'            title = "Temperatura"
#'        ), panel = function(x, y, ...){
#'            panel.xyplot(x, y, ...)
#'            panel.loess(x, y, col = 1, ...)
#'        })
#'
NULL

#' @name PaulaEx2.10.19
#' @title Estudo Sobre Leucemia e Caracter\enc{í}{i}stica Morfol\enc{ó}{o}gica nas C\enc{é}{e}lulas
#'     Brancas 
#' @description Dados provenientes de um estudo em que pacientes com
#'     leucemia foram classificados segundo a ausência ou presença de
#'     uma característica morfológica nas células brancas. O objetivo do
#'     estudo foi avaliar essa característica morfológica a partir do
#'     tempo de sobrevivência dos pacientes.
#' @format Um \code{data.frame} com 32 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{ncel}}{Número de células brancas
#'     na amostra do paciente.}
#' 
#' \item{\code{carac}}{Fator com dois níveis que representa a presença
#'     (\code{AG positivo}) ou ausência (\code{AG negativo}) da
#'     característica morfológica.}
#' 
#' \item{\code{tempo}}{Tempo de sobrevivência do paciente, em semanas.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 2.10.19,
#'     pág. 180)
#'
#' @references Feigl, P., Zelen, M. (1965). Estimation of exponential
#'     survival probabilities with concomitant information. Biometrics
#'     21, 826-838.
#'
#' @examples
#' data(PaulaEx2.10.19)
#' 
#' str(PaulaEx2.10.19)
#' 
#' library(latticeExtra)
#' xyplot(tempo ~ ncel,
#'        groups = carac,
#'        data = PaulaEx2.10.19,
#'        type = c("p", "g", "spline"),
#'        scales = list(x = list(log = 10)),
#'        xscale.components = xscale.components.logpower,
#'        auto.key = list(
#'            corner = c(0.95, 0.95),
#'            lines = TRUE,
#'            cex.title = 1,
#'            title = "Característica morfológica "
#'            ))
#'
NULL

#' @name PaulaEx2.10.20
#' @title Estudo de Ap\enc{ó}{o}lices de Seguros de Ve\enc{í}{i}culos
#' @description Dados de uma amostra aleatória de 996 apólices de
#'     seguros de veículos referentes ao período de 2004-2005, extraída
#'     de Jong e Heller (2008). Foram 9 variáveis observadas na amostra
#'     dentre as quais o número de sinistros e o custo total dos
#'     sinistros que são, naturalmente, as variáveis de interesse. O
#'     objetivo do estudo é relacionar o custo médio de um sinistro
#'     (razão entre o custo total e o número de sinistros) com as demais
#'     variáveis do estudo (variáveis da apólice, que compreendem
#'     informações do veículo e do principal condutor).
#' @format Um \code{data.frame} com 996 observações e 9 variáveis.
#'     \describe{
#' 
#' \item{\code{valorv}}{Valor do veículo, em dez mil dólares
#'     australianos.}
#' 
#' \item{\code{expos}}{Exposição do veículo (unidade de medida não
#'     informada).}
#' 
#' \item{\code{tipov}}{Tipo de veículo (fator com onze níveis).}
#' 
#' \item{\code{idadev}}{Idade do veículo (fator com quatro níveis).}
#' 
#' \item{\code{sexoc}}{Sexo do principal condutor, fator com dois níveis
#'     \code{M} masculino e \code{F} feminino.}
#' 
#' \item{\code{areac}}{Área de residência do principal condutor (fator
#'     com seis níveis).}
#' 
#' \item{\code{idadec}}{Idade do principal condutor (fator com seis
#'     níveis).}
#' 
#' \item{\code{nsinis}}{Número de sinistros no período.}
#' 
#' \item{\code{csinis}}{Custo total dos sinistros, em dólares
#'     australianos.}
#' 
#' }
#' @keywords positivo-assimétrico quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.20,
#'     pág. 181; exercício 5.6.3, pág. 396)
#'
#' @references De Jong, P., Heller, G. Z. (2008). Generalized linear
#'     models for insurance data (Vol. 136). Cambridge: Cambridge
#'     University Press.
#'
#' @examples
#' data(PaulaEx2.10.20)
#' 
#' str(PaulaEx2.10.20)
#' 
#' # Variável de interesse - custo médio de um sinistro
#' PaulaEx2.10.20$cmsinis <- with(PaulaEx2.10.20, csinis/nsinis)
#' PaulaEx2.10.20 <- PaulaEx2.10.20[, -c(8:9)]
#' 
#' # Separando as covariáveis numéricas
#' index <- sapply(PaulaEx2.10.20, is.numeric)
#' 
#' # Frequências dos níveis das variáveis categóricas
#' par(mfrow = c(2, 3), las = 2, mar = c(4, 3, 3, 1))
#' sapply(PaulaEx2.10.20[, !index], function(x) plot(table(x)))
#' 
#' # Dispersão das variáveis numéricas
#' library(lattice)
#' splom(PaulaEx2.10.20[, index],
#'       type = c("p", "g", "smooth"),
#'       lwd = 2, col.line = 1)
#'
NULL

#' @name PaulaEx2.10.7
#' @title Resist\enc{ê}{e}ncia de Vidros sob Efeito de Voltagem e Temperatura
#' @description Resultados de um experimento em que a resistência de um
#'     determinado tipo de vidro foi avaliada segundo quatro níveis de
#'     voltagem e duas temperaturas. Foram 32 avaliações referentes a 4
#'     repetições de cada tratamento (combinação dos níveis de voltagem
#'     e temperatura.)
#' @format Um \code{data.frame} com 32 observações e 3 variáveis.
#'     \describe{
#' 
#' \item{\code{tempo}}{Tempo de resistência do vidro, mensurado em
#'      horas.}
#' 
#' \item{\code{volt}}{Fator com quatro níveis de voltagem considerados,
#'     valores em quilovolts (kV).}
#' 
#' \item{\code{temp}}{Fator com dois níveis de temperatura considerados,
#'     valores em graus Celsius.}
#' 
#' }
#' @keywords positivos-assimétricos
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.7,
#'     pág. 175)
#'
#' @references Lawless, J. F. (1982). Statistical Models and Methods for
#'     Lifetime Data. John Wiley, New York.
#'
#' @examples
#' data(PaulaEx2.10.7)
#' 
#' str(PaulaEx2.10.7)
#' 
#' library(lattice)
#' xyplot(tempo ~ volt,
#'        groups = temp,
#'        data = PaulaEx2.10.7, 
#'        type = c("p", "g", "a"),
#'        auto.key = list(
#'            corner = c(0.9, 0.9),
#'            lines = TRUE,
#'            cex.title = 1,
#'            title = "Temperatura"
#'            ))
#' 
#' resumo <- aggregate(tempo ~ temp + volt,
#'                     data = PaulaEx2.10.7,
#'                     FUN = function(x) {
#'                         c("Média" = mean(x),
#'                           "D.Padrão" = sd(x),
#'                           "C.Variação" = sd(x)/mean(x),
#'                           "n" = length(x))
#'                     })
#' ftable(xtabs(tempo ~ temp + volt, data = resumo))
#' 
#' trat <- with(resumo, paste(temp, volt, sep = "-"))
#' xyplot(tempo[, "C.Variação"] ~ factor(trat),
#'        data = resumo,
#'        ylab = "Coeficiente de Variação",
#'        grid = TRUE,
#'        scales = list(x = list(rot = 45)),
#'        panel = function(x, y, ...) {
#'            panel.xyplot(x, y, ...)
#'            panel.abline(h = mean(y))
#'        })
#'
NULL

#' @name PaulaEx3.7.14
#' @title Confiabilidade de equipamentos
#'
#' @description Dados referentes aos tempos de falhas de equipamentos.
#' 
#' @format Um \code{data.frame} com 4 variáveis.
#' 
#' \describe{
#'
#' \item{\code{temp}}{Tempo de operação (1 a 5).}
#' 
#' \item{\code{equip}}{Tipo de equipamento (A, B ou C).}
#' 
#' \item{\code{nit}}{Número de equipamentos que não falharam até o tempo t,
#' t = 1,2,3,4,5.}
#'
#' \item{\code{yit}}{Número de falhas no intervalo entre os tempos t-1 e t.}
#'
#' }
#' @keywords RLAS
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. 
#'     (Exercício 3.7.14, página 272)
#'     
#' @references Lawless, J. F. (1982). Statistical Models and Methods for 
#'     Lifetime Data. John Wiley & Sons, New York. (Página 389)
#' 
#' @references Efron, B. (1988). Logistic regression, survival analysis, 
#'     and the Kaplan-Meier curve. J. Amer. Stat. Assoc., 83.
#'     (Páginas 414-425)
#' 
#' @examples
#' 
#' require(lattice)
#' 
#' data(PaulaEx3.7.14)
#' 
#' PaulaEx3.7.14$temp <- as.factor(PaulaEx3.7.14$temp)
#' 
#' xyplot(nit~temp, groups = equip, data = PaulaEx3.7.14, type = "o", 
#'        auto.key = TRUE, xlab = "Tempos", 
#'        ylab = "N° de equipamentos operantes",
#'        main = "Confiabilidade dos equipamentos")
NULL

#' @name PaulaEx3.7.15
#' @title Tumor benigno na mama
#'
#' @description Estudo de caso-controle com emparelhamentos do tipo 1:1,
#' em que os casos foram mulheres com diagnóstico confirmado de tumor
#' benigno na mama. Os controles foram mulheres sadias diagnosticadas no
#' mesmo hospital e período dos casos. 
#' 
#' @format Um \code{data.frame} com 100 observações e 14 variáveis.
#'
#' \describe{
#'
#' \item{\code{est}}{Identificação do estrato (par).}
#' 
#' \item{\code{obs}}{Observação (1 = caso, 2 = controle).}
#' 
#' \item{\code{idade}}{Idade do paciente no momento da entrevista (em anos).}
#'
#' \item{\code{diag}}{Diagnóstico (1:caso, 0:controle).}
#' 
#' \item{\code{tesc}}{Tempo de escolaridade (em anos).}
#'
#' \item{\code{gesc}}{Grau de escolaridade (0 = nenhum, 1 = segundo grau, 
#' 2 = técnico, 3 = universitário, 4 = mestrado, 5 = doutorado).}
#' 
#' \item{\code{cur}}{Checkup Regular (1 = sim, 2 = não).}
#' 
#' \item{\code{ipg}}{Idade da primeira gravidez.}
#' 
#' \item{\code{iim}}{Idade do início da menstruação.}
#' 
#' \item{\code{numab}}{Número de abortos}
#' 
#' \item{\code{numfi}}{Número de filhos.}
#' 
#' \item{\code{peso}}{Peso (em libras).}
#' 
#' \item{\code{iupmen}}{Idade do último período menstrual.}
#' 
#' \item{\code{ec}}{Estado civil (1 = casada, 2 = divorciada, 3 = separada, 
#' 4 = viúva, 5 = solteira).}
#' 
#' }
#' 
#' @keywords RL
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 3.7.14, pág. 273)
#'     
#'     
#' @references Hosmer, D. W. e Lemeshow, S. (1989). 
#' Applied Logistic Regression. John Wiley, New York. (Capítulo.7)
#' 
#' @examples
#'
#' data(PaulaEx3.7.15)
#' 
#' # Transformar variáveis
#' 
#' str(PaulaEx3.7.15)
#' 
#' PaulaEx3.7.15 <- transform(
#'                  PaulaEx3.7.15, 
#'                  PaulaEx3.7.15$est <- as.factor(PaulaEx3.7.15$est),
#'                  PaulaEx3.7.15$diag <- as.factor(PaulaEx3.7.15$diag),
#'                  PaulaEx3.7.15$cur <- as.factor(PaulaEx3.7.15$cur),
#'                  PaulaEx3.7.15$ec <- as.factor(PaulaEx3.7.15$ec)
#'                   )
#' # Libra para Kg
#' PaulaEx3.7.15$peso <- PaulaEx3.7.15$peso*0.453592 
#' 
#' pairs(~ idade + diag + tesc + gesc + cur + ipg + idmens 
#'       + numab + numfi + peso + idupmens + ec,
#'       data = PaulaEx3.7.15, 
#'       main = "Matriz de gráficos de dispersão - tumor benigno na mama")
NULL

#' @name PaulaEx3.7.16
#' @title Experimento de toxicidade
#'
#' @description Estudo que descreve os resultados de um
#' experimento em que a toxicidade de três concentrações (rotenine,
#' deguelin e mistura, essa última como uma mistura das duas pri-
#' meiras) é investigada. As concentrações foram testadas em insetos e
#' observado, para cada dose, o número de insetos mortos.
#' 
#' @format Um \code{data.frame} com 4 variáveis. 
#'
#' \describe{
#'
#' \item{\code{conc}}{Concentração (R = rotenine, 
#' D = deguelin e M = mistura).}
#' 
#' \item{\code{dose}}{Dose aplicada da concentração.}
#' 
#' \item{\code{exp}}{Número de insetos expostos.}
#'
#' \item{\code{mort}}{Número de insetos mortos.}
#' 
#' }
#' 
#' @keywords binomial
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. 
#'     (Exercício 3.7.14, pág. 274 e 275)
#'     
#' @references Morgan, B. J. T. (1992). Analysis of Quantal Response Data. 
#' Chapman and Hall, London. (Página 90)
#' 
#' @examples
#' 
#' data(PaulaEx3.7.16)
#' 
#' require(lattice)
#' 
#' xyplot(mort/exp ~ dose, groups = conc, data = PaulaEx3.7.16, type = 'o',
#' auto.key = TRUE, ylab = "Proporção de insetos mortos",
#' xlab = "Dose", main = "Sobrevivência dos insetos expostos a toxina")
NULL

#' @name PaulaEx3.7.19
#' @title Gestantes fumantes
#'
#' @description Estudo com gestantes fumantes, no qual as participantes   
#' foram classificadas segundo os fatores de idade, número de cigarros  
#' consumidos, tempo de gestação, e a condição (sobrevivência) da criança.
#' 
#' @format Um \code{data.frame} com 5 variáveis.
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade (<30 anos ou +30).}
#' 
#' \item{\code{ncigar}}{Número de cigarros consumidos por dia 
#' (< 5 ou +5).}
#' 
#' \item{\code{tgest}}{Tempo de gestação (<= 260 dias ou >260).}
#'
#' \item{\code{sobres}}{Número de crianças que sobreviveram.}
#' 
#' \item{\code{sobren}}{Número de crianças que não sobreviveram.}
#' 
#' }
#' 
#' @keywords ML
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. 
#'     (Exercício 3.7.19, página 276)
#'     
#'     
#' @references Agresti A. (1990). Categorical Data Analysis. John Wiley, 
#' New York. (página 253))
#' 
#' @examples
#'
#' data(PaulaEx3.7.19)
#' 
#' require(vcd)
#' 
#' # Paciente que sobreviveram 
#' ss <- xtabs(sobres ~ idade + ncigar + tgest, PaulaEx3.7.19)
#' 
#' # Paciente que não sobreviveram
#' ns <- xtabs(sobren ~ idade + ncigar + tgest, PaulaEx3.7.19)
#' 
#' mosaic(ss,
#'        main = "Crianças que sobreviveram",
#'        labeling_args = list(
#'          set_varnames = c(ncigar = "Número de cigarros",
#'                           tgest = "Tempo de gestação")))
#' 
#' mosaic(ns,
#'        main = "Crianças que não sobreviveram",
#'        labeling_args = list(
#'          set_varnames = c(ncigar = "Número de cigarros",
#'                           tgest = "Tempo de gestação")))
NULL

#' @name PaulaEx3.7.20
#' @title Pacientes com leucemia
#'
#' @description Estudo com 51 pacientes adultos, 
#' previamente diagnosticados com um tipo agudo de leucemia, que 
#' receberam um tipo de tratamento sendo verificada, após  certo 
#' período, a eficiência ou não do tratamento.
#' 
#' @format Um \code{data.frame} com 51 pacientes e 
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade do paciente (em anos).}
#'
#' \item{\code{mdd}}{Mancha diferencial da doença (em porcentagem).} 
#' 
#' \item{\code{if}}{Infiltração na medula (em porcentagem).}
#'
#' \item{\code{cl}}{Células com leucemia (em porcentagem).}
#' 
#' \item{\code{md}}{Malignidade da doença (*10^3).}
#' 
#' \item{\code{tmax}}{Temperatura máxima antes do tratamento (*10 F°).}
#' 
#' \item{\code{trat}}{Tratamento (1 = satisfatório, 0 = não satisfatório).}
#' 
#' \item{\code{tsobre}}{Tempo de sobrevivência  (em meses).} 
#'
#' \item{\code{sit}}{Situação (1 = sobrevivente, 0 = não sobrevivente).} 
#' }
#' 
#' @keywords ML
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. 
#'     (Exercício 3.7.19, página 276)
#'     
#' @references Everitt, B. S. (1994). 
#' A Handbook of Statistical Analysis using S-Plus. 
#' Chapman and Hall, London. (Página 253)
#' 
#' @examples
#'
#' data(PaulaEx3.7.20)
#' 
#' # Transformar variáveis
#' 
#' str(PaulaEx3.7.20)
#' 
#' PaulaEx3.7.20 <- transform(
#'                  PaulaEx3.7.20,
#'                  PaulaEx3.7.20$trat <- as.factor(PaulaEx3.7.20$trat),
#'                  PaulaEx3.7.20$sit <- as.factor(PaulaEx3.7.20$sit)
#'                  )
#' 
#' 
#' require(car)
#' 
#' scatterplotMatrix(~ idade + mdd + im + cl + md + tmax + trat 
#'                   + tsobre + sit,
#'                   spread = FALSE, 
#'                   pch = 20, 
#'                   lwd = 2,
#'                  smooth = TRUE, 
#'                   data = PaulaEx3.7.20, 
#'                   cex = 1.5,
#'                   main = "Matriz de gráficos de dispersão - Leucemia")
NULL

#' @name PaulaEx3.7.21
#' @title Fatores Ambientais na Abund\enc{â}{a}ncia de Duas Esp\enc{é}{e}cies de Lagarto
#' @description Dados referentes à distribuição de duas espécies de
#'     lagarto (\emph{grahani} e \emph{opalinus}) segundo quatro
#'     fatores: periodo do dia, comprimento da madeira, largura da
#'     madeira, local de ocupação.
#' @format Um \code{data.frame} com 23 observações e 6 variáveis.
#'     \describe{
#'
#' \item{\code{grahani}}{Quantidade de lagartos da espécie
#'     \emph{grahani}.}
#'
#' \item{\code{opalinus}}{Quantidade de lagartos da espécie
#'     \emph{opalinus}.}
#'
#' \item{\code{periodo}}{Fator com 3 níveis referentes ao período do
#'     dia (manhã, meio-dia, tarde). }
#'
#' \item{\code{comp}}{Fator com 2 níveis referentes ao comprimento da
#'      madeira (curta, comprida).}
#'
#' \item{\code{larg}}{Fator com 2 níveis referentes a largura da
#'     madeira (estreita, larga). }
#'
#' \item{\code{local}}{Fator com 2 níveis referentes ao local de
#'     ocupação (claro, escuro). }
#'
#' }
#' @keywords RM contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 21, pág. 277)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEx3.7.21)
#' str(PaulaEx3.7.21)
#'
#' xyplot(grahani + opalinus ~ periodo, data = PaulaEx3.7.21,
#'        type = c("p", "a"),
#'        ylab = "Número de animais encontrados",
#'        xlab = "Período")
#'
#' xyplot(grahani + opalinus ~ comp, data = PaulaEx3.7.21,
#'        type = c("p", "a"),
#'        ylab = "Número de animais encontrados",
#'        xlab = "Comprimento da madeira")
#'
#' xyplot(grahani + opalinus ~ local, data = PaulaEx3.7.21,
#'        type = c("p", "a"),
#'        ylab = "Número de animais encontrados",
#'        xlab = "Local")
#'
NULL

#' @name PaulaEx3.7.22
#' @title Avalia\enc{çã}{ca}o de caduquice
#' @description Os dados provém de um experimento com 54 indivíduos
#'     considerados idosos. Eles foram submetidos a um exame
#'     psiquiátrico para avaliar a ocorrência ou não de sintoma de
#'     caduquice.
#'
#'     Acredita-se que o escore obtido em um exame feito previamente
#'     esteja associado com a ocorrência ou não do sintoma.
#' @format Um \code{data.frame} com 55 observações e 2 variáveis.
#'
#' \describe{
#'
#' \item{\code{score}}{Escore do indivíduo no exame psicológico.}
#'
#' \item{\code{resp}}{Resposta binária que representando a ocorrência
#'     (1) ou não ocorrência (0) do sintoma.}
#'
#' }
#' @keywords binomial
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 3.7.22,
#'     pág. 278)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEx3.7.22)
#' str(PaulaEx3.7.22)
#'
#' xyplot(resp ~ score, data = PaulaEx3.7.22,
#'        xlab = "Score do teste psicológico",
#'        ylab = "Sintoma de caduquice",
#'        jitter.y = TRUE, amount = 0.02)
#'
NULL

#' @name PaulaEx3.7.23
#' @title Incid\enc{ê}{e}ncia de Dengue e Fatores Socio-econ\enc{ô}{o}micos
#' @description Os dados provém de um estudo para investigar a
#'     incidência de dengue numa determinanda cidade da costa mexicana.
#'
#'     Foram escolhidos aleatóriamente 196 indivíduos de dois setores da
#'     cidade e cada um respondeu às seguintes perguntas: idade, nível
#'     sócio-econômico, setor da cidade onde mora e se contraiu a doença
#'     recentemente.
#'
#'     Um dos objetivos do estudo é tentar prever ou explicar a
#'     probabilidade de um indivíduo contrair a doença dado as variáveis
#'     explicativas: \code{idade}, \code{nivel} e \code{setor}.
#' @format Um \code{data.frame} com 196 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade do entrevistado, em anos.}
#'
#' \item{\code{nivel}}{Fator ordinal de 3 níveis representando o nível
#'     sócio-econômico do entrevistado (alto, médio, baixo).}
#'
#' \item{\code{setor}}{Fator categórico de 2 níveis representando o
#'     setor da cidade que o entrevistado mora.}
#'
#' \item{\code{caso}}{Respoata binária que representa se o entrevistado
#'     contraiu (1) ou não contraiu (0) a doença recentemente.}
#'
#' }
#' @keywords binomial
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 3.7.23,
#'     pág. 279)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEx3.7.23)
#' str(PaulaEx3.7.23)
#'
#' xyplot(caso ~ idade | nivel, groups = setor, data = PaulaEx3.7.23,
#'        jitter.y = TRUE, amount = 0.02, as.table = TRUE,
#'        xlab = "Idade do entrevistado (anos)",
#'        ylab = "Indicadora de ter contraído dengue")
#'
NULL

#' @name PaulaEx3.7.24
#' @title Cor dos Olhos dos Filhos em Fun\enc{çã}{ca}o dos Pais e Av\enc{ó}{o}s
#' @description Os dados são de 78 famílias com pelo menos 6 filhos
#'     cada uma. Nestas famílias, codificou-se a cor dos pais e dos avós
#'     e o número total de filhos por casal e o número de filhos com
#'     olhos de cor clara.
#' @format Um \code{data.frame} com 78 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cop}}{Fator de 6 níveis referentes a cor dos olhos dos
#'     pais, com a seguinte codificação: 1 - ambos claros, 2 - ambos
#'     castanhos, 3 - ambos escuros, 4 - claro e castanho, 5 - claro e
#'     escuro e 6: castanho e escuro.}
#'
#' \item{\code{coa}}{Fator de 15 níveis referentes a cor dos olhos dos
#'     avós, com a seguinte codificação: 1 - todos claros, 2 - todos
#'     castanhos, 3 - todos escuros, 4 - três claros e um castanho, 5 -
#'     três claros e um escuro, 6 - um claro e três castanhos, 7 - um
#'     escuro e três castanhos, 8 - um claro e três escuros, 9 - um
#'     castanho e três escuros, 10 - dois claros e dois castanhos, 11 -
#'     dois claros e dois escuros, 12 - dois castanhos e dois escuros,
#'     13 - dois claros, um castanho e um escuro, 14 - um claro, dois
#'     castanhos e um escuro e 15 - um claro, um castanho e dois
#'     escuros.}
#'
#' \item{\code{nFilho}}{Número de filhos na família.}
#'
#' \item{\code{nClaro}}{Número de filhos com olhos claros na família.}
#'
#' }
#' @keywords binomial
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 3.7.24,
#'     pág. 279)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEx3.7.24)
#' str(PaulaEx3.7.24)
#'
#' xyplot(nClaro/nFilho ~ cop, data = PaulaEx3.7.24, jitter.x = TRUE,
#'        type = c("p", "a"))
#'
NULL

#' @name PaulaEx3.7.25
#' @title Pulsa\enc{çã}{ca}o Alterial em Repouso em Homens que Fuman
#' @description Os dados provém de uma amostra de 92 homens adultos que
#'     foram questionados sobre o hábito de fumar. Neles foi medido peso
#'     e pulsação, classificada como normal e alta. Deseja-se saber se a
#'     pulsação alta é influência pelo hábito de fumar, controlando-se
#'     para o efeito do peso.
#' @format Um \code{data.frame} com 92 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{pulsa}}{Fator categórico de 2 níveis que representa a
#'     classificação da pulsação em repouso em normal ou alta.}
#'
#' \item{\code{fuma}}{Fator categórico de 2 níveis referente ao hábito
#'     de fumar: sim ou não.}
#'
#' \item{\code{peso}}{Peso do indivíduo, em quilogramas (kg).}
#'
#' }
#' @keywords binomial
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 3.7.25,
#'     pág. 280)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEx3.7.25)
#' str(PaulaEx3.7.25)
#'
#' xyplot(pulsa ~ peso, groups = fuma, data = PaulaEx3.7.25,
#'        jitter.y = TRUE,
#'        auto.key = list(columns = 2,
#'                        title = "Fumante", cex.title = 1.1),
#'        xlab = "Peso (kg)", ylab = "Pulsação em repouso")
#'
#' mosaicplot(xtabs(~fuma + pulsa, data = PaulaEx3.7.25))
#'
NULL

#' @name PaulaEx3.7.7a
#' @title Influ\enc{ê}{e}ncia de Extrato Vegetal e Qu\enc{í}{i}mico
#' @description Experimento de dose-resposta conduzido para avaliar a 
#'     influência dos extratos vegetais "aquoso frio de folhas", "aquoso
#'     frio de frutos" e de um extrato químico, respectivamente, na morte 
#'     de um determinado tipo de caramujo. 
#'      
#' @format Um \code{data.frame} com 7 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{dose}}{Dose.}
#' 
#' \item{\code{cexp}}{Caramujos expostos.}
#' 
#' \item{\code{cmort}}{Caramujos mortos.}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Ex 3.7.7a, pág. 269)
#'
#' @examples
#'
#' data(PaulaEx3.7.7a)
#' 
#' str(PaulaEx3.7.7a)
#' 
#' library(lattice)
#' 
#' xyplot(PaulaEx3.7.7a$cmort/PaulaEx3.7.7a$cexp ~ dose,
#' data = PaulaEx3.7.7a,
#' xlab = "Dose",
#' type = c("o"),
#' ylab = "Proporção de mortos",
#' auto.key = list(space="top", columns=2, 
#'                 title="Caramujos", cex.title=1,
#'                 lines=TRUE, points=FALSE))
#'
NULL

#' @name PaulaEx3.7.7b
#' @title Influ\enc{ê}{e}ncia de Extrato Vegetal e Qu\enc{í}{i}mico
#' @description Experimento de dose-resposta conduzido para avaliar a 
#'     influência dos extratos vegetais "aquoso frio de folhas", "aquoso
#'     frio de frutos" e de um extrato químico, respectivamente, na morte 
#'     de um determinado tipo de caramujo. 
#'      
#' @format Um \code{data.frame} com 7 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{dose}}{Dose.}
#' 
#' \item{\code{cexp}}{Caramujos expostos.}
#' 
#' \item{\code{cmort}}{Caramujos mortos.}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Ex 3.7.7b, pág. 269)
#'
#' @examples
#'
#' data(PaulaEx3.7.7b)
#' 
#' str(PaulaEx3.7.7b)
#' 
#' library(lattice)
#'                        
#' xyplot(PaulaEx3.7.7b$cmort/PaulaEx3.7.7b$cexp ~ dose,
#'      data = PaulaEx3.7.7b,
#'      xlab = "Dose",
#'      type = c("o"),
#'      ylab = "Proporção de mortos",
#'      auto.key = list(space="top", columns=2, 
#'                      title="Caramujos", cex.title=1,
#'                      lines=TRUE, points=FALSE))
#'
#'
NULL

#' @name PaulaEx3.7.7c
#' @title Influ\enc{ê}{e}ncia de Extrato Vegetal e Qu\enc{í}{i}mico
#' @description Experimento de dose-resposta conduzido para avaliar a 
#'     influência dos extratos vegetais "aquoso frio de folhas", "aquoso
#'     frio de frutos" e de um extrato químico, respectivamente, na morte 
#'     de um determinado tipo de caramujo. 
#'      
#' @format Um \code{data.frame} com 7 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{dose}}{Dose.}
#' 
#' \item{\code{cexp}}{Caramujos expostos.}
#' 
#' \item{\code{cmort}}{Caramujos mortos.}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Ex 3.7.7c, pág. 269)
#'
#' @examples
#'
#' data(PaulaEx3.7.7c)
#' 
#' str(PaulaEx3.7.7c)
#' 
#' library(lattice)
#' 
#' xyplot(PaulaEx3.7.7c$cmort/PaulaEx3.7.7c$cexp ~ dose,
#'      data = PaulaEx3.7.7c,
#'      xlab = "Dose",
#'      type = c("o"),
#'      ylab = "Proporção de mortos",
#'      auto.key = list(space="top", columns=2, 
#'                   title="Caramujos", cex.title=1,
#'                   lines=TRUE, points=FALSE))
#'
#' 
#'
NULL

#' @name PaulaEx3.7.8
#' @title Sal\enc{á}{a}rio de Executivos
#' @description Dados referentes a um experimento desenvolvido para avaliar
#'      a germinação de um determinado tipo de semente. A tabela abaixo 
#'      apresenta o número de sementes que germinaram após cinco dias para 
#'      cada 100 sementes submetidas a cada condição experimental.
#'      
#' @format Um \code{data.frame} com 18 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{temp}}{Temperatura da germinação.}
#' 
#' \item{\code{numid}}{Nível da umidade.}
#' 
#' \item{\code{ntemp}}{Nível da temperatura.}
#' 
#' \item{\code{sgerm}}{Número de sementes que germinaram.}
#' 
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Ex 3.7.8, pág. 270)
#'
#' @examples
#'
#' data(PaulaEx3.7.8)
#' 
#' str(PaulaEx3.7.8)
#' 
#' library(lattice)
#' 
#' PaulaEx3.7.8$ntemp <- as.factor(PaulaEx3.7.8$ntemp)
#' 
#' PaulaEx3.7.8$numid <- as.factor(PaulaEx3.7.8$numid)
#' xyplot(sgerm ~ numid | ntemp,
#'        data = PaulaEx3.7.8,
#'        xlab = "Nível de temperatura",
#'        ylab = "Número de sementes germinadas")
#'
NULL

#' @name PaulaEx4.6.15
#' @title N\enc{ú}{u}mero de Infec\enc{çõ}{co}es de Ouvido em Recrutas Americanos
#' @description Dados referentes a um estudo realizado em 1990 com
#'     recrutas americanos em que a variável de interesse era o número de
#'     infecções de ouvido. Além disso, foram coletadas as seguintes 
#'     informações sobre os recrutas: hábito de nadar, local em que 
#'     costuma nadar, idade e sexo.
#'     
#' @format Um \code{data.frame} com 287 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{habito}}{Fator com dois níveis que indica o hábito em
#'     nadar do recruta (\code{ocasional} ou \code{frequente}).}
#' 
#' \item{\code{local}}{Fator com dois níveis que indica o local onde o
#'     recruta costuma nadar, (\code{praia} ou \code{piscina}).}
#' 
#' \item{\code{idade}}{Idade do recruta, em anos categorizados em três
#'     níveis (\code{15-19}, \code{20-24} e \code{25-29}).}
#' 
#' \item{\code{sexo}}{Sexo (\code{F} para feminino e \code{M} para masculino).}
#' 
#' \item{\code{ninfec}}{Número de infecções de ouvido diagnosticadas
#'     pelo próprio recruta.}
#' 
#' }
#' @keywords contagem superdispersão
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.15,
#'     pág. 346)
#'
#' @references Hand, D. J, Daly, F., Lunn, A. D., McConway, K. J.,
#'     Ostrowski, E. (1994). A Handbook of Small Data Sets. Chapman and
#'     Hall, London.
#' @examples
#'
#' data(PaulaEx4.6.15)
#' 
#' str(PaulaEx4.6.15)
#' 
#' xt <- xtabs(ninfec ~ ., data = PaulaEx4.6.15)
#' ftable(prop.table(xt))
#' plot(xt, xlab = "Hábito", main = "")
#' 
#' mv <- aggregate(ninfec ~ ., FUN = function(x)
#'     c(mu = mean(x), var = var(x)), data = PaulaEx4.6.15)
#' 
#' library(lattice)
#' 
#' # Relação Média Variância
#' xyplot(ninfec[, "var"] ~ ninfec[, "mu"],
#'         data = mv,
#'         ylab = "Variância amostral",
#'         xlab = "Média amostral",
#'         panel = function(x, y) {
#'             panel.xyplot(x, y, type = c("p", "r"), grid = TRUE)
#'             panel.abline(a = 0, b = 1, lty = 2)
#'         })
#' 
#' library(latticeExtra)
#' useOuterStrips(    
#'     xyplot(ninfec ~ idade | habito + local,
#'            groups = sexo,
#'            data = PaulaEx4.6.15,
#'            jitter.x = TRUE, jitter.y = TRUE,
#'            type = c("p", "g", "a"),
#'            ylab = "Número de infecções",
#'            auto.key = list(space = "right", cex.title = 1,
#'                            title = "Sexo"))
#'     )
#'
NULL

#' @name PaulaEx4.6.17
#' @title Avalia\enc{çã}{ca}o de Detergentes
#' @description Dados resultantes de uma pesquisa em que 1008 pessoas
#'     receberam duas marcas de detergente, \code{X} e \code{M}, e
#'     posteriormente responderam a perguntas sobre a temperatura da
#'     água, uso anterior do detergente \code{M}, detergente de
#'     preferência e maciez da água.
#' @format Um \code{data.frame} com 24 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{temp}}{Temperatura da água, mensurada em dois níveis
#'     (\code{alta} e \code{baixa}).}
#' 
#' \item{\code{usom}}{Uso anterior do detergente da marca \code{M}
#'     (\code{sim} ou \code{não}).}
#' 
#' \item{\code{prefer}}{Detergente de preferência (\code{M} ou
#'     \code{X}).}
#' 
#' \item{\code{maciez}}{Maciez da água, mensurada em três níveis
#'     (\code{forte}, code{leve} e \code{média}).}
#' 
#' \item{\code{nind}}{Número de pessoas que tiveram respostas conforme
#'     combinação de \code{temp}, \code{usom}, \code{prefer} e \code{maciez}.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.17,
#'     pág. 347)
#'
#' @references Bishop, Y. M. M., Fienberg, S. E., Holland,
#'     P. W. (1975). Discrete Multivariate Analysis: Theory and
#'     Practice. MIT Press, Cambridge.
#' @examples
#'
#' data(PaulaEx4.6.17)
#' 
#' str(PaulaEx4.6.17)
#' 
#' xt <- xtabs(nind ~ ., data = PaulaEx4.6.17)
#' ftable(xt)
#' plot(xt)
#' 
#' library(latticeExtra)
#' useOuterStrips(    
#'     xyplot(nind ~ maciez | prefer + usom,
#'            groups = temp,
#'            data = PaulaEx4.6.17,
#'            type = c("p", "g", "a"),
#'            xlab = "Maciez da água",
#'            ylab = "Número de indivíduos",
#'            auto.key = list(cex.title = 1, columns = 2,
#'                            title = "Temperatura da água"))
#'     )
#'
NULL

#' @name PaulaEx4.6.20
#' @title Ovos Eclodidos de Ceriodaphnia dubia sob Doses de Herbicida
#' @description Dados provenientes de um típico estudo
#'     dose-resposta. 50 animais \emph{Ceriodaphnia dubia}
#'     (pequeno invertebrado de água doce) foram submetidos a 5 diferentes
#'     dosagens do herbicida \emph{Nitrofen} (10 animais expostos a cada
#'     nível de dosagem) e, após 3 ninhadas, observou-se o número total
#'     de ovos eclodidos.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis.
#'     \describe{
#' 
#' \item{\code{dose}}{Dosagem de \emph{Nitrofen} aplicada, em mg/l.}
#' 
#' \item{\code{novos}}{Número de ovos de \emph{Ceriodaphnia dubia}
#'     eclodidos após 3 ninhadas.} 
#'
#' }
#'
#' @details A variável \code{dose} foi tomada como valor numérico,
#'     devido a natureza da variável. Todavia, se for de interesse na
#'     análise a comparação das médias dos números de ovos eclodidos,
#'     pode-se considerá-la como fator de cinco níveis (0, 80, 160, 235 e
#'     310 mg/l) e estimar as médias para cada nível
#'
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.20,
#'     pág. 349)
#'
#' @examples
#'
#' data(PaulaEx4.6.20)
#' 
#' str(PaulaEx4.6.20)
#' 
#' aggregate(novos ~ dose, FUN = function(x) c(mean(x), var(x)),
#'           data = PaulaEx4.6.20)
#' 
#' library(lattice)
#' xyplot(novos ~ dose,
#'        data = PaulaEx4.6.20,
#'        jitter.x = TRUE,
#'        xlab = "Dose", ylab = "Número de ovos",
#'        type = c("p", "g", "smooth"))
#'
NULL

#' @name PaulaEx4.6.5
#' @title Estudo Gerontol\enc{ó}{o}gico do N\enc{ú}{u}mero de Quedas
#' @description Dados provenientes de um estudo prospectivo com 100
#'     indivíduos de pelo menos 65 anos de idade em boas condições
#'     físicas em que se avaliou o número de quedas num período de seis
#'     meses registrando, além das informações: tipo de intervenção
#'     realizada, sexo e escores de balanço e força. O objetivo do
#'     estudo é relacionar o número médio de quedas com o tipo de intervenção
#'     e as demais variáveis explicativas coletadas.
#'     
#' @format Um \code{data.frame} com 100 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{nquedas}}{Número de quedas no período de seis meses.}
#' 
#' \item{\code{interv}}{Fator com dois níveis que indica a intervenção
#'     realizada (\code{E}: somente educação, \code{EF}: educação e
#'     exercícios físicos.)}
#' 
#' \item{\code{sexo}}{Fator com dois níveis que indica o sexo do
#'     indivíduo (\code{F}: feminino e \code{M}: masculino).}
#' 
#' \item{\code{balan}}{Escore do balanço do indivíduo, escala de 0 a 100.}
#' 
#' \item{\code{forca}}{Escore da força do indivíduo, escala de 0 a 100.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.5, pág. 342)
#'
#' @references Neter, J., Kutner, M. H., Nachtsheim, C. J., Wasserman,
#'     W. (1996). Applie Linear Regression Models (3tr ed.). Irwin,
#'     Illinois.
#' @examples
#'
#' data(PaulaEx4.6.5)
#' 
#' str(PaulaEx4.6.5)
#' 
#' library(lattice)
#' 
#' xyplot(nquedas ~ balan + forca | interv,
#'        groups = sexo,
#'        data = PaulaEx4.6.5,
#'        xlab = "Escore",
#'        ylab = "Número de quedas",
#'        type = c("p", "g", "smooth"),
#'        scales = list(x = list(rot = 45, relation = "free")),
#'        auto.key = list(cex.title = 1, columns = 2,
#'                        title = "Sexo"))
#' 
#' splom(~ PaulaEx4.6.5[, c("nquedas", "balan", "forca")],
#'       type = c("p", "smooth"))
#'
NULL

#' @name PaulaEx4.6.6
#' @title C\enc{â}{a}ncer Nasal em Trabalhadores de Refinaria de N\enc{í}{i}quel
#' @description Dados provenientes de um estudo de seguimento em que se
#'     acompanhou trabalhadores de uma refinaria de níquel no País de
#'     Gales durante determinado período e avaliou-se o número de ocorrências de
#'     câncer nasal. O interesse do estudo é avaliar a associação entre
#'     a taxa anual de câncer nasal e as variáveis explicativas: idade
#'     no primeiro emprego, ano do primeiro emprego e tempo decorrido
#'     desde o primeiro emprego.
#' @format Um \code{data.frame} com 72 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{idade}}{Fator com quatro níveis referente à idade (em anos)
#'     do trabalhador no seu primeiro emprego, com níveis
#'     \code{<20}, \code{20-27}, \code{27.5-34.9} e \code{>35}.}
#' 
#' \item{\code{ano}}{Fator com quatro níveis referente ao ano do
#'     primeiro emprego (\code{<1910}, \code{1910-1914},
#'     \code{1915-1919} e \code{1920-1924}).}
#' 
#' \item{\code{tempo}}{Fator com cinco níveis que indica o tempo
#'     decorrido desde o primeiro emprego, em anos, categorizados nos
#'     níveis \code{0-19}, \code{20-39}, \code{30-39}, \code{40-49} e
#'     \code{>50}.}
#' 
#' \item{\code{ncasos}}{Número de casos de câncer nasal.}
#' 
#' \item{\code{tpessoas}}{Total de pessoas|ano de observação.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.6, pág. 343)
#'
#' @references Breslow, N. E., Day, N. E. (1987). Statistical Methods in
#'     Cancer Research (vol. II). IARC Scientific Publications,
#'     International Agency for Research  on Cancer, Lyon.
#' @examples
#'
#' data(PaulaEx4.6.6)
#' 
#' str(PaulaEx4.6.6)
#' 
#' # Número de observações em cada combinação das variáveis explicativas
#' # Para modelagem não será possível a estimação de algumas interações
#' ftable(PaulaEx4.6.6[, c("idade", "ano", "tempo")])
#' 
#' # Casos de câncer seccionados pelas variáveis explicativas
#' ftable(xtabs(ncasos ~ idade + ano + tempo, data = PaulaEx4.6.6))
#' xt <- xtabs((ncasos/tpessoas)*100 ~ ., data = PaulaEx4.6.6)
#' ftable(xt)
#' plot(xt)
#' 
#' library(lattice)
#' 
#' xyplot((ncasos/tpessoas) ~ tempo | ano,
#'        groups = idade,
#'        data = PaulaEx4.6.6,
#'        type = c("p", "g", "a"),
#'        auto.key = list(space = "right", cex.title = 1,
#'                        title = "Idade"))
#' 
#' # Retirando a observação que domina a escala do eixo y
#' index <- with(PaulaEx4.6.6, which.max(ncasos/tpessoas))
#' xyplot((ncasos/tpessoas) ~ tempo | ano,
#'        groups = idade,
#'        data = PaulaEx4.6.6[-index, ],
#'        type = c("p", "g", "a"),
#'        auto.key = list(space = "right", cex.title = 1,
#'                        title = "Idade"))
#'
NULL

#' @name PaulaEx4.6.7
#' @title N\enc{ú}{u}mero de Falhas em Pe\enc{ç}{c}as de Tecido
#' @description Dados referentes à produção de peças de tecido em uma
#'     determinada fábrica. A fábrica registra o comprimento da peça
#'     produzida e o número de falhas encontradas.
#' @format Um \code{data.frame} com 32 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{comp}}{Comprimento da peça de tecido produzida, em metros.}
#' 
#' \item{\code{nfalhas}}{Número de falhas encontradas na peça.}
#' 
#' }
#' @keywords contagem superdispersão
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.7, pág. 343)
#'
#' @references Hinde, J. (1982). Compound Poisson Regression Models in R
#'     (Gilchrist ed.). Springer, New York.
#' @examples
#'
#' data(PaulaEx4.6.7)
#' 
#' str(PaulaEx4.6.7)
#'
#' library(lattice)
#' xyplot(nfalhas ~ comp, data = PaulaEx4.6.7,
#'        type = c("p", "g", "smooth"), xlab = "Comprimento", ylab = 
#'        "Número de falhas")
#' 
#' histogram( ~nfalhas/comp, data = PaulaEx4.6.7, 
#'       xlab = "Número de falhas por metro de tecido", ylab = "Frequência")
#'
NULL

#' @name PaulaEx5.6.13
#' @title An\enc{á}{a}lise da dispers\enc{ã}{a}o de um pigmento na pintura
#' @description Um experimento foi conduzido para avaliar a dispersão 
#'     de quatro diferentes pigmentos numa pintura. O procedimento 
#'     consistiu em preparar cada mistura e aplicá-las num painel usando 
#'     três métodos diferentes. O experimento é repetido em três dias distintos 
#'     e a resposta é a porcentagem de reflectância do pigmento.
#'     
#' @format Um \code{data.frame} com 36 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{painel}}{Número do painel.}
#' 
#' \item{\code{dia}}{Dia de aplicação (1, 2 ou 3).}
#' 
#' \item{\code{metod}}{Método utilizado: (1 = pincel, 2 = rolo e 
#'     3 = spray.}
#' 
#' \item{\code{mistur}}{Tipo de mistura do pigmento (1, 2, 3 ou 4).}
#' 
#' \item{\code{reflec}}{Porcetagem de reflectância do pigmento.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exercício 5.6.13, pág. 400)
#' 
#' @references Myers, R.H.; Montgomery, D. C. e Vining, G. G. (2002).
#' Generalized Linear Models: With Applications in Engineering and the 
#' Sciences. John Wiley, New York.
#' 
#' @examples
#' 
#' library(lattice)
#'
#' data(PaulaEx5.6.13)
#'
#' xyplot(reflec ~ mistur, groups = metod, auto.key = list(title = 'Método'),
#'       type = c("p", "g", "a"), data = PaulaEx5.6.13,
#'       xlab = "Mistura", ylab = "Reflectância")
#'
NULL

#' @name PaulaEx5.6.14
#' @title Compara\enc{çã}{ca}o de drogas para tratamento de leucemia
#' @description Dados referentes a um experimento em que 30 ratos tiveram
#'     uma condição de leucemia induzida, sendo submetidos, posteriormente, 
#'     a três drogas quimioterápicas. Foram coletadas de cada animal a 
#'     quantidade de células brancas, a quantidade de células vermelhas 
#'     e o número de colônias de células cancerosas, em três períodos diferentes.
#'     
#' @format Um \code{data.frame} com 120 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{rato}}{Número de identificação do rato.}
#' 
#' \item{\code{period}}{Período de avaliação (1, 2, 3 ou 4).}
#' 
#' \item{\code{trat}}{Droga quimioterápica utilizada (1, 2 ou 3).}
#' 
#' \item{\code{celubran}}{Quantidade de células brancas.}
#' 
#' \item{\code{celuverm}}{Quantidade de células vermelhas.}
#' 
#' \item{\code{celucanc}}{Número de colônias de células cancerosas.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exercício 5.6.14, pág. 401)
#' 
#' @references Myers, R.H.; Montgomery, D. C. e Vining, G. G. (2002).
#' Generalized Linear Models: With Applications in Engineering and the 
#' Sciences. John Wiley, New York.
#' 
#' @examples
#' 
#' library(lattice)
#'
#' data(PaulaEx5.6.14)
#' 
#' xyplot(celucanc ~ period, groups = rato,
#'        type = c("p", "g", "a"), data = PaulaEx5.6.14)
#'        
NULL

#' @name PaulaEx5.6.15
#' @title Ensaio cl\enc{í}{i}nico em pacientes com artrite
#' @description Ensaio clínico em que 20 pacientes com artrite 
#'     foram aleatorizados, de modo que 10 receberam o medicamento
#'     auronofin e os outros 10 receberam placebo. São consideradas como
#'     variáveis explicativas sexo e idade, além do tipo do tratamento. Os 
#'     pacientes foram consultados e avaliados em 4 ocasiões.
#'     
#' @format Um \code{data.frame} com 80 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{pacient}}{Identificação do paciente.}
#' 
#' \item{\code{period}}{Momento em que o paciente foi avaliado (1 = início 
#' do mês, 2 = após 1 mês, 3 = após 2 meses e 4 = após 3 meses.}
#' 
#' \item{\code{sexo}}{Sexo (1 = masculino e 0 = feminino).}
#' 
#' \item{\code{idade}}{Idade (em anos).}
#' 
#' \item{\code{trat}}{Tratamento aplicado placebo ou Auronofin).}
#' 
#' \item{\code{result}}{Avaliação do paciente classificada em 
#' bom e regular ou ruim.}
#' 
#' }
#' @keywords quase-verossimilhança
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exercício 5.6.14, pág. 401)
#' 
#' @references Myers, R.H.; Montgomery, D. C. e Vining, G. G. (2002).
#' Generalized Linear Models: With Applications in Engineering and the 
#' Sciences. John Wiley, New York.
#' 
#' @examples
#' 
#' library(lattice)
#' 
#' data(PaulaEx5.6.15)
#' 
#' barchart(table(PaulaEx5.6.15$result,PaulaEx5.6.15$trat, PaulaEx5.6.15$period), 
#'          auto.key = list(space="top", 
#'          columns = 4, cex.title = 1, rectangles = TRUE, points=FALSE, 
#'          title = "Período"),
#'          scales = list(y = list(relation = "free"),
#'          x = list(alternating = FALSE)),
#'          horizontal = FALSE, beside = FALSE, stack = FALSE, 
#'          xlab = "Resultado", ylab = "Frequência absoluta")
#'
NULL

#' @name PaulaTb1.6
#' @title Anos de Estudo e a Renda M\enc{é}{e}dia Mensal
#' @description Conjunto de dados que apresenta para  cada unidade da
#'     federação o número médio de anos de estudo e a renda média mensal
#'     do chefe ou chefes de domicílio.
#'      
#' @format Um \code{data.frame} com 27 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{est}}{Estado (unidade da federação).}
#' 
#' \item{\code{esc}}{Número médio de anos de estudo.}
#' 
#' \item{\code{rendm}}{Renda média mensal (em reais).}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 1.6, p?g. 80)
#'
#' @examples
#'
#' data(PaulaTb1.6)
#' 
#' str(PaulaTb1.6)
#' 
#' library(lattice)
#' 
#' xyplot(rendm ~ est,
#'         ylab = "Renda",
#'         xlab = "Estados",
#'         data = PaulaTb1.6,
#'         type = 'h',
#'         main = "Renda Média Mensal em Estado",
#'         grid = TRUE)
#' 
#' xyplot(rendm ~ esc,
#'        ylab = "Renda",
#'        xlab = "Número médio de anos de estudo",
#'        data = PaulaTb1.6,
#'        type = c("p", "smooth"),
#'        main = "Renda Média Mensal por Anos de Estudo")
#'
NULL

#' @name PaulaTb1.9
#' @title Bact\enc{é}{e}rias Sobreviventes em Amostras
#' @description Número de bactérias sobreviventes em amostras de um 
#'     produto alimentício segundo o tempo de exposição do produto a uma
#'     temperatura de 300°F.
#'      
#' @format Um \code{data.frame} com 12 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{num}}{Número de bactérias sobreviventes.}
#' 
#' \item{\code{temp}}{Tempo de exposição (em minutos).}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 1.9, pág. 88)
#'
#' @examples
#'
#' data(PaulaTb1.9)
#' 
#' str(PaulaTb1.9)
#' 
#' library(lattice)
#' 
#' xyplot(num ~ temp,
#'        ylab = "Número de bactérias",
#'        xlab = "Tempo de exposição",
#'        data = PaulaTb1.9,
#'        type = c("o"),
#'        main = "Número de Bactérias Sobreviventes por Tempo de Exposição")

#'
NULL

#' @name PaulaTb2.1
#' @title Desempenho de Turbinas para Motores de Avi\enc{ã}{a}o
#' @description Resultados de um experimento conduzido para avaliar o
#'     desempenho de cinco tipos de turbina de alta velocidade para
#'     motores de avião. Foram considerados dez motores de cada tipo
#'     registrando-se o tempo até a perda de velocidade ou,
#'     equivalentemente, a duração do motor.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis.
#'     \describe{
#' 
#' \item{\code{turb}}{Fator com cinco níveis que indica o tipo de
#'     turbina.}
#' 
#' \item{\code{tempo}}{Tempo até a perda de velocidade, ou seja, duração
#'     do motor, mensurado em unidades de milhões de ciclos.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 2.1, pág. 121)
#'
#' @references Lawless, J. F. (1982). Statistical Models and Methods for
#'     Lifetime Data. John Wiley, New York.
#' @examples
#' data(PaulaTb2.1)
#' 
#' str(PaulaTb2.1)
#' 
#' # Dados no formato "largo", conforme tabela 2.1 (Paula, 2004)
#' unstack(PaulaTb2.1, tempo ~ turb)
#' 
#' aggregate(tempo ~ turb, summary, data = PaulaTb2.1)
#' 
#' library(lattice)
#' xyplot(tempo ~ turb,
#'        data = PaulaTb2.1,
#'        type = c("p", "g", "smooth"))
#' 
#' densityplot(~tempo, groups = turb, data = PaulaTb2.1,
#'             auto.key = list(corner = c(0.9, 0.9),
#'                             title = "Tipos de turbina",
#'                             cex.title = 1))
#'
NULL

#' @name PaulaTb2.6
#' @title Proje\enc{çã}{ca}o de Vendas
#' @description Dados referentes a 20 valores projetados para vendas de
#'     produtos confrontados com os verdadeiros valores de venda
#'     obtidos.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{proj}}{Valor projetado de venda.}
#' 
#' \item{\code{real}}{Valor real de venda.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 2.6, pág. 159)
#'
#' @examples
#' data(PaulaTb2.6)
#' 
#' str(PaulaTb2.6)
#' 
#' library(lattice)
#' xyplot(real ~ proj, data = PaulaTb2.6,
#'        grid = TRUE, pch = 19, cex = 1.2,
#'        panel = function(x, y, ...) {
#'            panel.xyplot(x, y, ...)
#'            panel.abline(0, 1, lty = 2)
#'        })
#'
NULL

#' @name PaulaTb3.12
#' @title Ocorr\enc{ê}{e}ncia de vaso-constri\enc{çã}{ca}o
#' @description Dados de um experimento desenvolvido para 
#'    avaliar a influência da quantidade de ar inspirado na ocorrência
#'    de vaso-constrição na pele dos dedos da mão.  A resposta é a ocorrência
#'    (1) ou ausência (0) de compressão de vasos e as covariáveis são o 
#'    volume e a razão de ar inspirado. 
#'    
#' @format Um \code{data.frame} com 39 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{vol}{Logaritmo do volume de ar inspirado.}
#'     
#' \item{razao}{Logaritmo da razão de ar inspirado.}
#'
#' \item{resp}{Ocorrência ou não de compressão de vaso (ocorrência = 1
#'    e ausência = 0).}
#'     
#' }
#' @keywords GLM binarios
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Tb 3.12 pág. 227)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaTb3.12)
#'
#' str(PaulaTb3.12)
#' 
#' bwplot(vol ~ resp,  data = PaulaTb3.12, 
#'        type=c("p","a"),
#'        xlab="Vaso-constrição", ylab="Volume de ar inspirado",
#'        scales=list(x=list(labels=c("Ausência","Ocorrência"))), 
#'        main="Ocorrência de vaso-constrição")
#' 
#' bwplot(razao ~ resp,  data = PaulaTb3.12, 
#'        type=c("p","a"),
#'        xlab=" Vaso-constrição", ylab="Razão de ar inspirado",
#'        scales=list(x=list(labels=c("Ausência","Ocorrência"))), 
#'      main="Ocorrência de vaso-constrição")
NULL

#' @name PaulaTb3.20
#' @title Aplica\enc{çã}{ca}o de inseticidas em insetos
#' @description Dados de um experimento em que três
#'    inseticidas foram aplicados em determinada espécie de inseto, sendo
#'    verificado o número de sobreviventes para cada dose aplicada. 
#'    
#' @format Um \code{data.frame} com 18 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{mortos}{Número de insetos mortos.}
#'     
#' \item{exp}{Número de insetos expostos aos inseticidas.}
#'
#' \item{dose}{Dose aplicada dos inseticidas.}
#' 
#' \item{inset}{Tipo de inseticida.}
#'
#' }
#' @keywords GLM
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Tb 3.20 pág. 246)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaTb3.20)
#'
#' str(PaulaTb3.20)
#' 
#' xyplot(mortos/(sum(mortos)) ~ dose,  data = PaulaTb3.20, auto.key = TRUE,
#'          type = c("p","a"), groups= inset,
#'          xlab = "Dose de inseticida aplicada", 
#'          ylab = "Proporção de insetos mortos", 
#'          main = "Aplicações de inseticidas")
NULL

#' @name PaulaTb3.21
#' @title Distribui\enc{çã}{ca}o de Rotifers das Duas Esp\enc{é}{e}cies
#' @description Experimento com duas espécies de *rotifers*, um tipo  
#'     microscópio de invertebrado aquático. São apresentados pra cada 
#'     espécie a densidade relativa da substância, o número de *rotifers*
#'     expostos e o número de *rotifers* em suspensão.
#'      
#' @format Um \code{data.frame} com 40 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{dens}}{Densidade.}
#' 
#' \item{\code{susp}}{Rotifers suspensos.}
#' 
#' \item{\code{exp}}{Rotifers expostos.}
#' 
#' \item{\code{esp}}{Espécie (Polyarthra, Keratella).}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tb 3.21, pág. 257)
#'
#' @examples
#'
#' data(PaulaTb3.21)
#' 
#' str(PaulaTb3.21)
#' 
#' library(lattice)
#' 
#' xyplot(PaulaTb3.21$susp/PaulaTb3.21$exp ~ dens,
#'        groups = esp,
#'        data = PaulaTb3.21,
#'        xlab = "Densidade",
#'        ylab = "Proporção de rotifers suspensos",
#'        type = c("p"),
#'        auto.key = TRUE)
#' 
NULL

#' @name PaulaTb4.12
#' @title Associa\enc{çã}{ca}o entre Renda e Satisfa\enc{çã}{ca}o no Emprego
#' @description Dados resultantes de uma pesquisa com 901 indivíduos
#'     classificados segundo sua renda anual e grau informado de
#'     satisfação no emprego. O interesse no estudo é relacionar a renda
#'     anual e satisfação no emprego.
#'     
#' @format Um \code{data.frame} com 16 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{renda}}{Fator com quatro níveis representando a renda do
#'     indivíduo. Expressos em mil USD os níveis são: menor que 6
#'     (\code{<6}), entre 6 e 12 (\code{6-15}), entre 15 e 25
#'     (\code{15-25}) e maior que 25 (\code{>25}).}
#' 
#' \item{\code{satis}}{Fator com quatro níveis que representa o grau de
#'     satisfação do indivíduo no emprego (\code{alto}, \code{bom},
#'     \code{médio} e \code{baixo}).}
#' 
#' \item{\code{nind}}{Número de indivíduos na combinação das variáveis
#'     \code{renda} e \code{satis}.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 4.12, pág. 331)
#'
#' @references Agresti, A. (1990). Categorical Data Analysis. John
#'     Wiley, New York.
#' @examples
#'
#' data(PaulaTb4.12)
#' 
#' str(PaulaTb4.12)
#' 
#' (xt <- xtabs(nind ~ ., data = PaulaTb4.12))
#' plot(xt)
#' 
#' library(lattice)
#' xyplot(nind ~ renda,
#'        groups = satis,
#'        data = PaulaTb4.12,
#'        type = c("p", "a", "g"),
#'        ylab = 'Número de indivíduos',
#'        auto.key = list(
#'            space = "right", cex.title = 1,
#'            title = "Grau de\nsatisfação"))
#'
NULL

#' @name PaulaTb4.14
#' @title Ocorr\enc{ê}{e}ncia de Doen\enc{ç}{c}a das Coron\enc{á}{a}rias
#' @description Os dados são referentes à classificação de 1330
#'     pacientes segundo três fatores: ocorrência de doença das
#'     coronárias, nível de colesterol e pressão arterial. O interesse
#'     é analisar a associação entre essas variáveis.
#'     
#' @format Um \code{data.frame} com 32 observações e 4 variáveis.
#'     \describe{
#' 
#' \item{\code{doenca}}{Fator com dois níveis que indica a ocorrência
#'     (\code{sim}) ou não ocorrência (\code{não}) de doença das
#'     coronárias.}
#' 
#' \item{\code{colest}}{Fator com quatro níveis que indica o nível de
#'     colesterol do paciente. A unidade de medida adotada é
#'     \eqn{mg/100cm^3} com classes \code{<200}, \code{200-219},
#'     \code{220-259} e \code{>259}.}
#' 
#' \item{\code{pa}}{Fator com quatro níveis referente à pressão
#'     arterial do paciente. A unidade de medida adotada é mm Hg
#'     (milímetro-mercúrio) com classes \code{<127}, \code{127-146},
#'     \code{147-166} e \code{>166}.}
#' 
#' \item{\code{nind}}{Número de indivíduos para cada combinação das categorias
#'     das variáveis \code{doenca}, \code{colest} e \code{pa}.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 4.14, pág. 334)
#'
#' @references Everitt, B. S. (1977). The Analysis of Contingency
#'     Tables. Chapman anda Hall, London.
#' @examples
#'
#' data(PaulaTb4.14)
#' 
#' str(PaulaTb4.14)
#' 
#' xt <- xtabs(nind ~ ., data = PaulaTb4.14)
#' ftable(xt)
#' plot(xt)
#' 
#' library(lattice)
#' xyplot(nind ~ colest | doenca,
#'        groups = pa,
#'        data = PaulaTb4.14,
#'        type = c("p", "a", "g"),
#'        xlab = 'Colesterol',
#'        ylab = 'Número de indivíduos',
#'        scales = list(x = list(rot = 45)),
#'        auto.key = list(
#'            space = "right", cex.title = 1,
#'            title = "Pressão arterial\nem mm Hg"))
#'
NULL

#' @name PaulaTb4.2
#' @title Mortes por C\enc{â}{a}ncer de Pulm\enc{ã}{a}o e Consumo de Cigarro
#' @description Dados provenientes de um estudo de acompanhamento de
#'     doutores Britânicos durante a década de 50. Neste estudo
#'     observou-se a ocorrência de mortes por câncer de pulmão segundo o
#'     consumo médio diário de cigarro e a faixa-etária.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis.
#'     \describe{
#' 
#' \item{\code{nmortes}}{Número de casos de morte por câncer de
#'     pulmão.}
#' 
#' \item{\code{tpessoas}}{Total de anos de exposição (somado para toda a 
#'     amostra).}
#' 
#' \item{\code{cmdc}}{Consumo médio diário de cigarros, dividido em
#'     quatro níveis 0, 1-9, 10-30 ou +30 cigarros consumidos.}
#' 
#' \item{\code{idade}}{Idade, registrada em faixas-etárias de 40- 49,
#'     50-59, 60-79 e 70-80 anos.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 4.2, pág. 294)
#' @examples
#'
#' data(PaulaTb4.2)
#' 
#' str(PaulaTb4.2)
#' 
#' xtabs(nmortes ~ cmdc + idade, data = PaulaTb4.2)
#' (xt <- xtabs((nmortes/tpessoas)*100 ~ cmdc + idade, data = PaulaTb4.2))
#' plot(xt)
#' 
#' library(lattice)
#' xyplot((nmortes/tpessoas)*100 ~ cmdc,
#'        xlab = "Consumo médio de cigarros",
#'        ylab = "Taxa de mortes por câncer de pulmão",
#'        groups = idade,
#'        data = PaulaTb4.2,
#'        type = c("b", "g"),
#'        auto.key = list(corner = c(0.1, 0.9), cex.title = 1,
#'                        title = "Faixa-etária"))
NULL

#' @name PaulaTb4.7
#' @title Demanda de TV a Cabo em \enc{Á}{A}reas Metropolitanos dos EUA
#' @description Dados de um estudo sobre demanda de TV's a cabo em 40
#'     áreas metropolitanas dos Estados Unidos. Nesse estudo a variável
#'     de interesse é o número de assinantes (\code{nass}) e as demais
#'     variáveis registradas tem por objetivo explicar esta contagem.
#' @format Um \code{data.frame} com 40 observações e 8 variáveis.
#' \describe{
#' 
#' \item{\code{nass}}{Número de assinantes de TV a cabo (em milhares).}
#' 
#' \item{\code{domic}}{Número de domicílios na área (em milhares).}
#' 
#' \item{\code{perc}}{Percentagem de domicílios com TV a cabo.}
#' 
#' \item{\code{renda}}{Renda per capita por domicílio com TV a cabo (em
#'     USD).}
#' 
#' \item{\code{taxa}}{Valor da taxa de instalação de TV a cabo (em
#'     USD).}
#' 
#' \item{\code{custo}}{Custo médio mensal de manutenção de TV a cabo (em
#'     USD).}
#' 
#' \item{\code{ncabo}}{Número de canais a cabo disponíveis na área.}
#' 
#' \item{\code{ntv}}{Número de canais não pagos com sinal de boa
#'     qualidade na área.}
#' 
#' }
#' @keywords contagem superdispersão
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 4.7, pág. 317)
#' @examples
#'
#' data(PaulaTb4.7)
#' 
#' str(PaulaTb4.7)
#' 
#' library(lattice)
#' splom(PaulaTb4.7, type = c("p", "smooth"), lwd = 2)
#'
NULL

#' @name PaulaTb4.9
#' @title Avarias em Navios de Carga
#' @description Dados referentes a um estudo em que se avaliou o número de
#'     avarias causadas por ondas em navios de carga. Contém 34 registros
#'     com informações do tipo de navio, ano de fabricação, período de
#'     operação e tempo em operação (que pode ser considerado como
#'     offset na análise, pois espera-se um maior número de avarias em
#'     navios com um maior tempo em operação).
#' @format Um \code{data.frame} com 34 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{tipo}}{Fator com cinco níveis que representa o tipo de
#'     navio (A, B, C, D e E).}
#' 
#' \item{\code{ano}}{Fator com quatro níveis que representa o ano de
#'     fabricação do navio (entre 1960 e 1964 (\code{60-64}), entre 1965
#'     e 1969 (\code{65-69}), entre 1970 e 1974 (\code{70-74}) e 
#'     entre 1975 e 1979 (\code{75-79})).}
#' 
#' \item{\code{peri}}{Fator com dois níveis que representa o período de
#'     operação do navio (entre 1960 e 1974 (\code{60-74}) e entre 1975
#'     e 1979 (\code{75-79})).}
#' 
#' \item{\code{meses}}{Tempo, em meses, em que o navio esteve em operação.}
#' 
#' \item{\code{avarias}}{Número de avarias no navio.}
#' 
#' }
#' @keywords contagem superdispersão
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 4.9 pág. 322)
#' @examples
#'
#' data(PaulaTb4.9)
#' 
#' str(PaulaTb4.9)
#' 
#' # Número de observações em cada combinação das variáveis explicativas
#' ftable(PaulaTb4.9[, c("tipo", "ano", "peri")])
#' 
#' # Número de avarias e número de avarias por mês observada em cada
#' # combinação das variáveis explicativas
#' xtabs(avarias ~ tipo + ano + peri, data = PaulaTb4.9)
#' xt <- xtabs(avarias/meses ~ ., data = PaulaTb4.9)
#' plot(xt)
#' 
#' library(lattice)
#' xyplot(avarias/meses ~ tipo | peri,
#'        groups = ano,
#'        data = PaulaTb4.9,
#'        type = c("p", "a", "g"),
#'        auto.key = list(
#'            space = "right", cex.title = 1,
#'            title = "Ano de\nfabricação"))
#'
NULL

