#' @name MingotiAnA1
#' @title Aceita\enc{çã}{ca}o de um novo produto comest\enc{í}{i}vel
#' @description Pesquisa de mercado feita para avaliar a aceitação do
#'     consumidor para um novo produto comestível. Cada consumidor foi
#'     convidado a dar uma nota de 1 a 5 para sete atributos do produto.
#' @format Um \code{data.frame} com 200 observações e 9 variáveis, 
#'      em que
#'
#' \describe{
#'
#' \item{\code{id}}{Número de identificação do indivíduo.}
#' 
#' \item{\code{sexo}}{Sexo do indivíduo 
#'     (0 para mulheres e 1 para homens).}
#' 
#' \item{\code{sabor}}{Nota atribuída ao sabor do produto.} 
#'    
#'
#' \item{\code{aroma}}{Nota atribuída ao aroma do produto.} 
#'    
#'     
#' \item{\code{cor}}{Nota atribuída à cor do produto.} 
#'    
#' 
#' \item{\code{textu}}{Nota atribuída à textura do produto.} 
#'    
#'
#' \item{\code{utili}}{Nota atribuída à utilidade do 
#'    produto.}
#'     
#' \item{\code{local}}{Nota atribuída à facilidade de 
#'    encontrar o produto.}
#'     
#' \item{\code{embal}}{Nota atribuída à embalagem do 
#'    produto.}
#'
#' }
#' @keywords AnaFat
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 108).
#'      
#' @examples
#'
#' data(MingotiAnA1)
#'
#' da <- reshape(MingotiAnA1, direction = "long", varying = list(3:9),
#'               v.names = "notas", timevar = "atributo")
#' tab<-with(da,data.frame(table(sexo,atributo,notas)))
#' names(tab)<-c('sexo','atributo','notas','freq')              
#' library(lattice)
#' barchart(freq~atributo|sexo,groups=notas,data=tab,
#'      xlab='Atributo',ylab='Freq',auto.key=list(space="top", columns=5,
#'      title="Nota", cex.title=1),main="Distribuição das notas atribuídas ao produto",
#'      strip=strip.custom(factor.levels=c("Mulheres","Homens")),
#'      scales=list(x=list(labels=c("Sabor","Aroma","Cor","Textu","Utili","Local","Embal"))))
NULL

#' @name MingotiAnA2
#' @title Desempenho de 44 funcion\enc{á}{a}rios de uma empresa
#' @description Dados referentes a 44 funcionários de uma empresa, aos 
#'     quais foram atribuídas notas para desempenho nas vendas, 
#'     desempenho nos lucros, captação de novos clientes, além dos
#'     resultados de quatro testes que medem a habilidade de escrita, 
#'     lógica, social e matemática.
#' @format Um \code{data.frame} com 44 observações e 8 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{funcio}}{Número de identificação do funcionário.}
#'
#' \item{\code{venda}}{Nota atribuída ao funcionário referente ao desempenho
#'     nas vendas.}
#'     
#' \item{\code{lucro}}{Nota atribuída ao funcionário referente ao desempenho
#'     no lucro da empresa.}
#'     
#' \item{\code{clie}}{Nota atribuída ao funcionário referente ao desempenho
#'     na captação de novos clientes.}
#'
#' \item{\code{escri}}{Nota atribuída à habilidade do funcionário na
#'     escrita.}
#'
#' \item{\code{logica}}{Nota atribuída à habilidade do funcionário em
#'     lógica.}
#'     
#' \item{\code{social}}{Nota atribuída à habilidade social do funcionário.}
#'
#' \item{\code{mate}}{Nota atribuída a habilidade do funcionário em
#'     matemática.}
#'
#' }
#' @keywords AnaFat
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 123 (Ex 4.2); 126 (Ex 4.3)).
#' @examples
#'
#' data(MingotiAnA2)
#' 
#' pairs(MingotiAnA2)
NULL

