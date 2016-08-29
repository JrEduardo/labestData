# labestData #

**PET Estatística UFPR** - <pet.estatistica.ufpr@gmail.com>

[![Build Status](https://travis-ci.org/pet-estatistica/labestData.svg?branch=master)](https://travis-ci.org/pet-estatistica/labestData)
Build status for the stable version (`master` branch)

[![Build Status](https://travis-ci.org/pet-estatistica/labestData.svg?branch=devel)](https://travis-ci.org/pet-estatistica/labestData)
Build status for the development version (`devel` branch)

> “Without data, you're just another person with an opinion.”
>
>> -- W. Edwards Deming

> “It is a capital mistake to theorize before one has data. Insensibly
> one begins to twist facts to suit theories, instead of theories to
> suit facts.”
>
>> -- Arthur Conan Doyle, Sherlock Holmes

## O que o *labestData*?

O *labestData* é pacote R com conjuntos de dados para ensino de
Estatística desenvolvido pelo [PET Estatística UFPR]. Os dados extraídos
de livros e apostila, mantidos juntos no *labestData* forma uma galeria
de dados TODO

O nome *labest* vem de LABoratório de ESTatística.


## Por que fazer um pacote com conjuntos de dados?

A excelência na análise de dados vem com a prática.  Facilitar o acesso
dos estudantes aos dados é incentivar que façam mais análises, que
aprendam mais ou fixem melhor os conteúdos de sala de aula.  Dados de
livros, por exemplo, são um excelente ponto de partida pois são bem
documentados. Inclusive alguns são análisos nas próprias obras. Dessa
maneira, o aluno além de poder reproduzir os resultados exibidos na obra
pode tentar novas maneiras de analisar os dados. Por fim, cada conjunto
de dados tem um história por traz e o estudante em contato com isso
desenvolve uma maior capacidade de compreender os problemas reais de
estatística e de buscar soluções para eles.

## Quais são os objetivos do projeto *labestaData*?

O projeto tem dois objetivos principais:

  1. Contribuir a comunidade científica em geral, com o Departamento de
     Estatística, por reunir, organizar, manter e disponibilizar
     conjuntos de dados para o ensino-apredizagem de Estatística.
  2. Capacitar os membros do PET Estatística (bolsistas e voluntários)
     a desenvolver pacote R com versionamento Git;

## Quem são os desenvolvedores do *labestData*?

Os colaboradores do *labestData* são os bolsistas do PET, voluntários e
professores. A tabela abaixo exibe todos os colaboradores.

|                                  | Tipo       | 1 etapa | 2 etapa |
|----------------------------------|------------|---------|---------|
| Alcides Conte Neto               | Voluntário | S       | -       |
| Altamiro Antonio Basiewics       | Petiano    | S       | -       |
| Ângela Luiza Cunha Legey         | Petiana    | S       | -       |
| Bruna Davies Wundervald          | Petiana    | S       | -       |
| Bruno Geronymo                   | Petiano    | S       | -       |
| Daniel Ikenaga                   | Petiano    | S       | -       |
| Eduardo Elias Ribeiro Junior     | Petiano    | S       | -       |
| Gabriel Sartori Klostermann      | Petiano    | S       | -       |
| Jhenifer Caetano Veloso          | Petiana    | S       | -       |
| Mônica Ludmila Hintz De Oliveira | Petiana    | S       | -       |
| Paula Alessandra Zeizer Dimas    | Petiana    | S       | -       |
| Walmes Marques Zeviani           | Professor  | S       | -       |
| Cesar Augusto Taconeli           | Professor  | S       | -       |

## Como fazer para ser colaborar do *labestData*?

Colaborações são muito bem vindas. Para colaborar, entre em contato com
PET Estatística (<pet.estatistica.ufpr@gmail.com>, PC09, (41) 3361-3261)
ou com o Tutor (<walmes@ufpr.br>. (41) 3361-3573) comunicando a
intenção. Antes, no entanto, leia o Guia de Contribuição:
[CONTRIBUTING.md](./CONTRIBUTING.md).

## Quando é desenvolvido o pacote *labestData*?

O *labestData* foi planejado para ser desenvolvido em duas etapas.  A
primeira etapa inicia em 29/02/2016 com duração de 10 semanas (fim em
06/05). A segunda inicia em 01/08/2016 com duração de 7 semanas (fim em
16/09).

## De onde serão obtidos os conjuntos de dados para o *labestData*?

Os dados a serem incluídos no pacote serão provenientes de 4 principais
fontes:

  1. **Livros**. Os livros que exibem aplicações normalmente contém
     dados em formas de tabela, em CD-Rom que acompanha o livro, pacote
     ou em site com materiais suplementares. Essa será a maior fonte de
     dados para o pacote labestData. Isso porque os dados dos livros
     geralmente estão documentados e alguns possuem aplicação com
     solução na própria obra.
  2. **Internet**. A internet está repleta de dados. Existem dados
     prontos em formas de tabela (páginas pessoais, órgãos públicos,
     instituições de pesquisa, resultados de enquetes, etc) e também
     dados não tabulados/organizados que podem ser capturados (com *web
     scrap*, por exemplo) e processados.
  3. **Arquivos pessoais**. Alunos, professores, pesquisadores também
     podem disponibilizar os dados de suas pesquisas para inclusão no
     pacote.
  4. **Simulação**. Embora sejam artificiais, dados provenientes de
     simulação podem ser considerados pois, muitas vezes, são
     deliberadamente feitos com uma particular característica relevante
     para um problema. No pacote labestData essa será a menor fonte de
     dados.

Esses dados serão incluídos no pacote, logicamente, sendo feita uma
referências apropriada da fonte. Se a fonte for livro (site), será
indicado a obra (endereço) de tal forma que as pessoas possam encontrar
o original. Dados de arquivos pessoais também farão referência sobre os
proprietários dos dados, pessoas ou instituições.

## Quais os tipos de dados que serão considerados no *labestData*?

Por razões de conveniência, a primeira etapa do pacote irá priorizar
dados correspondentes às disciplinas de Análise de Regressão Linear
(CE071), Planejamento de Experimentos I (CE213) e Métodos Estatísticos
Multivariados (CE090). No Curso de Estatística da UFPR, essas
disciplinas são ofertadas no primeiro semestre. Na segunda etapa, os
dados irão priorizar as disciplinas de Modelos Lineares Generalizados
(CE225), Controle de Processos Industriais (CE074) e Extensões de
Modelos de Regressão (CE092). Essas disciplinas são ofertadas no segundo
semestre para o Curso de Estatística da UFPR.

Embora sejam esses os contextos de prioridade, dados de outras áreas são
igualmente bem vindos, como dados espaciais, séries temporais, de
análise de sobrevivência, de questionário, análise sensorial, etc.

Os dados reais devem possuir uma boa descrição das variáveis (nome,
unidade de medida, instrumento de medida usado, definição da unidade
experimental), dos objetivos do experimento/estudo, de algumas hipóteses
preliminares, da forma de condução do experimento/coleta de dados, das
condições de contorno do experimento, etc.

## O que o *labestData* possui além dos conjuntos de dados?

Além dos dados, o pacote possui vinhetas (**vignettes**) que fazem
análise dos dados do pacote. Essas vinhetas são um guia simples de como
coordenar funções do R para analisar os dados. Embora as vinhetas sejam
para alguns dados, elas servem de inspiração ou roteiro para os demais
dados do pacote.

## Quem pode usar o *labestData*?

O *labestData* é um pacote livre para o uso. O estudante pode usar (e
deve) para praticar a execução de análises, os cientistas podem usar
como referência para análise dos dados de suas pesquisas e os
professores podem usar principalmente como instrumento de ensino. Ao
tornar público qualquer material que use elementos do pacote,
solicitamos que faça citação do mesmo.

## Como citar o pacote *labestData*?

Digite `citation("labestData")` no R. Usa saída semelhante e que está
abaixo será exibida. Lembre-se que a versão pode ser diferente.

```
> citation("labestData")

Para citar o pacote 'labestData' use:

  PET Estatística UFPR (2016). labestData: Conjuntos de Dados para
  Ensino de Estatística. R package version 0.0-16.451.

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {labestData: Conjuntos de Dados para Ensino de Estatística},
    author = {PET Estatística UFPR},
    year = {2016},
    note = {R package version 0.0-16.451},
    url = {http://gitlab.c3sl.ufpr.br/pet-estatistica/labestData,
           https://github.com/pet-estatistica/labestData},
  }
```

## Como o *labestData* é desenvolvido

O *labestData* é desenvolvido com controle de versão usando o Git. Ele é
mantido em duas plataformas de versionamento Git, o [GitLab] e o
[GitHub]. O GitLab é mantido pelo [C3SL] e é onde de fato o pacote é
desenvolvido. Lá estão as milestones e issues de desenvolvimento do
projeto. O projeto é espelhado para o GitHub para que mais pessoas
tenham acesso, tanto para instalação, quanto para poder colaborar com o
projeto.

O fluxo de trabalho do *labestData* é semanal e contém vários elementos
de trabalho em equipe do [Scrum] e das [4 Disciplinas da Execução]. Tal
forma de trabalhar foi admitida para potencialar o desenvolvimento do
projeto, pois aumentam o engajamento da equipe.

Para o desenvolvimento da parte R propriamente dita, foi usado o pacote
`devtools` e `roxygen2`. Esses pacotes combinados facilitam o
desenvolvimento do pacote pois permitem que a documentação seja escrita
de uma forma mais legível e junto com a definição dos objetos exportados
(ou não) pelo pacote.

## Como instalar o *labestData*?

Para usar os conjuntos de dados você precisa instalar o
*labestData*. Instale a partir do endereço de um dos repositórios. Para
isso você precisa ter o pacote `devtools` instalado (com todas as suas
dependências). De dentro de uma sessão R, instale com alguma das duas
opções abaixo.

```
library(devtools)

# Do GitLab.
install_git(url = "https://gitlab.c3sl.ufpr.br/pet-estatistica/labestData.git",
            branch = "master")

# Do GitHub.
install_github(repo = "pet-estatistica/labestData",
               branch = "master")
```

O ramo `devel` é o de desenvolvimento do pacote. Você pode instalar do
ramo `devel` também, mas esteja ciente que pode não ser uma versão
estável do pacote.

Você também pode instalar o pacote por meio dos arquivos comprimidos
disponíveis em <http://leg.ufpr.br/~walmes/pacotes/>. Para instalar por
esse aquivos, execute o códido abaixo. Substitua *x*, *y*, *z* e *w*
pelos valores da versão mais recente.

```
# Se Linux.
install.packages("http://leg.ufpr.br/~walmes/pacotes/labestData_x.y-z.w.tar.gz",
                 repos = NULL)

# Se Windows.
install.packages("http://leg.ufpr.br/~walmes/pacotes/labestData_x.y.z.w.zip",
                 repos = NULL)
```

Depois de instalado, basta carregar o pacote e chamar o conjunto de
dados que deseja usar.

```
library(labestData)          # Carrega o pacote.
ls("package:labestData")     # Mostra os objetos do pacote.
help(package = "labestData") # Abre a home da documentação do pacote.

data(PimentelEg5.2) # Traz para área de trabalho um dataset.
str(PimentelEg5.2)  # Mostra a estrutura do dataset.
help(PimentelEg5.2) # Mostra as informações de ajuda do dataset.

labestDataView()    # Abre aplicação shiny para navegar pelos dados.
```

## Como reportar sugestões ou erros ao projeto *labestData*?

Você pode abrir *issues* no projeto *labestData* nos dois repositórios:

  1. No repositório principal dentro do GitLab do C3SL:
     <https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData/issues>.
     Apenas usuários com conta no GitLab do C3SL podem abrir *issue*.
  2. No repositório espelho no GitHub:
     <https://github.com/pet-estatistica/labestData/issues>. Qualquer
     usuário do GitHub pode abrir *issue*.

Caso você não tenha conta em nenhum dos dois serviços, nem se interessa
em abrir uma conta, envie sua sugestão/bug para o endereço
<pet.estatistica.ufpr@gmail.com>. Coloque no início título da mensagem
(*subject*) a palavra `[labestData]`, e.g. `[labesData] Dados com número
incorreto de observações`.

<!------------------------------------------- -->

[PET Estatística UFPR]: http://www.pet.est.ufpr.br/
[C3SL]: www.c3sl.ufpr.br
[GitLab]: https://gitlab.c3sl.ufpr.br/explore
[GitHub]: https://github.com/
[Scrum]: https://www.amazon.com.br/Scrum-fazer-dobro-trabalho-metade-ebook/dp/B00OEI3TKM
[4 Disciplinas da Execução]: http://franklincovey.com.br/execucao/as-4-disciplinas-da-execucao/
[`devtools`]: https://cran.r-project.org/web/packages/devtools/index.html
[`roxygen2`]: https://cran.r-project.org/web/packages/roxygen2/index.html
