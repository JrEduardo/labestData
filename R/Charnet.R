#' @name CharnetApD.1
#' @title Conjunto de Dados de Meninas Dan\enc{ç}{c}arinas
#' @description Medidas antropomórficas e extensões de bailarinas.
#' @format Um \code{data.frame} com 163 linhas e 6 colunas, em que
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade, em anos, das bailarinas.}
#'
#' \item{\code{peso}}{Peso, em quilogramas, das bailarinas.}
#'
#' \item{\code{altura}}{Altura, em centímetros, das bailarinas.}
#'
#' \item{\code{ped}}{Medida de angulação do pé direito em movimento de
#'     dança clássica.}
#'
#' \item{\code{pee}}{Medida de angulação do pé esquerdo em movimento de
#'     dança clássica.}
#'
#' \item{\code{pem}}{Média das duas medidas de angulação dos pés.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Apêndice D, pág. 325.
#' @examples
#'
#' data(CharnetApD.1)
#'
#' library(ggplot2)
#'
#' qplot(peso, altura,
#'       data = CharnetApD.1,
#'       color = idade,
#'       xlab = "Peso",
#'       ylab = "Altura",
#'       main = "Relação Peso e Altura por Idade de Jovens Bailarinas")
#'
#' bailarinas <- qplot(ped, pee,
#'                     data = CharnetApD.1,
#'                     xlab = "Angulação do pé direito",
#'                     ylab = "Angulação do pé esquerdo",
#'                     main = "Diferença na Angulação Entre os Pés")
#'
#' bailarinas + geom_abline(intercept = 0, slope = 1)
NULL

#' @name CharnetEg12.2
#' @title Estudo da Medida de Tecido Adiposo Obtido por Tomografia
#'     Computadorizada
#' @description Relação entre as medidas de tecidos adiposos obtidas por
#'     tomagrafia computadorizada da área abdominal e variáveis
#'     relacionadas.
#' @format Um \code{data.frame} com 29 linhas e 5 colunas, em que
#'
#' \describe{
#'
#' \item{\code{tomo}}{Medida de tecido adiposo por obtida por tomografia
#'     computadorizada.}
#'
#' \item{\code{cint}}{Medida da circunferência da cintura.}
#'
#' \item{\code{us1}}{Medida 1 do tecido adiposo por ultrassonografia.}
#'
#' \item{\code{us2}}{Medida 2 do tecido adiposo por ultrassonografia.}
#'
#' \item{\code{pc}}{Medida das pregas cutâneas.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Capítulo 12, exemplo 12.2, pág. 286.
#' @examples
#'
#' data(CharnetEg12.2)
#'
#' panel.density <- function(x, ...) {
#'     usr <- par("usr")
#'     on.exit(par(usr))
#'     par(usr = c(usr[1:2], 0, 1.5))
#'     par(new = TRUE)
#'     plot(density(x), xlab = "", ylab = "", main = "")
#' }
#'
#' pairs(CharnetEg12.2, diag.panel = panel.density)
NULL

#' @name CharnetEg4.2
#' @title Avalia\enc{çã}{ca}o de Vendedores pelos Clientes
#' @description Análise das vendas através das notas atribuídas pelos
#'     clientes aos vendedores de uma empresa de seguro.
#' @format Um \code{data.frame} com 2 colunas e 10 linhas, em que
#'
#' \describe{
#'
#' \item{\code{notas}}{Nota atribuída ao vendedor, em escala de 0 a
#'     100.}
#'
#' \item{\code{vendas}}{Volume anual de vendas, em milhões de reais.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 4, exemplo 4.2, pág. 79;
#'     Capítulo 5, exercício 4, pág. 109; Capítulo 5, exercício 7,
#'     pág. 111; Capítulo 6, exercício 1, pág. 142.
#' @examples
#'
#' data(CharnetEg4.2)
#' str(CharnetEg4.2)
#'
#' plot(CharnetEg4.2)
#'
NULL

#' @name CharnetEg5.2
#' @title Efeito de um Desinfetante
#' @description Medição da quantidade de bactérias em um estudo sobre o
#'     efeito de um desinfetante diluído em quantidade fixas de água, em
#'     concentrações de 1 a 8\%.
#' @format Um \code{data.frame} com 2 colunas e 16 linhas, em que
#'
#' \describe{
#'
#' \item{\code{conc}}{Concentração do desinfetante, em percentagem.}
#'
#' \item{\code{bact}}{Contagem de bactérias, em unidade.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 5, exemplo 2, pág. 95.
#'
#' @examples
#'
#' data(CharnetEg5.2)
#' str(CharnetEg5.2)
#'
#' plot(CharnetEg5.2)
#'
NULL

#' @name CharnetEg6.4
#' @title Efeito de um Produto Qu\enc{í}{i}mico no Peso de
#'     Girass\enc{ó}{o}is
#' @description Medição do efeito da adição de uma solução de um certo
#'    produto químico na regação de girassóis.
#' @format Um \code{data.frame} com 2 colunas e 20 linhas, em que
#'
#' \describe{
#'
#' \item{\code{peso}}{Peso da planta, em gramas.}
#'
#' \item{\code{dose}}{Dose da aplicação, em \eqn{\log(g cm^{-2})}.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 6, exemplo 4, pág. 136.
#' @examples
#'
#' data(CharnetEg6.4)
#' str(CharnetEg6.4)
#'
#' plot(peso ~ dose, data = CharnetEg6.4)
#'
NULL

#' @name CharnetEg7.3
#' @title Rela\enc{çã}{ca}o entre Sal\enc{á}{a}rio, Tempo de
#'     Experi\enc{ê}{e}ncia e Sexo
#' @description Dados de salário, tempo de experiência e sexo dos
#'     gerentes de agências bancárias de um grande banco.
#' @format Um \code{data.frame} com 2 colunas e 15 linhas, em que
#'
#' \describe{
#'
#' \item{\code{salario}}{Salário, em mil reais.}
#'
#' \item{\code{exp}}{Tempo de experiência, em anos completos.}
#'
#' \item{\code{sexo}}{Sexo do gerente de agência bancária.}
#'
#' }
#' @keywords RM dummy
#' @source CHARNET et al. (2008), Capítulo 7, exemplo 3, pág. 152.
#' @examples
#'
#' data(CharnetEg7.3)
#' str(CharnetEg7.3)
#'
#' library(lattice)
#'
#' with(CharnetEg7.3, plot(salario, exp, col = sexo))
#' xyplot(exp ~ salario, data = CharnetEg7.3, groups = sexo)
#'
NULL

