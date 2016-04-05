# Guia de Contribuição #

**PET Estatística UFPR** - <pet.estatistica.ufpr@gmail.com>

> "O segredo de progredir é começar. O segredo se começar é dividir as
> tarefas árduas e complicadas em tarefas pequenas e fáceis de executar
> e depois começar pela primeira."
>
>> -- Mark Twain

## Para que serve um Guia de Contribuição? ##

O Guia de Contribuição serve para orientar a forma de trabalhar, tanto
individual quanto em equipe, para que seja eficiente, padronizada,
coordenada e segura. Ele estabelece as regras e etapas principais do
desenvolvimento de um projeto. O Guia de Contribuição incluí orientações
de como escrever o código, mensagens de commit, etc TODO

Interessados em participar do projeto devem se orientar pelo Guia de
Contribuição sobre como o desenvolvimento acontece, das tarefas às
responsabilidades dos indivíduos e equipes, das etapas e prazos aos
resultados do projeto.

## O que é um fluxo de trabalho? ##

O fluxo de trabalho é a sequência de etapas que devem ser cumpridas para
atingir um resultado.

## Qual é o fluxo de trabalho do *labestData*? ##

**Descrição do roteiro semanal**

  1. Criar um *issue* para o Projeto no GitLab. Ao criar o *issue*,
     dedique-se para escrever uma detalhada descrição do trabalho a ser
     feito. Isso informa a equipe sobre onde você irá trabalhar para que
     não se dublique os esforços. Todo issue tem um número associado,
     como `#7` e isso deve ser usado nas comunicações.
  2. Faça uma atualização do seu ramo `devel` local com o ramo `devel`
     do projeto no GitLab (atualize o HEAD). Isso pode ser feito com o
     comando `git pull` ou com `git fetch + git merge`. Em caso de
     insegurança, visite a
     [Apostila de Git do PET Estatística](https://gitlab.c3sl.ufpr.br/pet-estatistica/apostila-git/raw/devel/apostila_git.pdf).
  3. Crie um *branch* para começar o trabalho que você descreveu no
     *issue* que acabou de criar. O nome do ramo deve ser formado pelo
     seu nome e número identificador, como `angela23` e
     `eduardo31`. Usar esse padrão facilita para os membros descobrirem
     do se se trata esse *branch*, pois basta consultar o *issue* de
     mesmo número, e quem é o responsável pelo mesmo.
  4. Faça o trabalho que descreveu. Nessa etapa você senta na frente do
     computador e escreve e isso envolve os seguintes passos:
     1. Escreve, corrija, aperfeiçoe, amplie, revise, organize, limpe,
        etc. Faça o trabalho.
     2. Faça *commits* com regularidade, de preferência, por unidades de
        trabalho para as quais se tem um significado claro - uma unidade
        de trabalho comitável - que possa ser expresso sem prejuízo por
        uma frase curta ou por uma lista de frases curtas. Quando não
        souber se já possuí uma unidade de trabalho merecedora de
        *commit*, faça o *commit* do mesmo jeito. Não seja precioso com
        isso. No entanto, seja caprichoso ao fazer a sua mensagem de
        *commit* para garentir que esteja em conformidade com o guia de
        boas práticas.
     3. Em intervalos maiores, mas ainda com frequência, suba seu
        trabalho para o repositório. Isso se faz com o comando `git
        push`. É importante fazer sempre para evitar de perder o
        trabalho da sua máquina que está sujeita a avaria.
  6. Quando cumprir com o trabalho previsto no seu *issue*, dê o push
     final e faça uma requisição de mescla - um *merge request* (MR). Ao
     criar o MR, assim como foi para o *issue*, existe um espaço para a
     descrição de tudo o que foi realizado no *branch*. Basicamente isso
     é um resumo de todos os *commits* feitos. Embora a descrição do
     *issue* informe o que estava previsto fazer, isso não significa que
     tudo foi feito. Você pode ter feito trabalho a mais, ou visto que
     algo não foi necessário. Então relate na descrição do MR exatamente
     o que será adicionado ao ramo alvo. Os MR devem ser para o ramo
     `devel` e devem ser atribuídos à outra pessoa.
  7. Aguarde a avaliação do MR. Nessa etapa quem trabalha é o *merger* -
     colaborador  responsável por  avaliar o  seu *branch*  e aplicar  o
     *merge*. Em caso de aprovação, o *merge* será aplicado. Em caso
     contrário, você será notificado.
  8. Se o MR não foi aceito, o *merger* vai informar o que fazer com
     mensagem abaixo da descrição do merge. Faça as adequações
     solicitadas. Refaça a etapa 4.
  9. Quando o MR for aprovado, feche o *issue* correspondente. Indique
     na mensagem de fechamento do *issue* qual foi o número do MR
     dele. Os ramos de demanda - com prefixo *coloborador* - são removidos
     após o *merge* mas os *issues* e os MR - que junto com os *commits*
     contam a trajetória do projeto - permanem no GitLab.

**Guia de códigos R e GIT para as atividades semanais**

A cada semana nós devemos criar novos ramos para realização das
atividades propostas. Porém devemos nos atentar ao criá-los. Estes ramos
devem necessariamente sair do ramo `devel` e não é necessário a
incorporação do ramo de trabalho anterior (solicitado por MR) para que
este seja criado. Abaixo temos os comandos GIT para criar o ramo a
partir do `devel`.

```bash
## Atualiza todos os ramos com a versão do servidor
git pull

## Retorna para o ramo devel
git checkout devel

## Cria um ramo para atividades propostas no issue00
git branch fulano00

## Vai para o ramo criado
git checkout fulano00

```

Com isso já estamos em um ramo, `fulano00` criado especificamente para o
desenvolvimento das atividades propostas no `issue#00`, assim podemos
prosseguir com o trabalho propriamente dito, a adição de conjunto de
dados.

```r
##======================================================================
## Passo 1 - Ler e inserir os dados na pasta ./data-raw/

## Usando o R ----------------------------------------------------------

## Transcreva os dados das tabelas
ex <- expand.grid(X1 = 1:6, X2 = LETTERS[1:4])
x3 <- scan()
CiclanoTb0.0 <- data.frame(X1 = ex$X1, X2 = ex$X2, X3 = x3)

## Salve a tabela em formato txt no diretório ./data-raw/
write.table(CiclanoTb0.0,
            file = "./data-raw/CiclanoTb0.0.txt",
            sep = "\t",
            row.names = FALSE)

## Você pode usar a função write2txt() definida em:
## https://gitlab.c3sl.ufpr.br/snippets/34.
write2txt(CiclanoTb0.0)

## Usando outro software -----------------------------------------------

## Transcreva os dados da tabela no software e salve-os no formato txt
## na pasta ./data-raw/

## Leia os dados na sessão R, para utilizá-los posteriormente
CiclanoTb0.0 <- read.table("./data-raw/CiclanoTb0.0.txt",
                           header = TRUE, sep = "\t")

##======================================================================
## Passo 2 - Inserir os dados no diretório ./data/
library(devtools)
use_data(CiclanoTb0.0)

## Você pode usar a função write2rda() definida em:
## https://gitlab.c3sl.ufpr.br/snippets/34.
write2rda(CiclanoTb0.0)

##======================================================================
## Passo 3 - Escreva a documentação utilizando as tags roxygen2

## Dica: rode os códigos da sessão exemplo aqui, para verificar se os
## gráficos/tabelas são realizadas corretamente.
table(CiclanoTb0.0)
plot(X1 ~ X2, data = CiclanoTb0.0)

## Você pode usar a função write2Rdoc() definida em:
## https://gitlab.c3sl.ufpr.br/snippets/34. Essa função cria o arquivo
## com nome do objeto e algumas já escreve algumas informações,
## retiradas do próprio objeto. Depois de usar, abra o arquivo e
## preencha o restante.
write2Rdoc(CiclanoTb0.0)

##======================================================================
## Passo 4 - Gere e check a documentação (insere um arquivo no diretório
## ./man/). Obs.: O aviso sobre o NAMESPACE pode ser ignorado, pois o
## document() tenta criar um NAMESPACE onde já há um existente, mas isso
## não é problema pois ambos são arquivos sem conteúdo relevante.
document()
check_man()

##======================================================================
## Passo 5 - Verifique a constituição e organização do pacote (caso haja
## ERROS, WARNINGS ou mais de um NOTE. Corrija o problema e continue do
## passo 4)
check()

```

Após todos os passos concluídos devemos ter os arquivos `.txt`, `.rda`,
`.R` e `.Rd` devidamente criados. Podemos voltar ao terminal e *comitar*
nossas contribuições.

```bash
## Adiciona os 4 arquivos criados e commita as alterações
git add data-raw/. data/. R/. man/CiclanoTb0.0
git commit -m "Adiciona tabela 0.0 do livro do Ciclano"

## Desconsidera as alterações realizadas nos arquivos que são gerados
## automaticamente
git checkout .

## Enviando as alterações para o servidor
git push origin fulano00

```

Agora com tudo *commitado* podemos seguir para o próximo conjunto de
dados e refazer todos os passos descritos.

Vale ressaltar que este guia de códigos compreende a rotina básica para
inclusão de um conjunto de dados, se for necessária a inclusão de um
biblioteca para elaboração de gráficos ou análises ou ainda forem
criadas funções para o pacote os arquivos NAMESPACE e DESCRIPTION
deverão ser alterados e essas alterações *commitadas*.

## O que é um Guia de Estilo de Código? ##

Um Guia de Estilo de Código é um conjunto de recomendações (ou regras)
para padronizar a forma de escrever código.  Códigos que são escritos
seguindo um estilo padrão são mais fáceis de manter, modificar e
garantir que estão corretamente escritos e funcionais, principalmente
quando muitos programadores estão envolvidos.

Quase todas as linguagem de programação permitem que os usuários adotem
diferentes padrões de escrita de código.  Algumas não diferenciam
maiúsculas e outras não exigem indentação, por exemplo. Em função de
simplicidade, comodismo ou inércia na hora de escrever ou de
características da linguagem ou do editor, os usuários quase sempre tem
padrão particular para escrita de código.

## Qual o guia de estilo de código? ##

No pacote *labestData* deve ser considerado o *"idioma"* padrão do R,
descrito no [STYLEGUIDE.md].

## Como dar nome aos datasets? ##

No caso de datasets de livros (obras impressas), o nome do dataset é
formado pelo sobrenome do primeiro autor seguido da indentificação da
tabela na obra. Considera os exemplos

  * ZimmermannTb8.2: Tabela 8.2 do Zimmermann (2004);
  * RamalhoTb4.3: Tabela 3 do capítulo 4 em Ramalho, Ferreira e Oliveira
    (2005). Nesse livro as tabelas tem numeração reiniciada em todo
    capítulo e por isso adiciona-se o numeral do capítulo para evitar
    ambiguidade, já que vários capítulos podem ter a tabela 1.
  * BanzattoQd3.6.1: Quadro 3.6.1 do Banzatto e Kronka (2013). Este
    livro usa o nome quadro ao invés de tabela.
  * DiasEx10.7: Exercício 7 do capítulo 10 em Dias e Barros (2009). Os
    exercício são númerados dentro dos capítulos então adiciona-se o
    digito do capítulo para não haver ambiguidade.
  * StorkEg2.3.5: Exemplo 2.3.4 do Stork et al. (2011). Para não
    confundir Exercício e Exemplo, consideramos abreviar com Eg de
    *exempli gratia*.
  * BarbinPg52: Tabela sem legenda na página 52 do Barbin (2013). Nesse
    caso identifica-se usando a página. No caso de várias tabelas na
    mesma página, use mais um digito separado por ponto: Pg52.1 e
    Pg52.2.
  * PimentelPg142: Dados em Pimentel-Gomes (2009) que estão em tabelas
    distribuidas em duas páginas mas não tem legenda, assim usa-se o
    número da primeira página.
  * CharnetApD.1: Primeiro conjunto de dados apresentado no apêndice D
    do livro Charnet (2008).

A prioridade na hora de atribuir a identificação é a seguinte: Tabela =
Quadro > Exemplo = Exercício > Página. Ou seja, se a tabela 5 faz parte
do exemplo 3 que está na página 122, o nome do dataset terá sulfixo
Tb5. Note que uma página pode ter mais de uma tabela, bem como um
exemplo. Além do mais, diferentes edições podem preservar com mais
facilidade a numeração das tabelas do que a localização delas nas mesmas
páginas. Sendo assim, um dataset só será identificado como sulfixo Ex ou
Eg se não tiver legenda (Tabela ou Quadro) e só será identificado pela
página se não houver outra alternativa.

## Como formatar as variáveis? ##

O nome das variáveis não deve conter acentos (ASCII pleno), não pode
iniciar com número e só admite o underline como não alfanumérico. As
variáveis de nome composto e longo poder ser representadas por siglas, e
as de nome simples mas longo, por abreviação. Veja a tabela com
exemplos.

| Variável resposta         | Nome da coluna |
|---------------------------|----------------|
| Dias                      | dias           |
| Idade                     | idade          |
| Renda                     | renda          |
| Produtividade             | prod           |
| Temperatura               | temp           |
| Pressão sanguínea         | ps             |
| Massa seca de parte aérea | mspa           |

## O que colocar na documentação? ##

Os datasets devem ter uma documentação precisa. Existem vários campos da
documentação que podem ser usados, no entanto, somente 7 serão exigidos.

Abaixo tem-se a documentação do *data.frame* `RamalhoTb4.7`. Embora os
campos sejam praticamente autoexplicativos, segue breve explicação.

  * `@name`: o nome do dataset.
  * `@title`: título que representa o dataset.
  * `@description`: descrição do conjunto de dados. Pode conter mais de
    um parágrafo.
  * `@format `: forma e conteúdo do dataset. Informa as dimensões e cada
    uma das variáveis (nome, descrição, unidade de medida, tipo de
    valor).
  * `@keywords`: palavras que classificam o dataset, como o tipo de
    variável resposta e delineamento (ex: DIC, DQL, contagem,
    proporção). Elas aparecem no índice remissivo no manual em PDF.
  * `@source`: indica a fonte dos dados. Normalmente é a referência
    bibliográfia, a url do endereço de origem ou o nome proprietário dos
    dados (indivíduo, grupo ou instituição).
  * `@examples`: contém código R que produz gráficos e tabelas com os
    dados.

```
#' @name RamalhoTb4.7
#' @title Produção de arrozeiro em função de cultivares
#'
#' @description Produção em função de cultivares de arroz em um
#'     experimento instalado em delineamento de blocos casualidados.
#'
#' @format Um data.frame com 30 linhas e 3 colunas.
#'
#' \describe{
#'
#' \item{\code{bloco}}{Blocos do experimento com 3 níveis
#'     qualitativos. Sua função é de controle local.}
#'
#' \item{\code{cultivar}}{Fator de interesse com 10 níveis
#'     qualitativos. São as cultivares de arroz estudadas no
#'     experimento.}
#'
#' \item{\code{producao}}{Produção de arroz medida em cada parcela
#' (kg/ha).}
#'
#' }
#'
#' @keywords DBC
#'
#' @source Ramalho, M. A. P., Ferreira, D. F., & Oliveira,
#'     A. C. de. (2005). Experimentação em genética e melhoramento de
#'     plantas (2nd ed., p. 322). Editora UFLA. (tabela 7, página 62)
#'
#' @examples
#'
#' library(lattice)
#' data(RamalhoTb4.7)
#'
#' xyplot(producao ~ cultivar, groups = bloco, data = RamalhoTb4.7,
#'        ylab="Produção (kg/ha)", xlab="Cultivar")
#'
NULL
```

Por razão ainda desconhecida, títulos com acentos são substituídos por
`NA` no manual em PDF. Na documentação em HTML, no entanto, e produzida
sem erros.

Perceba a indatação de 4 espaços e que largura de 72 digitos usada para
escrever a documentação.

Para gerar a citação bibliográfica no formato APA, padrão considerado no
pacote, visite <http://www.citationmachine.net/apa/cite-a-book/manual> e
preencha as informações. Use o resultado gerado para vitar a obra.

<!--
<http://ase-research.org/R/>
<http://r-pkgs.had.co.nz/man.html#man-data>
-->

## Como criar um *issue*? ##

De uma maneira simples, um *issue* é uma tarefa. Quando você cria um
*issue*, você está documentando algo que precisa ser feito. Essas
tarefas podem ser relacionadas à criação ou correção no seu pacote.

Na página do repositório existe uma entrada chama
[*Issues*](https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData/issues)
no menu esquerdo. Ao entrar nessa página, existe um botão de create
[new issue](https://gitlab.c3sl.ufpr.br/pet-estatistica/iguir2/issues/new?).

Na página de criar um *issue*, você deve preencher os seguintes campos:

  * Title: com um título que representa o seu *issue*.
  * Description: com uma descrição detalhada do que deve ser feito no
    *issue*.
  * Assignee: com quem é o responsável pelo desenvolvimento do issue*.
  * Milestone: com a marca de milha a que o *issue* pertence, se alguma.
  * Labels: com as palavras chaves apropriadas para o *issue*, se
    alguma.

No projeto **labesData** são adotadas como _Milestones_, as obras
elencadas para transcrição dos dados ao pacote e os _Labels_ são as
disciplinas Estatísticas que a obra coompreende. Por exemplo, ao criar
um _issue_ que propõe a adição de três conjuntos de dados do capítulo 3
do livro Estatística Multivariada de Ferreira (2011) deve-se selecionar
a _milestone_ `Ferreira` e o _label_ `Análise Multivariada`.

Feito isso, clique em *Submit issue*.

## Quanto de trabalho representa um *issue*? ##

É difícil ser preciso nisso, mas aconselha-se que no *labestData* um
*issue* 1) seja o trabalho correspondente a duas horas de dedicação ou,
ainda que o tempo estimado não seja perto desse, que 2) seja uma unidade
característica de trabalho que não vale a pena dividir em mais *issues*.

