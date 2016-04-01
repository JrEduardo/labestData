Guia de Estilo de Escrita de Código R
=====================================

Walmes Zeviani - LEG/DEST/UFPR\
Fernando Mayer - LEG/DEST/UFPR\
Eduardo Jr - PET Estatística/UFPR

****

> Ugly code writers will respond, 'my ugly code runs!' That misses the
> point. Coding style is not about make things 'work', is about making
> them work in a way that is undestood by widest possible audience."\

>> -- Paul E. Johnson, R Style. An Rchaeological Commentary.

Um Guia de Estilo de Código é um conjunto de recomendações (ou regras)
para padronizar a forma de escrever código.  Códigos que são escritos
seguindo um estilo padrão são mais fáceis de manter, modificar e
garantir que estão corretamente escritos e funcionais, principalmente
quando muitos programadores estão envolvidos.

Quase todas as linguagem de programação permitem que os usuários adotem
diferentes padrões de escrita de código.  Algumas não diferenciam
maiúsculas e outras não exigem indentação, por exemplo. Em função de
simplicidade, comodismo ou inércia na hora de escrever ou por causa de
características da linguagem ou do editor usado, os usuários quase
sempre tem um padrão particular para escrita de código.

Esse é um Guia de Estilo Código estabele as convenções a serem seguidas
para escrita de código R. Esse documento é baseado na consulta à varias
fontes e deliberações próprias em alguns casos. A lista das principais
fontes na qual esse Guia é baseado está abaixo.

  * Guia de Estilo por [Hadley Wickham]:
    <http://adv-r.had.co.nz/Style.html>.
  * Guia de Estilo do Google:
    <https://google.github.io/styleguide/Rguide.xml>.
  * Guia de Estilo por
    [Dylan Schwilk](http://www.depts.ttu.edu/biology/people/faculty/schwilk/)
    <http://r-research-tool.schwilk.org/handouts/style-guide.html>.
  * Guia de Estilo do R Data Science:
    <https://github.com/rdatsci/PackagesInfo/wiki/R-Style-Guide>.
  * Nota de Paul Johnson estilo de escrita de código:
    <https://cran.r-project.org/web/packages/rockchalk/vignettes/Rstyle.pdf>.

****
## Nomes de arquivos ##

Nomes de arquivos R devem ter o sulfixo maiúsculo.

```
# Bom.
script.R

# Ruim.
script.r
```

No entanto, o nome do arquivo não pode ser vago como `script` -- que é
algo óbvio. Use nomes com significado. Se for preciso, use um nome
composto, mas não use espaços nos nomes (nem para diretórios). Isso
evita um tanto de problemas de `path`. Dê preferência para o *undescore*
como separador, já que ponto separa a extensão do nome e traço é
separador de palavras compostas (guarda-chuva, super-homem, ex-aluno).

```
# Bom.
prepara_dados.R
ajusta_modelo.R

# Ruim.
prepara dados.R
ajusta modelo.R
```

As extensões `Rmd`, `Rnw`, `RData`, `Rd` devem ter o R do sulfixo
maiúsculo também, além de nomes não vagos ou óbvios.

Se em um conjunto de arquivos houver relação sequêncial entre eles,
destaque isso no nome. Por exemplo, componha nomes com números
precedidos do mesmo nome.

```
# Bom.
0_prepara_dados.R, 1_ajusta_modelo.R
cap1_introducao.Rmd, cap2_exploratoria.Rmd, ..., cap5_conclusoes.Rmd
```

A vantagem de colocar um prefixo numerado é que os arquivos são exibidos
em sequência no seu navegador de arquivos quando a ordenação for
alfabética. Mas lembre-se que a ordenação é léxica e por isso `cap23*`
aparece antes de `cap4*`. Evite usando zeros à esqueda, `cap04`.

## Nomes de objetos ##

Nomes de objetos devem ter um bom compromisso entre significado e
praticidade (ou digitabilidade). Ou seja, não deve ser curto ao ponto de
perder significado nem longo ao ponto de demorar para escrever. Quanto
maior um nome, mais erramos ao escrevê-lo. Principalmente quando contém
acentos, certo?  Portanto, evite nomes que levem acentos (âãàáçêéíôõóú).

Dependendo da classe e da quantidade de objetos na sua sessão
ou pacote, você pode ser mais ou menos verboso (usar nomes maiores ou
menores) na hora de defini-los para devidamente distingui-los.

Existem 3 estilos predominantes para escrita de nomes de objetos:

  * *dot.case*: é o estilo que usa o separador como ponto. Foi o
    primeiro a usado no R e inclusive incentivado por algum tempo. Uma
    prova disse são as várias funções com esse padrão no R (todas as
    `read.`, `as.`, `is.`, por exemplo). A mais notáveis são sa funções
    método nas quais o ponto separa o nome da a função genérica da
    classe o objeto que ela recebe. Por exemplo, `anova.lm` é a função
    que retorna o quadro de ANOVA para objetos da classe `lm`. Nesse
    caso o ponto tem função além da estética e não pode ser substituído
    por nada.
  * *snake_case*: é o estilo que usa o *underscore* como separador. O
    pacote [devtools], do [Hadley Wickham], usa esse padrão. No pacote
    [mcglm] esse estilo também foi adotado integralmente. Muitos
    consideram um custo digitar o *underscore* (combina teclas) ao passo
    que outros argumentam que facilita a leitura (pois é um traço
    rasteiro sem altura).
  * *camelCase*: é o estilo que usa letras maiúsculas para as iniciais
    das palavras, com exceção da palavra inicial. O pacote [car], do
    [John Fox], usa esse estilo.

Uma quarto estilo é o *PascalCase* que difere do *camelCase* porque
todas as iniciais são maiúsculas. A mesma função teria os seguintes
nomes em cada caso: *read.table*, *read_table*, *readTable* e
*ReadTable*.

As implementações recentes de pacotes têm evitado o uso do *dot.case*
para nomes de funções por confusões com funções métodos. No entanto, a
reserva do ponto é para as funções método, assim, para objetos não
existe problema.

O importante é que você seja consistente, assuma e mantenha o mesmo
estilo em todo seu pacote ou *scripts*. Um exemplo de projeto aberto em
que todos seguem o padrão é no Emacs, onde todos os objetos usam o
*dot-case*.

Seja qualquer uma das 3 opções, a diferença só vai existir para objetos
de nome composto, logicamente. Ainda assim, existem padrões usados pela
maioria que distinguem objetos pela sua classe ou uso. Veremos alguns a
seguir.

### Contadores ###

Contadores são variáveis definidas para uso em um *loop*. Para
corresponder aos pseudo-códigos e expressões matemáticas, usa-se uma
letra apenas. As mais usadas são i e j. O nome pequeno, com uma letra, é
interessante também porque é comum o contador do *loop* ser usado para
selecionar frações dos objetos (elementos, linhas, colunas, etc), dentro
dos colchetes simples ou duplos, deixando o código mais claro.

```r
x <- 1:10
for (i in 1:length(x)) {
    x[i] <- sum(x[1:i]) + i
}
```

### Matrizes ###

O nome de matrizes geralmente se usa letras maiúsculas, a exemplo do que
se faz nos textos matemáticos. Portanto, são opções imediatas `X`, `Y`,
`K`, `C`, `A`, `L`, `U`, `V`, etc.

IMPORTANTE: Evite usar `c`, `t`, `q`, `T` e `F` como nomes de
objetos. As três primeiras são funções para concatenar vetores, transpor
matrizes e sair do R (*quit*) e as últimas são abreviações de `TRUE` e
`FALSE` (que não recomendamos usar, inclusive).

## Atribuição ##

Faça atribuição de objetos com o sinal de atribuir (`<-`) e não com o
de igual. Deixe espaço cercar o operador.

```r
# Bom.
x <- 1:10
notas <- data.frame(aluno, freq, nota)

# Ruim.
x = 1:10
notas = data.frame(aluno, freq, nota)

# Péssimo.
x=1:10
notas<-data.frame(aluno, freq, nota)
```

O sinal de igual, embora faça atribuição também, não deve ser usado para
isso. Reserva-se a passar valores para os argumentos de uma função ou
nomear os elementos de objetos.

```r
# Nomes que levam certos caracteres devem declarados como string.
notas <- c(Carlos = 95, Lucas = 89, Pedro = 77, "Antônio Augusto" = 60)
```

## Indentação ##

A indentação é um dos requisitos fundamentais de estilo de código. É
perda de tempo tentar compreender um código que não está devidamente
indentado. Todo editor de texto voltado para programação tem recursos de
indentação.

A indentação em código R é com 4 espaços. Não se usa tabulação.  É comum
encontrar código com tabulação de 2 espaços, que é inclusive a opção
*default* do [RStudio].  Programadores argumentam que a indentação com 2
espaços impõe pouca evidência da hierarquia do código, principalmente
para fontes de texto que sejam finas.  Além disso, 4 espaços é
equivalente a uma tabulação (que não devem se usada).  Para mudar o
número de tabulações do [RStudio], vá em `Tools > Global options > Code
> Editing` e em `Tab width` use 4. O [Emacs] usa 4 espaços por
*default*.

```r
# Bom.
for (i in 1:3) {
    if (a > 0) {
        m0 <- lm(log(y) ~ x,
                 data = animals[[i]])
    } else {
        m0 <- lm(y ~ x,
                 data = animals[[i]])
    }
}

# Ruim.
for (i in 1:3) {
if (a > 0) {
m0 <- lm(log(y) ~ x,
data = animals[[i]])
} else {
m0 <- lm(y ~ x,
data = animals[[i]])
}
}
```

## Operadores ##

Deixe espaços ao redor dos operadores lógicos e matemáticos.

  * Operadores lógicos: `==`, `!=`, `<`, `<=`, `>`, `>=`, `%in%`, `&`,
    `&&`, `|`, `||`.
  * Operadores matemáticos: `+`, `-`, `*`, `%*%`, `%%`, `%/%`, `%o%`. Os
    operadores `^` e `/` são considerados exceções e não devem ter
    espaços. Embora `**` seja um operador equivalente ao `^`, seu uso
    não é recomendado.

Certos operadores tem emprego diferenciado dependedo do que
precede. Observe abaixo o emprego do sinal de menos e para o operador
`~`, usado em fórmulas.

```r
# Diferença para o menos de negativo e menos de subtração.
x <- -5 + 2
x <- 2 - 5
x <- -2 * (-3 - 4)

# Fórmulas empregam a mesma ideia.
m <- ~a + b
m <- k ~ a + b
```

Os operador de sequência `:` e os operadores `::` e `:::`, não podem ser
usados com espaços. O mesmo vale para o operador `$`, usado para
consultar listas de data frames, e o `@`, usados para consultar listas
de objetos S4.

```r
# Uma sequência regular.
12:15

# Criando uma função e chamando de `sum`.
sum <- function(x) print("Olá")
sum(c(98, 67, 14))

# Usando a sum() do pacote base.
base::sum(c(98, 67, 14))

# Com ::: você acessa as funções não exportadas de um pacote. A função
# addterm() do pacote MASS é uma função método cujos métodos não são
# exportados. Para usar tais funções o ver o seu código, é necessário
# 'invadir a privacidade do MASS'.
library(MASS)
ls("package:MASS") # Mostra objetos exportados.
addterm            # Tenta ver o corpo da função.
methods(addterm)   # Consulta o nome dos seus métodos.
addterm.lm         # Tenta mas não encontra a função.
MASS::addterm.lm   # Com o namespace diz que não foi exportada.
MASS:::addterm.lm  # Com ::: o corpo da função aparece.

# Consulta uma variável em um data.frame.
cars$speed

# Ajusta e consulta elementos na lista de um ajuste.
m0 <- lm(dist ~ speed, data = cars)
names(m0)
m0$coefficients
m0$fitted
```

## Alinhamento vertical de referência (nos operadores) ##

Quando alinhamento vertical (*columnate*) de referência em um operador
der mais clareza ao código, isso pode ser feito.

```r
altura  <- rnorm(100, mean = 1.8, sd = 0.1)
peso    <- rnorm(100, mean = 70, sd = 5)
idade   <- sample(20:50, size = 100, replace = TRUE)

plot(peso ~ altura,
     xlab = "Altura (m)",
     ylab = "Peso (kg)",
     col  = gray(idade/100),
     pch  = 19)
```

Esse padrão vai exigir mais trabalho e não são muitos os editores que
tem o recurso de indentação por referência.  O trabalho de indentar
manualmente e manter isso nas revisões deve ter peso na decisão de
usar. O [Emacs] tem o recurso de indentação baseado em expressão
regular. Para aplicá-lo aos sinais de igual, selecione o texto e dê `M-x
align-regexp RET = RET` (`RET` é pressionar Enter). Você pode, se usar
isso com frequência, criar um *key binding* para uma função que faça
isso no código selecionado.

```lisp
(defun columnate-at-R-assign-operator ()
  "Função que alinha a região com a primeira ocorrência de sinais
   ` <- ' e ` = '. Baseado em:
   http://stackoverflow.com/questions/13315064/
   marker-does-not-point-anywhere-from-align-regexp-emacs"
  (interactive)
  (save-excursion
    (align-regexp (region-beginning) (region-end)
                  "\\(\\s-*\\) \\(<-\\|=\\) " 1 1 nil)))