#' @name CharnetEg8.2
#' @title Conjunto de Dados Gen\enc{é}{e}rico
#' @description Um conjunto de dados qualquer para exercício de ajuste
#'     de modelos de regressão linear com diferentes preditores.
#' @format Um \code{data.frame} com 2 colunas e 15 linhas, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Variável independente, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 8, exercício 2, pág. 191.
#' @examples
#'
#' data(CharnetEg8.2)
#' str(CharnetEg8.2)
#'
#' plot(CharnetEg8.2)
#' plot(CharnetEg8.2 - 1.1 * min(CharnetEg8.2), log = "xy")
#'
NULL

#' @name CharnetEg9.2
#' @title Rela\enc{çã}{ca}o entre Poluentes Atmosf\enc{é}{e}ricos
#' @description Relação de poluentes atmosféricos emitidos por carros
#'     durante uma coleta realizada em sete períodos diferentes em um
#'     grande centro.
#' @format Um \code{data.frame} com 3 colunas e 7 linhas, em que
#'
#' \describe{
#'
#' \item{\code{CO}}{Monóxido de carbono, sem especificação.}
#'
#' \item{\code{HC}}{Hidrocarbonetos, sem especificação.}
#'
#' \item{\code{NO}}{Óxido de nitrogênio, sem especificação.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Capítulo 9, exemplo 2, pág. 216.
#' @examples
#'
#' data(CharnetEg9.2)
#' str(CharnetEg9.2)
#'
#' plot(CharnetEg9.2)
#' cor(CharnetEg9.2)
#'
NULL

#' @name CharnetEg9.4
#' @title Um Conjunto de Dados Gen\enc{é}{e}rico para Regress\enc{ã}{a}o
#'     Linear M\enc{ú}{u}ltipla
#' @description Um conjunto de dados qualquer para exercício de ajuste
#'     de um modelo de regressão linear múltipla onde temos uma variável
#'     dependente relaciona a sete outras variáveis independentes.
#' @format Um \code{data.frame} com 8 colunas e 36 linhas, em que
#'
#' \describe{
#'
#' \item{\code{y}}{Variável dependente.}
#'
#' \item{\code{x1}}{Variável regressora.}
#'
#' \item{\code{x2}}{Variável regressora.}
#'
#' \item{\code{x3}}{Variável regressora.}
#'
#' \item{\code{x4}}{Variável regressora.}
#'
#' \item{\code{x5}}{Variável regressora.}
#'
#' \item{\code{x6}}{Variável regressora.}
#'
#' \item{\code{x7}}{Variável regressora.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Capítulo 9, exemplo 4, pág. 226.
#' @examples
#'
#' data(CharnetEg9.4)
#' str(CharnetEg9.4)
#'
#' plot(CharnetEg9.4)
#'
NULL

#' @name CharnetEx1.17
#' @title Dados Gen\enc{é}{e}ricos para Regress\enc{ã}{a}o Linear
#'     Simples
#' @description Dois conjuntos de valores X e Y utilizados para
#'     para exemplificação de regressão linear simples.
#' @format Um \code{data.frame} com 3 colunas e 45 linhas, em que
#'
#' \describe{
#'
#' \item{\code{conj}}{Fator que indica a qual conjunto a observação
#'     pertence.}
#'
#' \item{\code{x}}{Variável independente, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#' @details Este conjunto de dados agrupa dados onde pressupõe-se que
#'     sejam de populações distintas. Portanto ao utilizá-lo separe-o
#'     com base na variável \code{conj}.
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 1, exercício 17, pág. 25.
#' @examples
#'
#' data(CharnetEx1.17)
#' str(CharnetEx1.17)
#'
#' # detach("package:lattice")
#' library(ggplot2)
#'
#' ggplot(CharnetEx1.17, aes(x = x, y = y)) +
#'     geom_point() +
#'     facet_grid(~conj, scales = "free_x") +
#'     stat_smooth(method = "lm")
#'
NULL

#' @name CharnetEx1.18
#' @title Tempo e Temperatura de uma Rea\enc{çã}{ca}o Qu\enc{í}{i}mica
#' @description Registro de 35 tempos de reação química em 7
#'     temperaturas diferentes.
#' @format Um \code{data.frame} com 2 colunas e 35 linhas, em que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura em graus Celsius}
#'
#' \item{\code{tempo}}{Tempo de reação, em segundos}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 1, exercício 18, pág. 25; e
#'     Capítulo 3, exercício 2, pág. 65.
#' @examples
#'
#' data(CharnetEx1.18)
#' str(CharnetEx1.18)
#'
#' # detach("package:lattice")
#' library(ggplot2)
#'
#' with(CharnetEx1.18, {
#'     mu <- aggregate(tempo, list(temp), mean)
#'     des <- aggregate(tempo, list(temp), sd)
#'     (da <<- data.frame(x = mu$G, mu = mu$x, sd = des$x))
#' })
#'
#' ggplot(CharnetEx1.18, aes(x = temp, y = tempo)) +
#'     geom_point() +
#'     geom_point(
#'         aes(x = x - 1, y = mu), data = da,
#'         col = 4, shape = 15, size = 2.5) +
#'     geom_segment(
#'         aes(x = x - 1, y = mu - sd, xend = x - 1, yend = mu + sd),
#'         arrow = grid::arrow(angle = 90,
#'                             length = grid::unit(0.05, "inches"),
#'                             ends = "both"),
#'         data = da, col = 4) +
#'     geom_smooth(method = "lm", se = FALSE)
#'
NULL

#' @name CharnetEx1.20
#' @title Testes de Avalia\enc{çã}{ca}o de Personalidade
#' @description Dois testes de avaliação de personalidade aplicados a 20
#'     indivíduos.
#' @format Um \code{data.frame} com 2 colunas e 20 linhas, em que
#'
#' \describe{
#'
#' \item{\code{t1}}{Resultados do teste I, em pontos.}
#'
#' \item{\code{t2}}{Resultados do teste II, em pontos.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 1, exercício 20, pág. 26; e
#'     Capítulo 3, exercício 8, pág. 67.
#' @examples
#'
#' data(CharnetEx1.20)
#' str(CharnetEx1.20)
#'
#' plot(CharnetEx1.20)
#'
NULL