#' @name MingotiAnA3
#' @title Dados dos domic\enc{í}{i}lios
#' @description Dados de uma pesquisa feita em 120 residências de uma
#'     determinada região. Os dados contém informações dos domicílios e
#'     dos residentes. 
#' 
#' 
#' @format Um \code{data.frame} com 120 observações e 6 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{dom}}{Identificação do domicílio.}
#' 
#' \item{\code{loc}}{Fator que indica localidade da residência 
#'     (de 1 a 3).}
#' 
#' \item{\code{inst}}{Fator que indica grau de instrução do chefe da 
#'     família (de 1 a 3).}
#' 
#' \item{\code{nres}}{Número de pessoas residentes no domicílio.}
#' 
#' \item{\code{rendm}}{Renda familiar mensal (em quantidade de salários 
#'     mínimos).}
#' 
#' \item{\code{rendpc}}{Renda familiar mensal per capita (em número de 
#'     salários mínimos).}
#' 
#' }
#'
#' @keywords AnaComp
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 287).
#' 
#' @examples
#'
#' data(MingotiAnA3) 
#' 
#' library(lattice)
#' 
#' bwplot(inst~rendpc|loc, data=MingotiAnA3,
#'        xlab = "Renda per capita ",
#'        ylab = "Grau de instrução",
#'        main = "Renda e Grau de Instrução por Localidade")
#' 
#'                   
NULL

#' @name MingotiAnA4
#' @title Dados relativos \enc{à}{a}s empresas 
#' @description Dados de 21 empresas, coletados aproximadamente 2 anos
#'     antes da falência das mesmas, e de outras 25 empresas que não
#'     faliram no período.
#' @format Um \code{data.frame} com 46 observações e 6 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{emp}}{Identificação da empresa.}
#' 
#' \item{\code{grp}}{Fator que indica o grupo em que a empresa está situada
#'     (1 = se a empresa faliu, 2 = se a empresa não faliu).}
#' 
#' \item{\code{x1}}{Fluxo de caixa/ total de débitos.}
#' 
#' \item{\code{x2}}{Rendimento da empresa/ total de patrimônio.}
#' 
#' \item{\code{x3}}{Patrimônio atual/ total de débito.}
#' 
#' \item{\code{x4}}{Patrimônio atual/ rendimento das vendas.}
#' 
#' }
#'
#' @keywords AnaComp
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 290).
#' 
#' @examples
#'
#' data(MingotiAnA4) 
#' 
#' library(car)
#' 
#' scatterplotMatrix(~ x1 + x2 + x3 + x4 | grp, data=MingotiAnA4, 
#'      reg.line = FALSE,
#'      spread = FALSE, 
#'      smoother = FALSE,
#'      main = "Dispersão das variáveis de medidas para os dois grupos")
#'                   
NULL

#' @name MingotiAnA5
#' @title Sele\enc{çã}{ca}o de alunos para um programa de p\enc{ó}{o}s-gradua\enc{çã}{ca}o
#' @description Um programa de pós-graduação dividiu 62 candidatos do 
#'     ano anterior em 3 grupos: (1) candidatos aprovados, 
#'     (2) candidatos na lista de espera e (3) candidatos que não
#'     foram aprovados. Para a nova seleção, os responsáveis pensam em
#'     considerar a nota da prova de conhecimento específico e a nota 
#'     atribuída ao histórico escolar.      
#' @format Um \code{data.frame} com 62 observações e 4 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{cand}}{Número de identificação do candidato.}
#'     
#' \item{\code{grupo}}{Grupo ao qual o candidato foi alocado, segundo 
#'     seu desempenho no processo seletivo (1, 2 ou 3).}
#'     
#' \item{\code{nota}}{Nota da prova de conhecimento específico da área
#'     do programa.}
#'     
#' \item{\code{histor}}{Nota atribuída ao histórico escolar do 
#'     candidato.}
#'     
#' }
#' @keywords AnaDisc
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 234)
#' @examples
#'
#' data(MingotiAnA5)
#'
#' require(lattice)
#'
#' xyplot(histor ~ nota, groups = grupo, data = MingotiAnA5,
#'        auto.key = TRUE)
NULL