A última situação ocorre, por exemplo, quando você precisa criar uma
grande função, que demora por volta de 5 horas de trabalho. Uma
dedicação de 2 horas pode não ter uma função pronta que passe nas
verificações de *build*. No primeiro caso, por outro lado, se o trabalho
é texto, por exemplo, mesmo que este esteja incompleto a verificação de
*build* será verde.

## Como fechar ou editar um issue ##

Para editar, basta acessar o menu
[*Issues*](https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData/issues)
e abrir o *issue* desejado. A edição permite editar praticamente tudo,
embora seja desaconselhado modificar o título e descrição do
mesmo. Deve-se dedicar na hora de atribuir título e descriação para que
sejam apropriados e sem necessidade de mudar.

Na página de um *issue* é possível fazer uma discussão sobre ele, bem
como atribuir a outro colaborador. Quandor o issue for concluído, ou
seja quando o ramo dedicado as tarefas descritas neste _issue_ for
mesclado ao `devel`, deve-se fechá-lo.

## Como fazer mensagens de *commit*? ##

Mensagens de *commit* são de duas formas: simples e composta (mono ou
multi linhas). As mensagens simples são aquelas que ocupam uma linha
apenas, normalmente com uma única sentença. Elas descrevem modificações
cuja descrição cabe em uma linha de 72 caracteres. Você pode escrever na
própria linha de instrução do commit, como a seguir.