#' @name CharnetEx1.5
#' @title Tempo de Dura\enc{çã}{ca}o do Intervalo para o Cafezinho
#' @description Tempo de duração do intervalo para o cafezinho para uma
#'     amostra de 20 empregados de uma grande empresa.
#' @format Um \code{vetor} numérico com 20 observações.
#' @keywords AAS
#' @source CHARNET et al. (2008), Capítulo 1, exercício 5, pág. 23.
#' @examples
#'
#' data(CharnetEx1.5)
#' str(CharnetEx1.5)
#'
#' (m <- mean(CharnetEx1.5))
#' (s <- sd(CharnetEx1.5))
#' fivenum(CharnetEx1.5)
#'
#' curve(dnorm(x, m, s),
#'       xlim = extendrange(CharnetEx1.5, f = 0.2),
#'       col = 4, lwd = 2)
#' hist(CharnetEx1.5, prob = TRUE, add = TRUE)
#' rug(CharnetEx1.5)
NULL

#' @name CharnetEx1.6
#' @title Press\enc{ã}{a}o Sangu\enc{í}{i}nea Sist\enc{ó}{o}lica
#' @description Pressão sanguínea sistólica de um grupo de 16 pacientes
#'     de uma clínica.
#' @format Um \code{vetor} numérico com 16 observações.
#' @keywords AAS
#' @source CHARNET et al. (2008), Capítulo 1, exercício 6, pág. 23.
#' @examples
#'
#' data(CharnetEx1.6)
#' str(CharnetEx1.6)
#'
#' (m <- mean(CharnetEx1.6))
#' (s <- sd(CharnetEx1.6))
#' fivenum(CharnetEx1.6)
#'
#' curve(dnorm(x, m, s),
#'       xlim = extendrange(CharnetEx1.6, f = 0.2),
#'       col = 4, lwd = 2)
#' hist(CharnetEx1.6, prob = TRUE, add = TRUE)
#' rug(CharnetEx1.6)
#'
NULL

#' @name CharnetEx10.7
#' @title Planta\enc{çã}{ca}o de Variedades de Trigo
#' @description Experimento com 4 variedades de trigo onde foi observado
#'     a precipitação pluviométrica, a concentração de fertilizante e a
#'     produtividade. A unidade amostral foram canteiros de mesmo
#'     tamanho e sob as mesmas condições. O interesse é explicar a
#'     produtividade pelas demais variáveis coletadas.
#' @format Um \code{data.frame} com 4 colunas e 24 linhas, em que
#'
#' \describe{
#'
#' \item{\code{prod}}{Produção de trigo, em kg.}
#'
#' \item{\code{prec}}{Precipitação pluviométrica, em cm.}
#'
#' \item{\code{varied}}{Variedade do trigo, fator com quatro níveis.}
#'
#' \item{\code{fert}}{Concentração do fertilizante, fator com três
#'     níveis.}
#'
#' }
#' @keywords RM dummy
#' @source CHARNET et al. (2008), Capítulo 10, exercício 7, pág. 256,
#'     Capítulo 11, exercício 1, pág. 272.
#' @examples
#'
#' data(CharnetEx10.7)
#' str(CharnetEx10.7)
#'
#' xtabs(~varied + fert, data = CharnetEx10.7)
#'
#' # detach("package:ggplot2")
#' library(lattice)
#'
#' xyplot(prod ~ prec | fert,
#'        groups = varied,
#'        data = CharnetEx10.7,
#'        type = c("p", "a"),
#'        auto.key = list(space = "right",
#'                        title = "Variedade",
#'                        cex.title = 1),
#'        strip = strip.custom(
#'            strip.names = TRUE,
#'            var.name = "Conc. fertilizante"))
#'
NULL

#' @name CharnetEx11.2
#' @title Distribui\enc{çã}{ca}o de Trabalho em um Departamento de
#'     Contabilidade
#' @description Estudo para determinar as atividades mais importantes
#'     dos funcionários do departamento de contabilidade em uma empresa,
#'     durante 30 dias.
#' @format Um \code{data.frame} com 7 colunas e 30 linhas, em que
#'
#' \describe{
#'
#' \item{\code{nhora}}{Número de horas trabalhadas por dia.}
#'
#' \item{\code{ncheq}}{Número de cheques descontados.}
#'
#' \item{\code{npag}}{Número de pagamentos recebidos pelos
#'     funcionários.}
#'
#' \item{\code{ndoc}}{Número de documentos processados e enviados ao
#'     banco para compensação.}
#'
#' \item{\code{nord}}{Número de ordens de pagamento, certificados e
#'     recibos de vendas emitidos pelos funcionários.}
#'
#' \item{\code{ncor}}{Número de correspondências processadas e enviadas
#'     aos clientes.}
#'
#' \item{\code{nout}}{Número de documentos processados e outras
#'     atividades.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Capítulo 11, exercício 2, pág. 273.
#' @examples
#'
#' data(CharnetEx11.2)
#' str(CharnetEx11.2)
#'
#' plot(CharnetEx11.2)
#'
NULL

#' @name CharnetEx11.3
#' @title Rela\enc{çã}{ca}o do Pre\enc{ç}{c}o de Venda de
#'     Im\enc{ó}{o}vel e suas Caracter\enc{í}{i}sticas
#' @description Estudo observacional onde o interesse é explicar o valor
#'     de venda de imóveis de um mesmo bairro a partir de suas
#'     características presença de piscina, tempo de construção, área
#'     total e número de quartos.
#' @format Um \code{data.frame} com 5 colunas e 20 linhas, em que
#'
#' \describe{
#'
#' \item{\code{preco}}{Preço de venda do imóvel, em reais.}
#'
#' \item{\code{area}}{Área total de construção, em m\eqn{^2}.}
#'
#' \item{\code{tempo}}{Tempo de construção, em anos.}
#'
#' \item{\code{nquar}}{Número de quartos.}
#'
#' \item{\code{pisc}}{Fator que indica se há piscina (\code{S}) ou não
#'     (\code{N}) no imóvel.}
#'
#' }
#' @keywords RM dummy
#' @source CHARNET et al. (2008), Capítulo 11, exercício 3, pág. 274.
#' @examples
#'
#' data(CharnetEx11.3)
#' str(CharnetEx11.3)
#'
#' plot(CharnetEx11.3)
#'
NULL