#' @name MingotiAnA6
#' @title Dados de funcion\enc{á}{a}rios da empresa 
#' @description Dados descritivos dos funcionários de uma empresa para
#'     avaliar qualidade.
#' 
#' 
#' @format Um \code{data.frame} com 109 observações e 10 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{func}}{Funcionários.}
#' 
#' \item{\code{grupo}}{Grupo de desempenho nos teste (0 = médio, 1 = melhor).}
#' 
#' \item{\code{idade}}{Idade do funcionário (em anos completos).}
#' 
#' \item{\code{sexo}}{Fator que indica sexo (0 = feminino, 1 = masculino).}
#' 
#' \item{\code{ecivil}}{Fator que indica estado Civil 
#'     (1 = solteiro, 0 = não solteiro).}
#' 
#' \item{\code{nfilho}}{Número de filhos.}
#' 
#' \item{\code{anexp}}{Anos de experiência na função.}
#' 
#' \item{\code{testp}}{Nota do teste psicotécnico (de 0 a 50).}
#' 
#' \item{\code{testc}}{Nota do teste de conhecimento prático da função 
#'     que exerce (de 1 a 10).}
#' 
#' \item{\code{satisf}}{Satisfação com a vida pessoal ("1" para 
#'     satisfeito, "0" para não satisfeito).}
#' 
#' }
#'
#' @keywords AnaComp
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 292).
#' 
#' @examples
#'
#' data(MingotiAnA6) 
#' 
#' library(car)
#' 
#' scatterplotMatrix(~ testp + testc + anexp | grupo, data=MingotiAnA6, 
#'      reg.line=FALSE,
#'      spread=FALSE, 
#'      smoother=FALSE,
#'      main="Dispersão das variáveis de medidas para os dois grupos")
#'                   
NULL

#' @name MingotiTb2.1
#' @title Rochas de uma determinada regi\enc{ã}{a}o
#' @description Dados relativos a uma amostra de 12 rochas de uma certa
#'     região no qual tem as porcentagens de quartzo, feldspato e um
#'     índice que mede cor para cada uma das rochas.
#' @format Um \code{data.frame} com 12 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rocha}}{Número da rocha amostrada.}
#'
#' \item{\code{qrtz}}{Porcentagem de quartzo.}
#'
#' \item{\code{fdsp}}{Porcentagem de feldspato.}
#'
#' \item{\code{cor}}{Índice que mede a cor.}
#'
#' }
#' @keywords TODO
#' @source Mingoti, S. A. (2005). Análise de dados através de métodos de
#'     estatística multivariada: uma abordagem aplicada.  Belo
#'     Horizonte, MG: Editora UFMG. (pg 42).
#' @examples
#'
#' data(MingotiTb2.1)
#'
#' pairs(~qrtz + cor + fdsp,
#'       data = MingotiTb2.1,
#'       main = "Matriz de dispersão das variáveis da rocha")
#'
NULL

#' @name MingotiTb2.2
#' @title Notas de estudantes em tr\enc{ê}{e}s provas
#' @description Notas obtidas em uma turma de estudantes em três provas
#'     de uma determinada disciplina.
#' @format Um \code{data.frame} com 19 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{est}}{Identificação do estudante.}
#'
#' \item{\code{p1}}{Nota obtida na primeira prova variando de 0 a 25.}
#'
#' \item{\code{p2}}{Nota obtida na segunda prova variando de 0 a 25.}
#'
#' \item{\code{p3}}{Nota obtida na terceira prova variando de 0 a 25.}
#'
#' }
#' @keywords TODO
#' @source Mingoti, S. A. (2005). Análise de dados através de métodos de
#'     estatística multivariada: uma abordagem aplicada.  Belo
#'     Horizonte, MG: Editora UFMG. (pg 52).
#' @examples
#'
#' data(MingotiTb2.2)
#'
#' pairs(~ p1 + p2 + p3,
#'       data = MingotiTb2.2,
#'       main = "Matriz de dispersão das 4 notas")
#'
NULL

