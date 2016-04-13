# Guia de Contribuição #

**PET Estatística UFPR** - <pet.estatistica.ufpr@gmail.com>

> "O segredo de progredir é começar. O segredo se começar é dividir as
> tarefas árduas e complicadas em tarefas pequenas e fáceis de executar
> e depois começar pela primeira."
>
>> -- Mark Twain

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Tabela de Conteúdo**

  1. [Para que serve um Guia de Contribuição?](#para-que-serve-um-guia-de-contribuio)
  1. [Qual é o Guia de Estilo de Código?](#qual--o-guia-de-estilo-de-cdigo)
  1. [Qual é o fluxo de trabalho do *labestData*?](#qual--o-fluxo-de-trabalho-do-labestdata)
  1. [Como dar nome aos datasets?](#como-dar-nome-aos-datasets)
  1. [Como dar nome para as variáveis no `data.frame`?](#como-dar-nome-para-as-variveis-no-dataframe)
  1. [Como declarar dados que não sejam tabelas?](#como-declarar-dados-que-no-sejam-tabelas)
  1. [Que tipo de valor usar para as variáveis?](#que-tipo-de-valor-usar-para-as-variveis)
  1. [O que colocar na documentação?](#o-que-colocar-na-documentao)
  1. [Como dar nomes as vinhetas?](#como-dar-nomes-as-vinhetas)
  1. [Como habilitar no `DESCRIPTION`](#como-habilitar-no-description)
  1. [Como criar um *issue*?](#como-criar-um-issue)
  1. [Quanto de trabalho representa um *issue*?](#quanto-de-trabalho-representa-um-issue)
  1. [Como fechar ou editar um *issue*](#como-fechar-ou-editar-um-issue)
  1. [Como fazer mensagens de *commit*?](#como-fazer-mensagens-de-commit)
  1. [Como criar um *merge request*?](#como-criar-um-merge-request)
  1. [Quais as exigências para aceitar um *MR*?](#quais-as-exigncias-para-aceitar-um-mr)
  1. [Existe um *checklist* para incluir um *dataset*?](#existe-um-checklist-para-incluir-um-dataset)
  1. [Existe um *checklist* antes de submeter um MR?](#existe-um-checklist-antes-de-submeter-um-mr)

<!-- markdown-toc end -->

## Para que serve um Guia de Contribuição? ##

O Guia de Contribuição serve para orientar a forma de trabalhar, tanto
individual quanto em equipe, para que seja eficiente, padronizada,
coordenada e segura. Ele estabelece as regras e etapas principais do
deselvolvimento de um projeto. O Guia de Contribuição incluí orientações
de como escrever o código, mensagens de commit, etc TODO

Interessados em participar do projeto devem se orientar pelo Guia de
Contribuição sobre como o desenvolvimento acontece, pois ele contém a
documentação sobre a realização das tarefas, as responsabilidades dos
indivíduos e equipes, as etapas e prazos para atingir as metas do
projeto.

## Qual é o Guia de Estilo de Código? ##

Um Guia de Estilo de Código é um conjunto de recomendações (ou regras)
para padronizar a forma de escrever código. Códigos que são escritos
seguindo um estilo padrão são mais fáceis de manter, modificar e
garantir que estão corretamente escritos e funcionais, principalmente
quando muitos programadores estão envolvidos.

Quase todas as linguagem de programação permitem que os usuários adotem
diferentes padrões de escrita de código.  Algumas não diferenciam
maiúsculas e outras não exigem indentação, por exemplo. Em função de
simplicidade, comodismo ou inércia na hora de escrever ou por causa de
características da linguagem ou do editor usado, os usuários quase
sempre tem um padrão particular para escrita de código.

No pacote *labestData* deve ser considerado o *"idioma"* padrão do R,
descrito no [STYLEGUIDE.md](STYLEGUIDE.md). Nesse arquivo é descrito
desde como nomear objetos até o uso de espaço ao redor dos operadores.

## Qual é o fluxo de trabalho do *labestData*? ##

O fluxo de trabalho é a sequência de etapas que devem ser cumpridas para
atingir um resultado. No *labestData*, o fluxo de trabalho tem unidade
semanal de desenvolvimento e acompanhamento.

## Qual é o fluxo de trabalho do *labestData*?

  1. Criar um *issue* para o Projeto no GitLab. Ao criar o *issue*,
     dedique-se para escrever uma detalhada descrição do trabalho a ser
     feito. Isso informa a equipe sobre onde você irá trabalhar para que
     não se dublique os esforços. Todo issue têm um número associado,
     como `#7` e isso deve ser usado nas comunicações.
  2. Faça uma atualização do seu ramo `devel` local com o ramo `devel`
     do projeto no GitLab (atualize o HEAD). Isso pode ser feito com o
     comando `git pull` ou com `git fetch + git merge`. Em caso de
     insegurança, visite a Apostila de Git do PET Estatística.
  3. Crie um *branch* para começar o trabalho que você descreveu no
     *issue* que acabou de criar. O nome do ramo deve ser `issue#?`, em
     que `'?` representa o número do *issue*, por exemplo,
     `issue#321`. Usar es'ses nomes facilita para os membros descobrirem
     do se se trata esse *branch*, pois basta consultar o *issue* de
     mesmo número.
  4. Faça o trabalho que descreveu. Nessa etapa você senta na frente do
     computador e desenvolve o seu trabalho que, envolve os seguintes
     passos:
     1. Escrever, corrigir, aperfeiçoar, ampliar, revisar, organizar,
        limpar, etc. Fazer o trabalho.
     2. Faça *commits* com regularidade, de preferência, por unidades de
        trabalho para as quais se tem um significado claro - uma unidade
        de trabalho comitável - que possa ser expresso sem prejuízo por
        uma frase curta ou por uma lista de frases curtas. Quando não
        souber se já possuí uma unidade de trabalho merecedora de
        *commit*, faça o *commit* do mesmo jeito. Não seja conservador
        com a quantidade de *commits*. No entanto, seja caprichoso ao
        fazer a sua mensagem de *commit* para garantir que esteja em
        conformidade com o guia de boas práticas.
     3. Em intervalos maiores, mas ainda com frequência, suba seu
        trabalho para o repositório. Isso se faz com o comando `git push
        origin fulano00`, em que `fulano00` representa o seu *issue*. É
        importante fazer *pushs* sempre para evitar de perder o
        trabalho, já que a sua máquina que está sujeita a avaria, e
        mostrar trabalho, uma vez que isso estimula os demais a fazerem
        o mesmo.
  6. Quando cumprir com o trabalho previsto no seu *issue*, dê o *push*
     final e faça uma requisição de mescla - um *merge request* (MR). Ao
     criar o MR, assim como foi para o *issue*, existe um espaço para a
     descrição de tudo o que o *branch*. Basicamente isso é um resumo de
     todos os *commits* feitos. Embora a descrição do *issue* informe o
     que estava previsto fazer, isso não significa que tudo foi
     feito. Você pode ter feito trabalho a mais, ou visto que algo não
     foi necessário. Então relate na descrição do MR exatamente o
     que será adicionado ao ramo alvo. Os MR devem ser para o ramo
     `devel` e devem ser atribuídos à outra pessoa.
  7. Aguarde a avaliação do MR. Nessa etapa quem trabalha é o *merger* -
     colaborador  responsável por  avaliar o  seu *branch*  e aplicar  o
     *merge*. Em caso de aprovação, o *merge* será aplicado. Em caso
     contrário, você será notificado.
  8. Se o MR não foi aceito, o *merger* vai informar o que fazer com
     mensagem abaixo da descrição do merge. Faça as adequações
     solicitadas. Retome da etapa 4.
  9. Quando o MR for aprovado, feche o *issue* correspondente. Indique
     na mensagem de fechamento do *issue* qual foi o número do MR
     dele. Os ramos de demanda - com prefixo *issue* - são removidos
     após o *merge* mas os *issues* e os MR - que junto com os *commits*
     contam a trajetória do projeto - permanem no GitLab.

**Guia de códigos R e GIT para as atividades semanais**

A cada semana devem ser criados novos ramos para realização das
atividades propostas. Porém deve-se ter atenção ao criá-los. Estes ramos
devem necessariamente sair do ramo `baby`. O ramo `baby` contém apenas
um conjunto de dados para que adicionar os novos, seja mais fácil
revisar as contribuições.

Não é necessário que o ramo de trabalho anterior tenha sido incorporado
ao devel, ou seja, para criar o `fulano2` não precisa ter o `fulano1`
incorporado ao `devel`. Abaixo temos os comandos Git para criar o ramo a
partir do `baby`.

```bash
# Retorna para o ramo baby (move o HEAD)
git checkout baby

No pacote *labestData* deve ser considerado o idiom padrão do R,
descrito no [STYLEGUIDE.md].

## Como dar nome aos datasets? ##

No caso de datasets de livros (obras impressas), o nome do dataset é
formado pelo sobrenome do primeiro autor seguido da indentificação do
conjunto de dados na obra. Os exemplos abaixo ilustram variações dessa
regra.

  * ZimmermannTb8.2: Tabela 8.2 do Zimmermann (2004);
  * RamalhoTb4.3: Tabela 3 do capítulo 4 em Ramalho, Ferreira e Oliveira
    (2005). Nesse livro as tabelas tem numeração reiniciada em todo
    capítulo e por isso adiciona-se o numeral do capítulo para evitar
    ambiguidade, já que vários capítulos certamente tem a tabela 1.
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
do exemplo 3 que está na página 122, o nome do dataset terá sufixo
Tb5. Note que uma página pode ter mais de uma tabela, bem como um
exemplo. Além do mais, diferentes edições podem preservar com mais
facilidade a numeração das tabelas do que a localização delas nas mesmas
páginas. Sendo assim, um dataset só será identificado como sufixo Ex ou
Eg se não tiver legenda (Tabela ou Quadro) e só será identificado pela
página se não houver outra alternativa.

A tabela abaixo resume as siglas usadas para cada tipo de referência ao
conjunto de dados dentro da obra.

| Referência | Abreviação |
|------------+------------|
| Tabela     | Tb         |
| Quadro     | Qd         |
| Exercício  | Ex         |
| Exemplo    | Eg         |
| Apêndice   | Ap         |
| Página     | Pg         |

Dados em artigos devem usar o nome do primeiro autor, mas esteja atento
às recomendações a seguir:

  * Se do artigo for usado apenas uma tabela de dados, não há
    necessidade de colocar referência e contador no nome, ou seja, basta
    `Fulano` ao invés de `FulanoTb1`.
  * Se do artigo for usado mais de uma tabela, deve-se usar um
    contador. Nesse caso seria `Fulano1` e `Fulano2`.
  * No caso de dados de artigos diferentes que tenham o primeiro com
    mesmo sobrenome, para distingui-las deve-se usar o ano logo após o
    sobrenome do primeiro autor.

Dados de arquivos pessoais que não foram usados em uma publicação
(artigo, trabalho de conclusão de curso, dissertação ou tese), poder ter
o nome do proprietário, do local de origem, ou outro identificador que
seja único que descritivo do dataset.

## Como dar nome para as variáveis no `data.frame`? ##

O nome das variáveis não deve conter acentos (ASCII pleno), não pode
iniciar com número e só admite o underline como não alfanumérico. As
variáveis de nome composto e longo podem ser representadas por siglas, e
as de nome simples mas longo, por abreviação. Veja a tabela com
exemplos.

| Variável resposta         | Nome da coluna |
|---------------------------+----------------|
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

Abaixo tem-se a documentação do *data.frame* `RamalhoTb4.7`. Embora os campos
sejam praticamente autoexplicativos, segue breve explicação.

  * `@name`: o nome do dataset.
  * `@title`: título que representa o dataset. Deve estar captalizado,
    ou seja iniciais maiúsculas, exceto para artigos e preposições.
  * `@description`: descrição do conjunto de dados, como delineamento,
    forma de arquisição dos dados, objetivo do estudo,
    pessoas/organizações envolvidas, hipóteses, etc. Pode conter mais
    de um parágrafo.
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
#' @title Produção de Cultivares de Arroz
#' @description Produção em função de cultivares de arroz em um
#'     experimento instalado em delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
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
#'     (kg ha\eqn{^{-1}}).}
#'
#' }
#'
#' @keywords DBC arroz
#'
#' @source Ramalho, M. A. P., Ferreira, D. F., & Oliveira,
#'     A. C. de. (2005). Experimentação em genética e melhoramento de
#'     plantas (2nd ed., p. 322). Lavras, MG: UFLA. (Tabela 7, pág. 62)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb4.7)
#' str(RamalhoTb4.7)
#'
#' xyplot(producao ~ cultivar, groups = bloco, data = RamalhoTb4.7,
#'        ylab = expression("Produção"~(kg~ha^{-1})),
#'        xlab = "Cultivares de arroz")
#'
NULL
```

Nesse exemplo de documentação, atente para o seguinte:

  * O título está captalizado e não termina com pontuação;
  * O uso de `\code{}` para as descrição das variáveis que exibe esses
    textos em fonte monoespaço. Cada `\item` descreve uma variável e a
    ordem deles deve ser a mesma ordem das colunas no `data.frame`. A
    decrição termina com ponto final.
  * A referência bibliográfica no formato APA sem o `&` separando os
    últimos dois autores. A referência contém cidade, estado e
    editora. No final tem-se a referência e página sobre o dataset.
  * Na sessão exemplos, usa-se `data()` e `str()` para o dataset. No
    código da sessão exemplo, os gráficos ou tabelas devem priorizar
    visualizações mais próximas das hipóteses ou interesse do
    pesquisador. Sendo assim, a produção está em função das cultivar e
    não dos blocos porque o interesse é estudar a cultivar, já o bloco
    está presente para haver controle local.
  * A representação das unidades de medida está em notação de potência
    na documentação (`\eqn{}`) e no código da seção exemplos
    (`expression()`).
  * A indentação negativa de 4 espaços e largura de 72 digitos para fazer
    quebra de linhas.

Para gerar a citação bibliográfica no formato APA, padrão considerado no
pacote, visite <http://www.citationmachine.net/apa/cite-a-book/manual> e
preencha as informações. Use o resultado gerado para citar a obra.

Em certas situações, o campo `@seealso` (veja também) pode ser usado. É
o caso de dois arquivos de dados serem "irmãos", ou seja, são duas
tabelas de experientos de mesma estrutura feitos em anos consecutivos,
em locais diferentes, ou alguma outra condição de contorno diferente.

Recentemente foi habilitado o uso de figuras nas páginas de documentação
do R. Visite
<https://cran.r-project.org/doc/manuals/R-exts.html#Figures> para
detalhes.

Por razão ainda desconhecida, títulos com acentos são substituídos por
`NA` no manual em PDF. Na documentação em HTML, no entanto, e produzida
sem erros.

## Como dar nomes as vinhetas? ##

<!------------------------------------------- -->

## Como criar um *branch*? ##

Um *branch* é criado de duas formas, conforme abaixo.

```
# Com duas instruções.
git branch novo   # cria
git checkout novo # move

# Com uma instruções 2 em 1
git checkout -b novo
```

## Como criar um *issue*? ##

De uma maneira simples, um *issue* é uma tarefa. Quando você cria um
*issue*, você está documentando algo que precisa ser feito. Essas
tarefas podem ser relacionadas à adições (criar novos arquivos, criar
conteúdo em arquivos) ou correção (ortográficas, em código) no seu
pacote.

Na página do repositório existe uma entrada chamada
[*Issues*](https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData/issues)
no menu esquerdo. Ao entrar nessa página, existe um botão de create
[new issue](https://gitlab.c3sl.ufpr.br/pet-estatistica/iguir2/issues/new?).

Na página de criar um *issue*, você deve preencher os seguintes campos:

  * Title: com um título que representa o seu *issue*.
  * Description: com uma descrição detalhada do que deve ser feito no
    *issue*.
  * Assignee: com quem é o responsável pelo desenvolvimento do *issue*.
  * Milestone: com a marca de milha a que o *issue* pertence, se alguma.
  * Labels: com as palavras chaves apropriadas para o *issue*, se
    alguma.

No projeto **labesData** são adotadas como _Milestones_, as obras
elencadas para transcrição dos dados ao pacote e os _Labels_ são as
disciplinas Estatísticas que a obra coompreende. Visite ambos:
[milestones](https://gitlab.c3sl.ufpr.br/pet-estatistica/labestData/milestones)
e
[labels](https://gitlab.c3sl.ufpr.br/pet-estatistica/labestData/labels).
Por exemplo, ao criar um  *issue* que propõe a adição de três conjuntos
de dados do capítulo 3 do livro Estatística Multivariada de Ferreira
(2011) deve-se selecionar a _milestone_ `Ferreira` e o _label_ `Análise
Multivariada`.

Feito isso, clique em *Submit issue*. Seu *issue* vai ter um número
associado e todos os membros do projeto poderão consultar o seu *issue*
para saber detalhes sobre o que irá ser feito.

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

## Como fechar ou editar um *issue* ##

Para editar, basta acessar o menu
[*Issues*](https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData/issues)
e abrir o *issue* desejado. A edição permite editar praticamente tudo,
embora seja desaconselhado modificar o título e descrição do
mesmo. Deve-se dedicar na hora de atribuir título e descriação para que
sejam apropriados e sem necessidade de mudar no futuro. Essa é a
filosofia do faça certo de primeira (*do it right the first time*).

Na página de um *issue* é possível fazer uma discussão sobre ele, bem
como atribuir a outro colaborador. Quandor o issue for concluído,
deve-se fechá-lo.

## Como fazer mensagens de *commit*? ##

Começar com verbo no imperativo.

## Como criar um *merge request*? ##

Criar um *merge request* (requisição de junção/mescla), acesse o menu
[*Merge resquest*](https://gitlab.c3sl.ufpr.br/pet-estatistica/labestData/merge_requests)
e preencha de forma semelhante ao que se faz com o *issue*.

Note que a descrição do *issue* representa o será feito e do *merge
request* o que foi de fato feito.

## Quais as exigências para aceitar um *MR*? ##

Para que um *merge request* seja aceito, 3 condições principais precisam
ser atendidas:

  1. O trabalho deve estar concluído. Isso significa de o que previsto
     precisa ser cumprido. Em caso de não conclusão, uma justificativa
     deve ser dada e aceita. Se o trabalho foi mal dimensionado, abra um
     *issue* no futuro para concluí-lo.
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

Além dos pontos acima, um MR pode não ser aceito por precisar de
revisões/correções não relacionadas com os pontos acima. Por exemplo,
faltar declarar fatores como `factor`, incluir a unidade de medida das
variáveis, modificar o código da seção exemplos.

## Existe um *checklist* para incluir um *dataset*? ##

Na lista que segue abaixo, `dados` representa o nome do dataset e o
diretório raíz é o `/labestData`.

  1. Criar o `dados.txt`. Criar o arquivo texto com os dados no
     diretório `./data-raw`. Usar TAB com separador de campo, ponto
     como separador decimal, sem nomes nas linhas e sem aspas.
  2. Criar o `dados.rda`. Carregar o `dados.txt` e criar a imagem do
     objeto (`*.rda` ou `*.RData`) no diretório `./data`. A forma mais
     simples é usar a função `devtools::use_data(dados)`.
  3. Fazer a documentação dos dados. Criar o arquivo `dados.R` no
     diretório `./R/`.
  4. Gerar o arquivo `dados.Rd`. Com o comando `devtools::document()`
     gerar os arquivos de documentação que ficam no diretório
     `./man`. Use `devtools::check_doc()` para verificar a documentação.
  5. Por fim, execute `devtools::check()` e `devtools::build()`. Observe
     se ocorrem notificações de `ERROR`, `WARNING` ou `NOTE`. Faça
     correções para removê-las.

No final, considerando apenas os arquivos do `dados`, você deve ter a
essa estrutura de diretório abaixo

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