#' @name CharnetEx2.10
#' @title Estudo do Efeito do Carbono na Resist\enc{ê}{e}ncia
#'     El\enc{é}{e}trica
#' @description Estudo sobre o efeito do carbono contido, em fios de aço
#'     em resistência elétrica, na temperatura de 20 \eqn{^\circ}C.
#' @format Um \code{data.frame} com 2 colunas e 15 linhas.
#'
#' \describe{
#'
#' \item{\code{carb}}{Porcentagem de carbono nos fios de aço.}
#'
#' \item{\code{res}}{Resistência elétrica, mensurada em \eqn{\mu} ohms
#'     cm a 20ºC.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 2, exercício 10, pág. 47;
#'     Capítulo 3, exercício 7, pág. 66; Capítulo 4, exercício 6,
#'     pág. 84; Capítulo 6, exercício 8, pág. 146.
#' @examples
#'
#' data(CharnetEx2.10)
#' str(CharnetEx2.10)
#'
#' plot(CharnetEx2.10)
#' abline(lm(res ~ carb, data = CharnetEx2.10))
#'
NULL

#' @name CharnetEx2.11
#' @title Estudo do Efeito de Droga sobre o Ritmo Card\enc{í}{i}aco
#' @description Estudo do efeito de droga sobre o ritmo cardíaco em um
#'     paciente voluntário por um período de 6 dias.
#' @format Um \code{data.frame} com 3 colunas e 6 linhas, em que
#'
#' \describe{
#'
#' \item{\code{dia}}{Dia do experimento, em contagem.}
#'
#' \item{\code{dose}}{Número de doses aplicada no dia.}
#'
#' \item{\code{bpm}}{Número de batimentos cardíacos por minuto.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Capítulo 2, exercício 11, pág. 48.
#' @examples
#'
#' data(CharnetEx2.11)
#' str(CharnetEx2.11)
#'
#' plot(CharnetEx2.11)
#'
NULL

#' @name CharnetEx2.12
#' @title Taxa de Homic\enc{í}{i}dios por Ano
#' @description Crescimentos da taxa de homicídios em um período de 7
#'     anos em uma cidade.
#' @format Um \code{data.frame} com 2 colunas e 7 linhas, em que
#'
#' \describe{
#'
#' \item{\code{ano}}{Ano do estudo, em contagem.}
#'
#' \item{\code{cth}}{Taxa de homicídios no ano.}
#'
#' }
#'
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 2, exercício 12, pág. 48.
#' @examples
#'
#' data(CharnetEx2.12)
#' str(CharnetEx2.12)
#'
#' plot(CharnetEx2.12)
#'
NULL

#' @name CharnetEx2.13
#' @title Compara\enc{çã}{ca}o entre Alturas de Pais e Filhos
#' @description Comparação entre alturas de 12 pais e respectivos 12
#'    filhos.
#' @format Um \code{data.frame} com 2 colunas e 7 linhas, em que
#'
#' \describe{
#'
#' \item{\code{pai}}{Altura do pai, em centímetros.}
#'
#' \item{\code{filhos}}{Altura do filho, em centímetros.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 2, exercício
#'     13, pág. 48.
#'
#' @examples
#'
#' data(CharnetEx2.13)
#' str(CharnetEx2.13)
#'
#' plot(CharnetEx2.13)
#'
NULL

#' @name CharnetEx2.14
#' @title Produto Interno Bruto Trimestral do Brasil
#' @description Comparação do Produto Interno Bruto (PIB) trimestral do
#'     Brasil em 8 anos, de 1990 a 1997.
#' @format Uma série temporal \code{ts}, com 32 observações, sendo 4
#'     observações por ano (trimestralmente) de 1990 a 1997.
#' @keywords TS
#' @source CHARNET et al. (2008), (Capítulo 2, exercício
#'     14, pág. 49)
#' @examples
#'
#' data(CharnetEx2.14)
#' str(CharnetEx2.14)
#'
#' CharnetEx2.14
#'
#' plot(CharnetEx2.14, type = "o")
#'
NULL

#' @name CharnetEx2.15
#' @title Notas M\enc{é}{e}dias de Candidatos ao Vestibular
#' @description Notas médias de candidatos ao vestibular da Unicamp em
#'     1998.
#' @format Um \code{data.frame} com 9 colunas e 46 linhas, em que
#'
#' \describe{
#'
#' \item{\code{curso}}{Cursos ofertados no Vestibular.}
#'
#' \item{\code{per}}{Período ofertado (Diurno/Noturno)}
#'
#' \item{\code{cv}}{Relação Candidato/Vaga do curso.}
#'
#' \item{\code{nq}}{Nota média nas provas de Química.}
#'
#' \item{\code{qp}}{Disciplina Prioritária no curso (Química).}
#'
#' \item{\code{nm}}{Nota média nas provas de Matemática.}
#'
#' \item{\code{mp}}{Disciplina Prioritária no curso (Matemática).}
#'
#' \item{\code{nh}}{Nota média nas provas de História.}
#'
#' \item{\code{hp}}{Disciplina Prioritária no curso (História).}
#'
#' }
#' @keywords RM dummy
#' @source CHARNET et al. (2008), Capítulo 2, exercício
#'     15, pág. 50; Capítulo 7, exercício 3, pág. 164; Capítulo 8,
#'     exercício 6, pág. 197; Capítulo 9, exercício 8, pág. 231;
#'     Capítulo 10, exercício 3, pág. 254.
#'
#' @examples
#'
#' data(CharnetEx2.15)
#' str(CharnetEx2.15)
#'
#' # detach("package:lattice")
#' library(ggplot2)
#'
#' # Considerando a notas médias na prova de química
#' qplot(cv, nq, data = CharnetEx2.15, color = qp,
#'       xlab = "Relação Candidatos Vaga",
#'       ylab = "Notas na Prova de Química",
#'       main = "Notas na Prova de Química x Candidatos Vaga") +
#'     geom_smooth(method = "lm", se = FALSE)
#'
#' # Considerando a notas médias geral (soma das notas de química,
#' # matemática e história)
#' soma <- with(CharnetEx2.15, nq + nm + nh)
#' qplot(cv, soma, data = CharnetEx2.15, color = qp,
#'       xlab = "Relação Candidatos Vaga",
#'       ylab = "Soma das Notas") +
#'     geom_smooth(method = "lm", se = FALSE)
#'
#' # Correlação entre as variáveis numéricas (notas e relação
#' # candidato/vaga)
#' numcols <- sapply(CharnetEx2.15, is.numeric)
#' plot(CharnetEx2.15[, numcols])
#'
NULL