#' @name MingotiTb3.1
#' @title Receitas e patrim\enc{ô}{o}nio de empresas
#' @description Dados de 12 empresas sobre ganhos (bruto e líquido) e
#'     patrimônio acumulado num determinado período.
#' @format Um \code{data.frame} com 12 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{emp}}{Identificação da empresa.}
#'
#' \item{\code{gbt}}{Ganho bruto da empresa (em unidades monetárias).}
#'
#' \item{\code{glq}}{Ganho líquido da empresa (em unidades monetárias).}
#'
#' \item{\code{patr}}{Patrimônio acumulado (unidades monetárias).}
#'
#' }
#' @keywords TODO
#' @source Mingoti, S. A. (2005). Análise de dados através de métodos de
#'     estatística multivariada: uma abordagem aplicada.  Belo
#'     Horizonte, MG: Editora UFMG. (pg 42).
#' @examples
#'
#' library(car)
#'
#' data(MingotiTb3.1)
#'
#' scatterplotMatrix(~gbt + glq + patr,
#'                   data = MingotiTb3.1,
#'                   main = "Dispersão das variáveis")
#'
#'
NULL

#' @name MingotiTb3.10
#' @title Dados relativos aos pesos de unidades empacotadas 
#' @description Dados de 10 unidades (produtos embalados) selecionadas 
#'     aleatoriamente de cada uma de duas máquinas de empacotamento
#'     de determinada empresa, durante o período de produção. 
#'     Foram registrados os pesos das 20 unidades. 
#'      
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{maq}}{Identificação da máquina (A ou B).}
#'  
#' \item{\code{peso}}{Peso das 20 unidades coletadas das duas máquinas 
#'     de empacotamento (gramas).}
#' 
#' }
#'
#' @keywords AnaComp
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 75).
#' 
#' @examples
#'
#' data(MingotiTb3.10) 
#' 
#' library(lattice)
#'
#' bwplot(peso~maq, data = MingotiTb3.10, xlab = "Máquina")
#'
NULL

#' @name MingotiTb3.5
#' @title Impress\enc{õ}{o}es sensoriais de marcas de coxinha de galinha
#' @description Dados de 8 marcas de coxinha de galinha, avaliados em 4
#'     atributos (sabor, aroma, qualidade da massa e qualidade do
#'     recheio) avaliados por 5 julgadores numa escala de 1 a 5, quanto
#'     maior a nota melhor a classificação do atributo.  Os dados de
#'     entrada da tabela referem-se à média das notas dos 5 julgadores,
#'     para cada marca e cada atributo.
#' @format Um \code{data.frame} com 8 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{marca}}{Identificação da marca.}
#'
#' \item{\code{sabor}}{Média das notas dos juízes para o sabor da
#'     coxinha de galinha.}
#'
#' \item{\code{aroma}}{Média das notas dos juízes para o aroma da
#'     coxinha de galinha.}
#'
#' \item{\code{massa}}{Média das notas dos juízes para a qualidade da
#'     massa.}
#'
#' \item{\code{recheio}}{Média das notas dos juízes para a qualidade do
#'     recheio.}
#'
#' }
#' @keywords sensorial
#' @source Mingoti, S. A. (2005). Análise de dados através de métodos de
#'     estatística multivariada: uma abordagem aplicada.  Belo
#'     Horizonte, MG: Editora UFMG. (pg 42).
#' @examples
#'
#' data(MingotiTb3.5)
#'
#' library(car)
#'
#' scatterplotMatrix(~sabor + aroma + massa + recheio,
#'                   data = MingotiTb3.5,
#'                   main = "Matriz de dispersão")
#'
NULL

#' @name MingotiTb3.7
#' @title Dados de amostras de solo
#' @description Dados de 25 amostras de determinado tipo de solo. 
#'     Para cada amostra foram registradas as porcentagens de areia, sedimentos, 
#'     argila e a quantidade de material orgânico. 
#' @format Um \code{data.frame} com 25 observações e 5 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{amst}}{Identificação da amostra.}
#' 
#' \item{\code{areia}}{Porcentagem de areia.}
#' 
#' \item{\code{sed}}{Porcentagem de sedimentos.}
#' 
#' \item{\code{arg}}{Porcentagem de argila.}
#' 
#' \item{\code{morg}}{Quantidade de material orgânico.}
#' 
#' }
#'
#' @keywords AnaComp
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 73).
#' 
#' @examples
#'
#' data(MingotiTb3.7) 
#' 
#' library(car)
#' 
#' scatterplotMatrix(~ amst + areia + sed + arg + morg, 
#'     data = MingotiTb3.7, main = "Matriz de gráficos de dispersão")
#'                   
NULL