```
git commit -m "Minha mensagem de uma linha aqui."
```

As mensagens compostas, por outro, servem para documentar várias
modificações. Então não é possível usar a opção `-m`. Apenas faça `git
commit` seguido de ENTER que um editor de terminal vai abrir para que
você escreva a mensagem de *commit*. Normalmente o editor é o vi ou
nano, mas outros podem ser habilitados. Abaixo um exemplo de mensagem
composta.

```
Inclui dataset da página 103

  - Adiciona ./data-raw/dataset103.txt.
  - Adiciona ./data/dataset103.rda.
  - Adiciona ./R/dataset103.R.
  - Adiciona ./man/dataset103.Rd.
```

As mensagens de *commit* devem ter verbos conjugados no presente do
indicativo (faz, completa, adiciona, remove, edita, conserta,
produz, gera, corrige, documenta, escreve, move, transforma, modifica).

## Como criar um *merge request*? ##

Criar um *merge request* (requisição de junção), acesse o menu
[*Merge resquest*](https://gitlab.c3sl.ufpr.br/pet-estatistica/labestData/merge_requests)
e preencha de forma semelhante ao que se faz com o *issue*.

Note que a descrição do *issue* representa o será feito e do *merge
request* o que foi feito.

## Quais as exigências para aceitar um *MR*? ##

Para que um *merge request* seja aceito, 3 condições precisam ser
satisfeitas:

  1. O trabalho deve estar concluído. Isso significa de o que previsto
     precisa ser cumprido. Em caso de não conclusão, uma justificativa
     deve ser dada e aceita. 
  2. O *branch* tem que ter *build sucess*. A vantagem, dentre muitas,
     da integração contínua, é sabermos se um ramo tem problemas de
     código. Se um *branch* não passa nas verificações do *build*,
     quando deveria passar, então algo está errado e precisa ser
     consertado.
  3. O trabalho deve estar em conformidade com o Guia de Estilo de
     Código. Ainda que o *branch* esteja verde - com *build status*
     positivo - o *merger* (pessoa responsável pelo *merge*) deve
     inspecionar o seu código e verificar se está em conformidade com o
     Guia de Estilo de Código. Não havendo conformidade, ele vai indicar
     as correções a serem feitas.

## Existe um *checklist* para incluir um *dataset*? ##

Na lista que segue abaixo, dados representa o nome do dataset e o
diretório raíz é o `/labestData`.

  1. Criar o `dados.txt`. Criar o arquivo texto com os dados no
     diretório `./data-raw`. Usar TAB com separador de campo e ponto
     como separador decimal.
  2. Criar o `dados.rda`. Carregar o `dados.txt` e criar a imagem do
     objeto (`*.rda`) no diretório `./data`. A forma mais simples é usar
     a função `devtools::use_data(dados)`.
  3. Fazer a documentação dos dados. Criar o arquivo `dados.R` no
     diretório `./R/`.
  4. Gerar o arquivo `dados.Rd`. Com o comando `devtools::document()`
     gerar os arquivos de documentação que ficam no diretório
     `./man`. Use `devtools::check_man()` para verificar a documentação.
  5. Por fim, execute `devtools::check()` e `devtools::build()`. Observe
     se ocorrem notificações de `ERROR`, `WARNING` ou `NOTE`. Faça
     correções para removê-las.

No final, você deve ter a essa estrutura de diretório abaixo

```
labestData/
  |-- DESCRIPTION
  |-- NAMESPACE
  |-- data-raw/
  |   `-- dados.txt
  |-- data/
  |   `-- dados.rda
  |-- man/
  |   `-- dados.Rd
  `-- R/
      `-- dados.R
```

## Existe um *checklist* antes de submeter um MR? ##

  1. As atividades do *issue* foram concluídas.
  2. O código está de acordo com o Guia de Estilo de Código.
  3. O `devtools::check()` e `devtools::build()` não executam
     notificações negativas.
  4. O *branch* passa na integração contínua com *build status*
     positivo.