#' @name CharnetEx2.8
#' @title Dados Gen\enc{é}{e}ricos para Regress\enc{ã}{a}o Linear
#'     Simples
#' @description Três conjuntos de dados apresentados para
#'     exercício. Objetivo do exercício é visualizar casos em que só
#'     o termo linear não é satisfatório.
#' @format Um \code{data.frame} com 3 colunas e 34 linhas, em que
#'
#' \describe{
#'
#' \item{\code{conj}}{Fator que indica a qual conjunto a observação
#'     pertence.}
#'
#' \item{\code{x}}{Variável independente, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#'
#' @details Este conjunto de dados agrupa dados onde pressupõe-se que
#'     sejam de populações distintas. Portanto ao utilizá-lo separe-o
#'     com base na variável \code{conj}.
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 2, exercício 8, pág. 47.
#' @examples
#'
#' data(CharnetEx2.8)
#' str(CharnetEx2.8)
#'
#' # detach("package:lattice")
#' library(ggplot2)
#'
#' ggplot(CharnetEx2.8, aes(x = x, y = y)) +
#'     geom_point() +
#'     facet_grid(~conj) +
#'     stat_smooth(method = "lm")
#'
NULL

#' @name CharnetEx2.9
#' @title Notas de Candidatos ao Vestibular
#' @description Notas de 9 candidatos ao vestibular nas provas de
#'     Matemática e Física.
#' @format Um \code{data.frame} com 2 colunas e 9 linhas, em que
#'
#' \describe{
#'
#' \item{\code{prova}}{Área da prova no vestibular.}
#'
#' \item{\code{nota}}{Nota obtida no teste, em escala de 0 a 100.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 2, exercício 9, pág. 47.
#' @examples
#'
#' data(CharnetEx2.9)
#' str(CharnetEx2.9)
#'
#' plot(CharnetEx2.9)
#'
#' # Dados no formato largo (wide) para visualização dos pares
#' data.wide <- unstack(CharnetEx2.9, form = nota ~ prova)
#'
#' plot(data.wide)
#' abline(a = 0, b = 1)
#'
NULL

#' @name CharnetEx3.1
#' @title Compara\enc{çã}{ca}o entre Notas
#' @description Comparação entre as notas de uma prova teórica e de
#'     laboratório de 50 alunos, numa escala de 0 a 100 pontos.
#' @format Um \code{data.frame} com 2 colunas e 50 linhas, em que
#'
#' \describe{
#'
#' \item{\code{teo}}{Notas da prova teórica.}
#'
#' \item{\code{lab}}{Notas da prova de laboratório.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 3, exercício 1, pág. 65.
#' @examples
#'
#' data(CharnetEx3.1)
#' str(CharnetEx3.1)
#'
#' xtabs(~teo, data = CharnetEx3.1)
#'
#' plot(CharnetEx3.1)
#'
NULL

#' @name CharnetEx3.3
#' @title Res\enc{í}{i}duo Catalisado de um Experimento Qu\enc{í}{i}mico
#' @description Quantidade de resíduo catalisado, em gramas,
#'     proveniente de 100 ml de água, de um experimento químico,
#'     repetido 5 vezes, comparado a diversas temperaturas.
#' @format Um \code{data.frame} com 2 colunas e 50 linhas, em que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura do experimento, em ºC.}
#'
#' \item{\code{qt}}{Quantidade de resíduo, em gramas.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 3, exercício
#'     3, pág. 66; Capítulo 5, exercício 12, pág. 113.
#' @examples
#'
#' data(CharnetEx3.3)
#' str(CharnetEx3.3)
#'
#' xtabs(~temp, data = CharnetEx3.3)
#' plot(CharnetEx3.3)
#'
NULL

#' @name CharnetEx3.4
#' @title Compara\enc{çã}{ca}o da Velocidade M\enc{á}{a}xima e Peso de
#'     Carros de Corrida
#' @description Dados provenientes de um estudo onde se observou a
#'     velocidade máxima que carros de corrida de uma certa categoria
#'     conseguem atingir durante o percurso em comparação com seu peso.
#' @format Um \code{data.frame} com 2 colunas e 24 linhas, em que
#'
#' \describe{
#'
#' \item{\code{peso}}{Peso do veículo, em quilogramas.}
#'
#' \item{\code{velo}}{Velocidade máxima, em km/h .}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 3, exercício 4, pág. 66.
#' @examples
#'
#' data(CharnetEx3.4)
#' str(CharnetEx3.4)
#'
#' xtabs(~peso, data = CharnetEx3.4)
#'
#' plot(CharnetEx3.4)
#'
NULL

#' @name CharnetEx3.9
#' @title Consumo de Combust\enc{í}{i}vel por Velocidade
#' @description Teste feito com um certo tipo de carro, comparando o
#'     consumo de combustível (em milhas por galão) e sua velocidade
#'     (em milhas por hora).
#' @format Um \code{data.frame} com 2 colunas e 28 linhas, em que
#'
#' \describe{
#'
#' \item{\code{velo}}{Velocidade, em milhas por hora}
#'
#' \item{\code{cons}}{Consumo de combustível, em milhas por galão}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 3, exercício 9, pág. 68.
#' @examples
#'
#' data(CharnetEx3.9)
#' str(CharnetEx3.9)
#' xtabs(~velo, data = CharnetEx3.9)
#'
#' plot(CharnetEx3.9)
#'
NULL