(global-set-key (kbd "C-c a") 'columnate-at-R-assign-operator)
```

## Vírgulas ##

Vírgulas devem ser seguidas de espaço, exceto para as de final de
linha. Elas não devem ser precedidas de espaço, exceto quando precedidas
por outra vírgula dentro dos colchetes de seleção.

```r
# Bom.
EyeHairColor[, , 2]
x <- c("Nashville", "Seattle Tacoma", "Wilmington", "Boise", "Raleigh",
       "Charleston", "Juneau")

# Ruim.
EyeHairColor[,,2]
y <- c("Nashville","Seattle Tacoma","Wilmington","Boise","Raleigh",
       "Charleston","Juneau")
```

## Lagura de texto ##

Assim como a indentação, a largura do texto precisa ser obdecida.  Os
editores de R em geral trabalham com duas janelas, em uma o script e na
outra o console. Para trabahar lado a lado é importante não haver
rolamento (*scroll*) horizontal de janela/página. É também mais rápido
navegar no código no sentido vertical, pulando linhas, do que no sentido
horizontal, pulando characteres ou palavras. Isso sem contar que um
texto mais estreito favoresce a compreensão porque, sendo mais vertical,
a hierarquia se torna mais evidente. E por último, um código de linhas
curtas está menos sujeito a quebras de linha acidentais quando enviado
em mensagens, enviados para impressão ou inseridos em processadores de
texto.

Costuma-se usar 80 ou 72 espaços como comprimento máximo de linha, sendo
este último ligeiramente mais adequado para trabalhar com *script* e
*console* lado a lado nos monitores de resolução atuais.

No [Emacs], para comodidade, pode-se habilitar o quebrar linhas
automaticamente (`M-x auto-fill-mode`). Caso não goste, como muitos que
acham um pouco desastroso, pode apenas habilidar o destaque com cores
para linhas que excedem os limites.

```lisp
;; Define o comprimento máximo de texto para a linha.
(setq-default fill-column 72)

;; Habilita o quebra automática onde ultrapassar.
(setq-default auto-fill-function 'do-auto-fill)

;; Destaca com cores o texto que ultapassa o limite.
(require 'whitespace)
(setq whitespace-line-column fill-column)
(setq whitespace-style
      '(face lines-tail trailing spaces tabs empty))
(global-whitespace-mode +1)
```

Na versão corrente do [RStudio] (0.99.467), quebra de linha automática
não está disponível. O que se pode fazer, no entanto, é exibir uma linha
vertical na margem. Para isso, vá em `Tools > Global options > Code >
Display`, habilite `Show margin` e em `Margin column` use 72.

## Quebras de linha ##

Seja automaticamente ou não, para manter seu código dentro das margens
você terá que quebrar linhas. No entanto, não é só pressionar ENTER. A
nova linha deve ser indentada no nível correto -- coisa que editores
para programação fazem automaticamente. A linha quebrada 1) não deve
terminar com espaços ou sinal de igual e 2) deve terminar com operadores
lógicos ou matemáticos para garantir continuidade dessas operações.

Os espaços no final de linha são desnecessários, então evite-os. No
[Emacs] você pode habilitar a remoção automática de espaços de final de
linha (*traling spaces*).

```lisp
;; Habilita removação de espaços de fim de linha quando salva o arquivo.
(add-hook 'before-save-hook 'delete-trailing-whitespace)
```

Terminar linhas com sinal de igual significa que argumento e valor
ficaram em linhas diferentes. Embora não prejudique a execução do
código, evitar isso melhora a legibilidade do código.

Quando for necessário quebrar linhas em meio a operações matemáticas e
lógicas, as linhas tem que terminar com um operador para haver
continuidade da operação.

```r
# Bom.
mean(precip,
     na.rm = TRUE)

# Ruim.
mean(precip, na.rm =
     TRUE)

# x será apenas o resultado da soma, que é uma instrução completa.
x <- 2 + 4 + 5
- 3 - 8

# Agora x será o resultado de soma e diferença.
x <- 2 + 4 + 5 -
    3 - 8
```

## Comentários ##

Comentários no R são precedidos de `#` em qualquer quantidade. O [Emacs]
[ESS] (*Emacs Speak Statistics* ou *Emacs Statistical System*) usa, por
padrão, dois characteres porque imitou o esquema do `emacs-lisp-mode`
onde o número de caracteres recebe indentação diferente: `#` indenta por
padrão no digito 40, `##` indenta de acordo com o nível do código e
`###` fica sempre colado com a margem esquerda. No [RStudio], no
entanto, não é possível escolher o número de caracteres e sua
indentação. É sempre `#` e alinhado ao código (para quê melhor, muitos
vão dizer). Por isso, vale o denomidador comum e usuários de [Emacs]
podem desabilidar o padrão do [ESS].

```lisp
(add-hook 'ess-mode-hook
          '(lambda()
             ;; Sem estilos de indentação.
             (setq ess-indent-with-fancy-comments nil)
             ;; Usar # para comentários.
             (setq-local comment-add 0)))
```

## Divisões de código ##

Uma boa prática, principalmente se seu código é material de ensino, é
fazer divisões nele como se fossem seções de um artigo. Use uma marcação
visual consistente e fácil de manter. Por anos nós usamos réguas com
traços de tamanho 72 digitos e acreditamos ser uma das melhores
opções. Muitos usam divisões com o sinal de comentários, #, mas
acreditamos ficar carregado devido ao caracter ser volumoso.

Para diferenciar o nível da divisão, usamos 3 variações: a maior (para
capítulo e cabeçalho) é feita com sinal de igual (`=`), a média (para
seção) é com traços (`-`) e a menor (para subseção) também, tem
comprimento inferior (45 digitos). Criamos um *key binding* para isso no
Emacs por comodidade mas se você usa outro editor que indique a coluna
72, pressione até preencher com o digito desejado. Lembre-se de preceder
com um `#`.

----------------------------------------------------
 Atalho        Descrição
-------------- ------------------------------------
 `Ctrol-7-1 =` Com o control pressionado digite
               71, solte e pressione `=`. Isso vai
               repetir o = 71 vezes.

 `Ctrol-7-1 -` Idem mas com traço.

 `Ctrol-4-4 -` Idem mas repetindo 44 vezes.
----------------------------------------------------

: Atalhos no Emacs e sua descrição para fazer divivões horizontais no
código.

```r
#=======================================================================
# (Título)

#-----------------------------------------------------------------------
# (seção)

#-------------------------------------------
# (subseção)
```

## Linhas em branco ##

As linhas em branco, assim como as divisões horizontais, servem para dar
mais clareza ao código (e fôlego para quem lê/decifra). Entenda o código
como um texto: divida-o em frases, parágrafos, subseções, seções e
capítulos. Os três últimos você pode fazer com as divisões e os dois
primeiros com linhas em branco. Evite usar mais do que duas linhas em
branco seguidas.

## Aspas ##

Use sempre as aspas duplas. Elas são mais visíveis que as simples por
serem mais grossas e não se confundem tão facilmente com a crase. Bons
editores de código tem o destaque de sintaxe (*highlight sintax*) onde
notavelmente as strings ficam de cor diferente (bem como números,
keywords, comentários, etc), mas quando você envia por email ou imprime,
nem sempre as cores acompanham o código. A própria seção Exemplos da
documentação do R, em pdf ou html, é uma prova disso pois o código vai
preto.

Use as aspas simples quando não puder usar as duplas. Esse é o caso
quando se constroí algumas expressões regulares.

## Chaves ##

Ao contrário do que se imagina, existem muitos [estilos de emprego de
chaves]. No R, usamos o K&R no qual a chave que abre é o último
character da linha precedida de espaço e a que fecha fica em linha
exclusiva e indentada conforme o código.

No R usamos chaves nas instruções de *if*, *for*, *while*, *repeat* e
*function* e nas funções *with*, *switch* e *replicate*, por exemplo.

```r
pitagoras <- function(a, b) {
    h <- sqrt(a^2 + b^2)
}

if (object.size(cars) > 1000) {
    print("Objeto maior que 1 kb")
} else {
    print("Objeto não maior que 1 kb")
}

x <- cars
while (object.size(x) > 1000) {
    x <- x[-1, ]
    print(object.size(x))
}
```

As chaves podem ser omitidas quando o corpo for de uma linha apenas. Por
outro lado, não recomendamos isso pois a presença das chaves realça a
hierarquia e erros provocados por quebra acidental de linhas são
evitados. Além disso, os editores se baseiam nas chaves para
corretamento indentar o código.

## Colchetes ##

Os colchetes são usados para fazer seleção em objetos. Para objetos com
mais de uma dimensão, como matrizes, *data frames* e *arrays*, usa-se a
regra das vírgulas dentro de uma função: deixe espaço após as
vírgulas. Também recomenda-se separa vírgulas por um espaço.

```{r, eval=FALSE}
# Bom.
HairEyeColor["Black", , ]
HairEyeColor[, c("Blue", "Green"), ]
HairEyeColor[, , -1]

# Ruim.
HairEyeColor["Black",,]
HairEyeColor[,c("Blue","Green"),]
HairEyeColor[,,-1]
```

## Parênteses ##

No R, não se coloca espaço entre os parenteses e seu conteúdo. Existe
espaço ao redor do par de parênteses nas instruções de *if*, *for* e
*while*.

```r
# Bom.
if (x %% 2 == 0) {
    print("x é par.")
}

# Ruim.
if( x %% 2 == 0 ){
    print( "x é par." )
}
```

## Ponto e vírgula ##

Ponto e vírgula no R serve para separar instruções na mesma linha,
funcionando como uma quebra visual de linha. No entanto, não se
recomenda o seu uso.

```r
# Bom.
library(car)
library(gdata)
library(lattice)

# Ruim.
library(car); library(gdata); library(lattice)
```

## Documentação embyutida de funções ##

Uma prática muito valorizada é documentar as funções que você cria. A
documentação serve de lembrete para você no futuro e é instrução para as
pessoas que usam o seu código. Abaixo a função *baskara* foi documentada
de duas formas diferentes. A primeira é uma forma livre enquanto que a
segunda usa as *tags* do [`roxygen2`]. Se você escreve uma função e tem
intenção de incluí-la em um pacote, o segundo padrão é mais
interessante.

Perceba que esse exemplo é bem minimalista pois apenas documenta os
*inputs* e o *output* da função. Na impede de detalhes serem
adicionados.

```r
# Função documentada de forma livre.
baskara <- function(a, b, c) {
    # a,b,c: (numeric) coeficientes da equação de segundo grau
    #     a + b * x + c * x^2.
    # retorna: (numeric) vetor com as raízes.
    r <- (-b + c(-1, 1) * sqrt(b^2 - 4 * a * c))/(2 * a)
    return(r)
}

# Documentação com tags do roxygen2.
baskara <- function(a, b, c) {
    #' @param a,b,c (numeric) coeficientes da equação de segundo grau
    #'     \eqn{a + b * x + c * x^2}.
    #' @return (numeric) vetor com as raízes.
    r <- (-b + c(-1, 1) * sqrt(b^2 - 4 * a * c))/(2 * a)
    return(r)
}
```

## Carregando pacotes ##

É comum se ver duas formas de carregar pacote: com `library()` e com
`require()`. Embora o segundo, por ser um verbo, faça mais sentido,
pacotes em scripts devem ser carregados com `library`. A diferença, como
explica [Yihui Xie], é que `require()` tenta carregar um pacote e
retorna *FALSE* se não conseguir enquanto que `library()` retorna
*error* nesse caso.

<!--------------------------------------------- -->

[ESS]: http://ess.r-project.org/Manual/ess.html
[RStudio]: https://www.rstudio.com/
[Emacs]: https://www.gnu.org/software/emacs/
[mcglm]: https://github.com/wbonat/mcglm
[car]: http://www.rdocumentation.org/packages/car
[devtools]: http://www.rdocumentation.org/packages/devtools
[estilos de emprego de chaves]: https://en.wikipedia.org/wiki/Indent_style
[Yihui Xie]: http://yihui.name/en/2014/07/library-vs-require/
[Hadley Wickham]: http://hadley.nz/
[John Fox]: http://socserv.mcmaster.ca/jfox/
[`roxygen2`]: https://cran.r-project.org/web/packages/roxygen2/roxygen2.pdf