#' @name MingotiTb6.1
#' @title Renda mensal de seis indiv\enc{í}{i}duos de certa localidade
#' @description Dados referente às rendas mensais (em quantidade de 
#'     salários mínimos) e às idades de seis indivíduos de uma
#'     localidade.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{id}}{Identificação do indivíduo  
#'     (A-F).}
#'
#' \item{\code{renda}}{Renda mensal (em quantidade de salários mínimos).}
#'
#' \item{\code{idade}}{Idade do indivíduo.}
#'
#' }
#' @keywords AnaClust
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 159).
#'      
#' @examples
#'
#'data(MingotiTb6.1)
#'
#' library(lattice)
#'
#' xyplot(renda ~ idade,
#'       data = MingotiTb6.1,
#'       ylab="Renda mensal")
#'
NULL

#' @name MingotiTb6.8
#' @title \enc{Í}{I}ndices de desenvolvimento de pa\enc{í}{i}ses
#' @description Dados referentes a 
#'     índices de expectativa de vida, educação, renda (PIB) e 
#'     estabilidade política e de segurança de 21 países. Os índices foram 
#'     construídos segundo metodologia da ONU. Para qualquer um deles, maiores 
#'     valores são indicadores de melhor qualidade de vida.
#' @format Um \code{data.frame} com 21 observações e 5 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{pais}}{Nomes dos 21 países.}
#'
#' \item{\code{expecvida}}{Índice baseado na esperança de vida, medindo a 
#'     realização relativa de um país na esperança de vida ao nascer.}
#'
#' \item{\code{educ}}{Índice referente ao nível de educação, medindo a realização relativa 
#'     de um país tanto na alfabetização de adultos quanto na 
#'     escolarização bruta combinada dos níveis primário, secundário e 
#'     superior.}
#'
#' \item{\code{pib}}{Índice baseado no PIB, calculado utilizando o PIB
#'     per capita ajustado (dólares).}
#'     
#' \item{\code{estabpoli}}{Índice baseado na percepção da probabilidade de 
#'     desestabilização (tensões étnicas, conflito armado, etc).}
#'
#' }
#' @keywords AnaClust
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 184).
#'      
#' @examples
#'
#'data(MingotiTb6.8)
#'
#'pairs(MingotiTb6.8)
#' 
NULL

#' @name MingotiTb8.1
#' @title Renda e o n\enc{ú}{u}mero de filhos
#' @description Dados relativos a 257 indivíduos classificados de acordo
#'     com a renda e número de filhos.
#' @format Um \code{data.frame} com 3 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{renda}}{Renda, medida em 3 categorias (menos de 2000,
#'      2000 a 5000 e 5000 ou mais), em unidades monetárias.}
#'
#' \item{\code{i0f}}{Indivíduos que não tem filhos (igual a zero
#'     filhos).}
#'
#' \item{\code{i1f}}{Indivíduos que tem 1 filho (igual a um filho).}
#'
#' \item{\code{i2f}}{Indivíduos que tem 2 filhos (igual a dois filhos).}
#'
#' \item{\code{m2f}}{Indivíduos que tem mais de 2 filhos (mais que dois
#'     filhos).}
#'
#' }
#' @keywords TODO
#' @source Mingoti, S. A. (2005). Análise de dados através de métodos de
#'     estatística multivariada: uma abordagem aplicada.  Belo
#'     Horizonte, MG: Editora UFMG. (pg 258).
#' @examples
#'
#' data(MingotiTb8.1)
#'
#' library(lattice)
#'
#' xyplot(i0f + i1f + i2f + m2f ~ renda,
#'        data = MingotiTb8.1,
#'        ylab = "Número de indivíduos",
#'        auto.key = TRUE)
#'
NULL