#' @name CharnetEx4.1
#' @title Valores de uma Vari\enc{á}{a}vel Aleat\enc{ó}{o}ria
#'     Cont\enc{í}{i}nua
#' @description Valores de uma variável aleatória X contínua.
#' @format Um vetor numérico com 20 elementos.
#' @keywords amostra
#' @source CHARNET et al. (2008), Capítulo 4, exercício 1, pág. 82.
#' @examples
#'
#' data(CharnetEx4.1)
#' str(CharnetEx4.1)
#'
#' hist(CharnetEx4.1, prob = TRUE)
#' lines(density(CharnetEx4.1), col = 4)
#' rug(CharnetEx4.1)
#'
#' # Considerando o exercício proposto em Charnet, 2008
#' plot(CharnetEx4.1^3 ~ CharnetEx4.1,
#'      ylab = expression(Y==X^3),
#'      xlab = "X")
#'
NULL

#' @name CharnetEx4.10
#' @title Custo de Produ\enc{çã}{ca}o por Tamanho do Lote
#' @description Custo de produção pelo número de peças produzidas em uma
#'     amostra de 10 lotes.
#' @format Um \code{data.frame} com 2 colunas e 10 linhas, em que
#'
#' \describe{
#'
#' \item{\code{npecas}}{Quantidade de peças produzidas no lote, em
#'     unidades.}
#'
#' \item{\code{custo}}{Custo do total de peças do lote.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 4, exercício
#'     10, pág. 85; Capítulo 6, exercício 10, pág. 146.
#' @examples
#'
#' data(CharnetEx4.10)
#' str(CharnetEx4.10)
#'
#' plot(CharnetEx4.10)
#'
NULL

#' @name CharnetEx4.2
#' @title Sal\enc{á}{a}rio M\enc{é}{e}dio Mensal de Ex-Alunos de
#'     Economia
#' @description Pesquisa de uma faculdade de economia sobre a evolução
#'     do salário médio mensal de 20 de seus ex-alunos no período de
#'     1987 a 1993.
#' @format Um \code{data.frame} com 2 colunas e 7 linhas, em que
#'
#' \describe{
#'
#' \item{\code{ano}}{Ano da coleta dos dados.}
#'
#' \item{\code{ms}}{Valor da média salarial.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 4, exercício 2, pág. 82.
#' @examples
#'
#' data(CharnetEx4.2)
#' str(CharnetEx4.2)
#'
#' plot(CharnetEx4.2)
#'
NULL

#' @name CharnetEx4.8
#' @title Taxa de Acidentes de Trabalho
#' @description Taxa de acidentes de trabalho por milhão de horas/homem
#'     de exposição ao risco, durante 9 anos.
#' @format Um \code{data.frame} com 2 colunas e 9 linhas, em que
#'
#' \describe{
#'
#' \item{\code{ano}}{Ano em que foi registrado a taxa.}
#'
#' \item{\code{taxa}}{Taxa de acidentes de trabalho, em milhão de
#'     horas/homem.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 4, exercício
#'     8, pág. 84; Capítulo 6, exercício 9, pág. 146.
#' @examples
#'
#' data(CharnetEx4.8)
#' str(CharnetEx4.8)
#'
#' plot(CharnetEx4.8, type = "o")
#'
NULL

#' @name CharnetEx5.1
#' @title Peso de Embri\enc{õ}{o}es de Galinha no Tempo
#' @description Peso de embriões de galinha no tempo.
#' @format Um \code{data.frame} com 2 colunas e 11 linhas, em que
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade do embrião, em dias.}
#'
#' \item{\code{peso}}{Peso do embrião, em gramas.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 5, exercício
#'     1, pág. 108.
#' @examples
#'
#' data(CharnetEx5.1)
#' str(CharnetEx5.1)
#'
#' plot(CharnetEx5.1, type = "o")
#'
NULL

#' @name CharnetEx5.10
#' @title Rela\enc{çã}{ca}o entre a Taxa de Desemprego e \enc{Í}{I}ndice
#'     de Suic\enc{í}{i}dios
#' @description Dados do jornal Los Angeles Times, de 13 de dezembro de
#'     1980, informando as taxas de desemprego e o índice de suicídios
#'     nos EUA em 14 diferentes anos, no período de 1950 a 1977.
#' @format Um \code{data.frame} com 2 colunas e 14 linhas, em que
#'
#' \describe{
#'
#' \item{\code{ano}}{Ano do registro.}
#'
#' \item{\code{des}}{Taxa de desemprego.}
#'
#' \item{\code{su}}{Índice de suicídio, para 1000 habitantes.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Capítulo 5, exercício 10, pág. 112.
#' @examples
#'
#' data(CharnetEx5.10)
#' str(CharnetEx5.10)
#'
#' plot(CharnetEx5.10)
#'
NULL

#' @name CharnetEx5.11
#' @title Rela\enc{çã}{ca}o do Lucro de uma Loja e Gastos com
#'     Publicidade
#' @description Relação do lucro de uma loja de eletrônicos e seu gasto
#'     com publicidade num período de 19 meses.
#' @format Um \code{data.frame} com 2 colunas e 19 linhas, em que
#'
#' \describe{
#'
#' \item{\code{lucro}}{Lucro, em milhares de reais.}
#'
#' \item{\code{gastos}}{Gasto em publicidade, em milhares de reais.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 5, exercício 11, pág. 112;
#'     Capítulo 6, exercício 5, pág. 143.
#' @examples
#'
#' data(CharnetEx5.11)
#' str(CharnetEx5.11)
#'
#' plot(lucro ~ gastos, data = CharnetEx5.11)
#' plot(lucro ~ gastos, data = CharnetEx5.11, log = "xy")
#'
NULL

#' @name CharnetEx5.13
#' @title Danos aos Pulm\enc{õ}{o}es em Pacientes com Enfisema
#' @description Danos aos pulmões em 16 pacientes com enfisema pulmonar
#'     conforme o número de anos que ele fumou.
#' @format Um \code{data.frame} com 2 colunas e 16 linhas, em que
#'
#' \describe{
#'
#' \item{\code{anos}}{Tempo, em anos, que o paciente fumou.}
#'
#' \item{\code{danos}}{Danos gerados nos pulmões, em escala de 0 a 100.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 5, exercício 1, pág. 113.
#' @examples
#'
#' data(CharnetEx5.13)
#' str(CharnetEx5.13)
#'
#' plot(CharnetEx5.13)
#'
NULL

