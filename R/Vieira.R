#' @name VieiraEx7.3
#' @title Experimento de um Fator em DIC com N\enc{ú}{u}mero Diferente de
#'     Repeti\enc{çõ}{co}es
#' @description Dados de um experimento inteiramente ao acaso com número
#'     diferente de repetições.
#' @format Um \code{data.frame} com 18 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{tratamento}}{Tratamento aplicado na unidade
#'     experimental.}
#'
#' \item{\code{valor}}{Valor da resposta medida nas unidades
#'     experimentais.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).
#'     São Paulo, SP: Atlas. (Exercício 7.3, pág. 85).
#' @examples
#'
#' data(VieiraEx7.3)
#' str(VieiraEx7.3)
#'
#' xtabs(~tratamento, data = VieiraEx7.3)
#'
#' library(lattice)
#'
#' xyplot(valor ~ tratamento, data = VieiraEx7.3,
#'        jitter.x = TRUE, type = c("p", "a"))
#'
NULL

#' @name VieiraEx7.5
#' @title Experimento Com Um Fator e Repeti\enc{çã}{ca}o Dentro dos Blocos
#' @description Dados de um experimento em delineamento de blocos
#'     casualizados com repetição de tratamentos dentro dos blocos.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Bloco ao qual a unidade experimental pertence.}
#'
#' \item{\code{tratamento}}{Tratamento aplicado nas unidades
#'     experimentais.}
#'
#' \item{\code{valor}}{Valor da resposta medida na unidade
#'     experimental.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (Exercício 7.5, pág. 85).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraEx7.5)
#' str(VieiraEx7.5)
#'
#' xtabs(~bloco + tratamento, data = VieiraEx7.5)
#'
#' xyplot(valor ~ tratamento, groups = bloco, data = VieiraEx7.5,
#'        jitter.x = TRUE, type = c("p", "a"),
#'        ylab = "Valor", xlab = "Tratamento")
#'
NULL

#' @name VieiraEx8.3
#' @title Experimento Em Blocos Casualizados Com Repeti\enc{çõ}{co}es Nos Blocos
#' @description Dados de um experimento em delineamento em blocos
#'     casualizados com repetições dos tratamentos dentro dos blocos.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator categóricos de 4 níveis que são os
#'     tratamentos aplicados.}
#'
#' \item{\code{bloco}}{Fator categórico com 2 níveis que são os blocos
#'     do experimento.}
#'
#' \item{\code{valor}}{Valor observado da resposta de cada unidade
#'     experimental.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).
#'     São Paulo, SP: Atlas. (Exercício 8.3, pág. 102).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraEx8.3)
#' str(VieiraEx8.3)
#'
#' xtabs(~bloco + trat, data = VieiraEx8.3)
#'
#' xyplot(valor ~ trat, group = bloco, data = VieiraEx8.3,
#'        type = c("p", "a"),
#'        ylab = "Valor", xlab = "Tratamento")
#'
NULL

#' @name VieiraPg50.1
#' @title Experimento em Delineamento Inteiramente Casualizado
#' @description Experimento em delineamento inteiramente casualizado que
#'     estudou o efeito de um fator de 5 níveis categóricos em uma
#'     resposta na escala dos números inteiros.
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator categórico de 5 níveis.}
#'
#' \item{\code{resp}}{Variável resposta em números inteiros.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.). São
#'     Paulo, SP: Atlas. (pág. 50, exercício 2).
#' @examples
#'
#' data(VieiraPg50.1)
#'
#' str(VieiraPg50.1)
#'
#' library(lattice)
#'
#' xyplot(resp ~ trat, data = VieiraPg50.1,
#'        jitter.x = TRUE,
#'        xlab = "Tratamento",
#'        ylab = "Resposta")
#'
NULL