#' @name CharnetEx5.3
#' @title Precis\enc{ã}{a}o de um Veloc\enc{í}{i}metro
#' @description Medição da precisão de um velocímetro de locomotiva.
#' @format Um \code{data.frame} com 2 colunas e 8 linhas, em que
#'
#' \describe{
#'
#' \item{\code{vr}}{Velocidade real, em km/h.}
#'
#' \item{\code{va}}{Velocidade anotada no velocímetro, em km/h.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 5, exercício 3, pág. 109.
#' @examples
#'
#' data(CharnetEx5.3)
#' str(CharnetEx5.3)
#'
#' plot(CharnetEx5.3, asp = 1)
#' abline(a = 0, b = 1, lty = 2)
#'
NULL

#' @name CharnetEx5.5
#' @title Respostas a um An\enc{ú}{u}ncio de Emprego
#' @description Relação da resposta a um anúncio de emprego com o número
#'     de linhas do anúncio.
#' @format Um \code{data.frame} com 2 colunas e 14 linhas, em que
#'
#' \describe{
#'
#' \item{\code{linhas}}{Número de linhas do anúncio de emprego.}
#'
#' \item{\code{resp}}{Respostas obtidas com o anúncio.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 5, exercício
#'     5, pág. 110; Capítulo 6, exercício 4, pág. 143.
#'
#' @examples
#'
#' data(CharnetEx5.5)
#' str(CharnetEx5.5)
#'
#' plot(CharnetEx5.5)
#'
NULL

#' @name CharnetEx5.6
#' @title Consumo de Combust\enc{í}{i}vel e Peso do Autom\enc{ó}{o}vel
#' @description Consumo de combustível para percorrer determinado trecho
#'     conforme o peso dos veículos de passeio, de mesmo ano,
#'     selecionados aleatoriamente de uma grande empresa.
#' @format Um \code{data.frame} com 2 colunas e 14 linhas, em que
#'
#' \describe{
#'
#' \item{\code{peso}}{Peso do veículo, em kg.}
#'
#' \item{\code{cons}}{Consumo do veículo num determinado trecho,
#'    em litros.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 5, exercício 6, pág. 110.
#' @examples
#'
#' data(CharnetEx5.6)
#' str(CharnetEx5.6)
#'
#' plot(CharnetEx5.6)
#'
NULL

#' @name CharnetEx6.3
#' @title Sal\enc{á}{a}rio Mensal de Formandos em Economia
#' @description Pesquisa de uma faculdade de economia sobre a evolução
#'     do salário mensal de 5 de seus formandos no período de 87 a 93.
#' @format Um \code{data.frame} com 2 colunas e 35 linhas, em que
#'
#' \describe{
#'
#' \item{\code{ano}}{Ano do registro do salário.}
#'
#' \item{\code{salario}}{Salário mensal.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 6, exercício 3, pág. 143.
#' @examples
#'
#' data(CharnetEx6.3)
#' str(CharnetEx6.3)
#'
#' plot(CharnetEx6.3)
#'
NULL

#' @name CharnetEx6.6
#' @title Conjunto de Dados Gen\enc{é}{e}rico
#' @description Conjunto de dados qualquer para exercício de ajuste de
#'     um modelo de regressão linear simples, com transformação na
#'     variável resposta e retirando os pontos considerados
#'     discrepantes.
#' @format Um \code{data.frame} com 2 colunas e 15 linhas, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Variável independente, sem interpretação.}
#'
#' \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 6, exercício 6, pág. 144.
#' @examples
#'
#' data(CharnetEx6.6)
#' str(CharnetEx6.6)
#'
#' plot(CharnetEx6.6)
#'
NULL

#' @name CharnetEx6.7
#' @title Peso de Correspond\enc{ê}{e}ncias
#' @description Relação do peso das correspondências levantados por uma
#'     agência de correios durante 11 dias.
#' @format Um \code{data.frame} com 2 colunas e 11 linhas.
#'
#' \describe{
#'
#' \item{\code{peso}}{Peso total das correspondências no dia, em kg.}
#'
#' \item{\code{cor}}{Total de correspondências no dia, em milhares.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 6, exercício 7, pág. 145.
#' @examples
#'
#' data(CharnetEx6.7)
#' str(CharnetEx6.7)
#'
#' plot(CharnetEx6.7)
#'
NULL

#' @name CharnetEx7.1
#' @title Efeito da Radia\enc{çã}{ca}o ao Oz\enc{ô}{o}nio em Sementes de
#'     Soja
#' @description Efeito da radiação solar em dois níveis de ozônio e
#'     impacto nos pesos de sementes de soja.
#' @format Um \code{data.frame} com 3 colunas e 12 linhas, em que
#'
#' \describe{
#'
#' \item{\code{n}}{Nível de ozônio, fator com níveis \code{a} ou
#'     \code{b}.}
#'
#' \item{\code{rad}}{Quantidade de radiação solar aplicada, unidade de
#'     medida não informada.}
#'
#' \item{\code{peso}}{Peso das sementes de soja, unidade de medida não
#'     informada.}
#'
#' }
#' @keywords RS dummy
#' @source CHARNET et al. (2008), Capítulo 7, exercício 1, pág. 163;
#'     Capítulo 10, exercício 1, pág. 253.
#' @examples
#'
#' data(CharnetEx7.1)
#' str(CharnetEx7.1)
#'
#' with(CharnetEx7.1, plot(peso, rad, col = n))
#'
NULL

#' @name CharnetEx7.2
#' @title Impacto de Impurezas em um Reator Qu\enc{í}{i}mico
#' @description Relação entre a porcentagem de impurezas dentro de um
#'     reator químico e o tempo de permanência da substância dentro
#'     deste reator.
#' @format Um \code{data.frame} com 4 colunas e 20 linhas, em que
#'
#' \describe{
#'
#' \item{\code{rea}}{Reator analisado, um fator com dois níveis \code{I}
#'     ou \code{II}.}
#'
#' \item{\code{t}}{Tempo, em minutos.}
#'
#' \item{\code{imp}}{Porcentagem de impurezas, em escala \eqn{\log}.}
#'
#' }
#' @keywords RS dummy
#' @source CHARNET et al. (2008), Capítulo 7, exercício 2, pág. 163;
#'     Capítulo 10, exercício 2, pág. 253.
#' @examples
#'
#' data(CharnetEx7.2)
#' str(CharnetEx7.2)
#'
#' with(CharnetEx7.2, plot(tempo ~ imp, col = rea))
#'
NULL

#' @name CharnetEx7.7
#' @title Rela\enc{çã}{ca}o entre Consumo de Combust\enc{í}{i}vel e
#'     Pot\enc{ê}{e}ncia do Motor
#' @description Relação entre o consumo de combustível (km/l) e a
#'     potência do motor (HP) de duas marcas de carro (A e B).
#' @format Um \code{data.frame} com 4 colunas e 20 linhas, em que
#'
#' \describe{
#'
#' \item{\code{marca}}{Marca do carro, fator com dois níveis \code{A} ou
#'     \code{B}.}
#'
#' \item{\code{cons}}{Consumo de combustível, em km/l.}
#'
#' \item{\code{pot}}{Potência do motor, em HP.}
#'
#' }
#' @keywords RS dummy
#' @source CHARNET et al. (2008), Capítulo 7, exercício 7, pág. 167,
#'     Capítulo 10, exercício 6, pág. 256.
#' @examples
#'
#' data(CharnetEx7.7)
#' str(CharnetEx7.7)
#'
#' with(CharnetEx7.7, plot(cons, pot, col = marca))
#'
NULL

#' @name CharnetEx8.1

#' @title Influ\enc{ê}{e}ncia da Publicidade e Capital Investido no
#'     Lucro Anual
#' @description Influência das variáveis capital investido (\code{capi})
#'     e gasto em publicidade (\code{publi}) no lucro anual
#'     (\code{lucro}) de 12 empresas observadas.
#' @format Um \code{data.frame} com 3 colunas e 12 linhas, em que
#'
#' \describe{
#'
#' \item{\code{lucro}}{Lucro anual, em 100 mil reais.}
#'
#' \item{\code{capi}}{Capital investido no ano, em 100 mil reais.}
#'
#' \item{\code{publi}}{Gasto com publicidade no ano, em 100 mil reais.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Capítulo 8, exercício 1, pág. 195,
#'     Capítulo 9, exercício 6, pág. 230.
#' @examples
#'
#' data(CharnetEx8.1)
#' str(CharnetEx8.1)
#'
#' plot(CharnetEx8.1)
#' lm(lucro ~ ., data = CharnetEx8.1)
#'
NULL

#' @name CharnetEx8.2
#' @title Rela\enc{çã}{ca}o da Temperatura e Produ\enc{çã}{ca}o de um
#'     Produto Qu\enc{í}{i}mico
#' @description Uma indústria química está interessada em maximizar a
#'     sua produção de um certo processo químico. Para isso, obteve os
#'     seguintes resultados da temperatura codificada, \code{temp}, e do
#'     peso do produto, \code{peso}, em kg.
#' @format Um \code{data.frame} com 2 colunas e 11 linhas, em que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura codificada.}
#'
#' \item{\code{peso}}{Peso do produto, em kg.}
#'
#' }
#' @keywords RP RegSeg
#' @source CHARNET et al. (2008), Capítulo 8, exercício 2, pág. 195,
#'     Capítulo 9, exercício 11, pág. 233.
#' @examples
#'
#' data(CharnetEx8.2)
#' str(CharnetEx8.2)
#'
#' plot(CharnetEx8.2)
#'
NULL

#' @name CharnetEx8.3
#' @title Tempo de Corros\enc{ã}{a}o do Metal
#' @description Estudo da relação entre o grau de corrosão de um certo
#'    metal e o tempo de exposição deste metal à ação da acidez do solo.
#' @format Um \code{data.frame} com 2 colunas e 10 linhas, em que
#'
#' \describe{
#'
#' \item{\code{tempo}}{Tempo de exposição do metal, em semanas.}
#'
#' \item{\code{gc}}{Grau de corrosão do metal.}
#'
#' }
#' @keywords RS
#' @source CHARNET et al. (2008), Capítulo 8, exercício
#'     3, pág. 196, Capítulo 9, exercício 9, pág. 232.
#' @examples
#'
#' data(CharnetEx8.3)
#' str(CharnetEx8.3)
#'
#' plot(CharnetEx8.3)
#'
NULL

#' @name CharnetEx8.4
#' @title Pe\enc{ç}{c}as Defeituosas por Produ\enc{çã}{ca}o
#'     M\enc{é}{e}dia e Tempo de Reparo
#' @description Relação da quantidade de peças defeituosas por produção
#'     média e tempo decorrido desde o último reparo da máquina.
#' @format Um \code{data.frame} com 3 colunas e 15 linhas, em que
#'
#' \describe{
#'
#' \item{\code{nitens}}{Itens produzidos com defeito num dia, em peças.}
#'
#' \item{\code{prod}}{Produção média por hora, em peças.}
#'
#' \item{\code{tempo}}{Tempo, em semanas, decorrido do último reparo da
#'     máquina.}
#'
#' }
#' @keywords RM
#' @source CHARNET et al. (2008), Capítulo 8, exercício 4, pág. 196;
#'     Capítulo 9, exercício 7, pág. 230.
#' @examples
#'
#' data(CharnetEx8.4)
#' str(CharnetEx8.4)
#'
#' plot(CharnetEx8.4)
#'
NULL

#' @name CharnetEx8.5
#' @title Efeito da Temperatura e Concentra\enc{çã}{ca}o numa
#'     Rea\enc{çã}{ca}o Qu\enc{í}{i}mica
#' @description Efeito da temperatura (\code{temp}) e percentual de
#'     concentração (\code{conc}) na produção de um composto numa reação
#'     química (\code{prod}).
#' @format Um \code{data.frame} com 3 colunas e 20 linhas, em que
#'
#' \describe{
#'
#' \item{\code{prod}}{Produção de um certo composto, em litros.}
#'
#' \item{\code{temp}}{Temperatura da reação, em \eqn{^\circ}C.}
#'
#' \item{\code{conc}}{Percentual de concentração, em \%.}
#'
#' }
#' @keywords FAT2
#' @source CHARNET et al. (2008), Capítulo 8, exercício 5, pág. 197;
#'     Capítulo 9, exercício 10, pág. 233.
#' @examples
#'
#' data(CharnetEx8.5)
#' str(CharnetEx8.5)
#'
#' xtabs(~temp + conc, data = CharnetEx8.5)
#'
#' plot(CharnetEx8.5)
#'
NULL