#' @name VieiraPg50.2
#' @title Calibra\enc{çã}{ca}o de Voltr\enc{í}{i}metros
#' @description Num laboratório são usados quatro voltímetros
#'     diferentes. Para verificar se estes estão igualmente calibrados,
#'     mediu-se a mesma força constante de 100 volts 5 vezes com cada
#'     voltímetro.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{voltim}}{Fator categórico de 4 níveis que representa o
#'     voltímetro usado.}
#'
#' \item{\code{voltagem}}{Voltagem obtida com os voltímetros na força
#'       constante de 100 volts.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S. (1999).  Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (pág. 50, Exercício 4).
#' @examples
#'
#' data(VieiraPg50.2)
#'
#' str(VieiraPg50.2)
#'
#' library(lattice)
#'
#' xyplot(voltagem ~ voltim, data = VieiraPg50.2,
#'        xlab = "Voltímetro",
#'        ylab = "Voltagem")
#'
NULL

#' @name VieiraPg57.1
#' @title Dados de um Experimento em Blocos Casualizados
#' @description Resultados de um experimento em delineamento de blocos
#'     casualizados que estudou o efeito de um fator de 3 níveis
#'     categóricos sobre uma variável resposta representada na escala
#'     dos números inteiros.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator categórico 3 níveis.}
#'
#' \item{\code{bloc}}{Fator de 5 níveis, usado para controle local.}
#'
#' \item{\code{resp}}{Variável resposta em números inteiros.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999).  Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (pág. 57, exercício 3).
#' @examples
#'
#' data(VieiraPg57.1)
#'
#' str(VieiraPg57.1)
#'
#' library(lattice)
#'
#' xyplot(resp ~ trat, groups = bloc, data = VieiraPg57.1,
#'        type = "o", xlab = "Tratamento", ylab = "Resposta")
#'
NULL

#' @name VieiraPg57.2
#' @title Peso de Ratos em Fun\enc{çã}{ca}o da Idade
#' @description Os dados referem-se ao peso de 3 ratos medidos 5 vezes
#'     dos 30 aos 46 dias de idade. Para fazer análise dos dados,
#'     pode-se considerar que os ratos são os blocos e que a idade é o
#'     fator de interesse.
#' @format Um \code{data.frame} com 15 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rato}}{Número do rato.}
#'
#' \item{\code{idade}}{Fator de 5 níveis, da idade dos ratos em dias.}
#'
#' \item{\code{peso}}{Peso em gramas.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (pág. 57, exercício 4).
#' @examples
#'
#' data(VieiraPg57.2)
#'
#' str(VieiraPg57.2)
#'
#' library(lattice)
#'
#' xyplot(peso ~ idade, groups = rato,
#'       data = VieiraPg57.2, type = "b",
#'       xlab = "Idade (dias)",
#'       ylab = "Peso (g)")
#'
NULL

#' @name VieiraTb4.1
#' @title Produ\enc{çã}{ca}o de Variedades de Milho
#' @description Experimento que mediu a produção, em kg/100
#'     m\eqn{^{-2}}), de 4 variedades de milho em um delineamento
#'     inteiramente casualizado.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator categórico de 4 níveis que indica as
#'     variedades de milho.}
#'
#' \item{\code{prod}}{Produção de milho, medida em kg/100 m\eqn{^{2}}).}
#'
#' }
#' @keywords DIC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.). São
#'     Paulo, SP: Atlas. (pág 44, tabela 4.1).
#' @examples
#'
#' data(VieiraTb4.1)
#'
#' str(VieiraTb4.1)
#'
#' library(lattice)
#'
#' xyplot(prod ~ varied, data = VieiraTb4.1,
#'       xlab = "Variedades",
#'       ylab = "Produção de milho")
#'
NULL

#' @name VieiraTb5.3
#' @title Produ\enc{çã}{ca}o de Variedades de Milho
#' @description Experimento da produção de milho de 4 diferentes
#'     variedades em um delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis nominais que indicam a variedade
#'     do milho.}
#'
#' \item{\code{bloc}}{Fator de 5 níveis, usado para controle local.}
#'
#' \item{\code{prod}}{Produção de milho em kg/100 m\eqn{^{2}}.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999).  Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (pág. 53, tabela 5.3).
#' @examples
#'
#' data(VieiraTb5.3)
#'
#' str(VieiraTb5.3)
#'
#' library(lattice)
#'
#' xyplot(prod ~ varied, groups = bloc,
#'       data = VieiraTb5.3,
#'       xlab = "Variedade",
#'       ylab = "Produção de milho")
#'
NULL

#' @name VieiraTb7.2
#' @title N\enc{ú}{u}meros de Ovos de Poedeiras em Fun\enc{çã}{ca}o do Estilo Musical
#' @description Dados que refere-se ao número de ovos por poedeira 35
#'     dias após o início do experimento em função do estilo musical do
#'     som ambiente: música sertaneja (a), música clássica (b) e música
#'     popular (c).
#' @format Um \code{data.frame} com 16 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{musica}}{Estilo musical do som ambiente no qual ficavam
#'     as poedeiras.}
#'
#' \item{\code{ovos}}{Número de ovos aos 35 dias após o início do
#'     experimento.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).
#'     São Paulo, SP: Atlas. (Tabela 7.2, pág. 74).
#' @examples
#'
#' data(VieiraTb7.2)
#' str(VieiraTb7.2)
#'
#' library(lattice)
#'
#' xyplot(ovos ~ musica, data = VieiraTb7.2,
#'        xlab = "Estilo músical ambiente",
#'        ylab = "Número de ovos aos 35 dias")
#'
NULL

#' @name VieiraTb7.7
#' @title Teste Sobre Conhecimento em Fun\enc{çã}{ca}o da Fonte de Informa\enc{çã}{ca}o
#' @description Dados referentes às notas dos alunos em um teste de
#'      conhecimento segundo a fonte de informação (tratamento).
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator categórico que identifica o bloco ao qual a
#'     observação pertence. Os blocos controlam para a faixa de idade
#'     dos alunos.}
#'
#' \item{\code{fonte}}{Fator categórico que representa a fonte de
#'     informação a qual o aluno teve acesso.}
#'
#' \item{\code{nota}}{Nota do aluno no teste.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).
#'     São Paulo, SP: Atlas. (Tabela 7.7, pág. 81; Tabela 8.2, pág. 94).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraTb7.7)
#' str(VieiraTb7.7)
#'
#' xtabs(~bloco + fonte, data = VieiraTb7.7)
#'
#' xyplot(nota ~ fonte, groups = bloco, data = VieiraTb7.7,
#'        type = c("p", "a"))
#'
NULL

#' @name VieiraTb8.5
#' @title N\enc{ú}{u}mero de Itens Produzidos Em Fun\enc{çã}{ca}o do Tipo de M\enc{á}{a}quina
#' @description Os dados advém de um experimento no qual foram
#'     comparados cinco tipos de máquinas, operadas por três diferentes
#'     operadores (blocos).  O objetivo era verificar a suspeita de que
#'     o tipo de máquina usada na fabricação de determinado item tem
#'     efeito sobre a quantidade de itens produzidos por dia em uma
#'     fábrica.
#'
#'     Os operadores foram tomados como blocos, pois já se sabia que
#'     existia diferença entre eles. Cada um deles trabalhou quatro dias
#'     em cada máquina (sorteadas aleatóriamente) e ao final de cada dia
#'     obteve-se a quantidade de itens produzidos por operador.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{maquina}}{Fator categórico com 5 níveis que representa os
#'     tipos de máquinas.}
#'
#' \item{\code{bloco}}{Fator categóricos com 3 níveis que representa os
#'     operadores.}
#'
#' \item{\code{qtd}}{Quantidade de itens produzidos por dia.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).
#'     São Paulo, SP: Atlas. (Tabela 8.5, pág. 98).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraTb8.5)
#' str(VieiraTb8.5)
#'
#' xtabs(~bloco + maquina, data = VieiraTb8.5)
#'
#' xyplot(qtd ~ maquina, group = bloco, data = VieiraTb8.5,
#'        type = c("p", "a"),
#'        ylab = "Quantidade de itens produzidos por dia",
#'        xlab = "Tipo de máquina")
#'
NULL

