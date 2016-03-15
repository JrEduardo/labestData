% labestData
% PET Estatística UFPR - <pet.estatistica.ufpr@gmail.com>

> “Without data, you're just another person with an opinion.”
>
>> -- W. Edwards Deming

> “It is a capital mistake to theorize before one has data. Insensibly
> one begins to twist facts to suit theories, instead of theories to
> suit facts.”
>
>> -- Arthur Conan Doyle, Sherlock Holmes

## O que o *labestData*?

O *labestData* é um projeto coletivo do PET Estatística UFPR para
desenvolver um pacote R com conjuntos de dados para ensino de
Estatística.

## Quais são os objetivos do projeto *labestaData*?

O projeto tem dois objetivos principais:

  1. Capacitar os membros do PET Estatística (bolsistas e voluntários)
     a desenvolver pacote R com versionamento Git;
  2. Contribuir com o Departamento de Estatística, e a comunidade
     científica em geral, por reunir, organizar, manter e disponibilizar
     conjuntos de dados na forma de um pacote R de tal forma que possam
     ser usados para o ensino de Estatística.

## Quem são os desenvolvedores do *labestData*?

Os colaboradores do *labestData* são os bolsistas do PET, voluntários e
professores.

|                                  | Tipo       | 1 etapa | 2 etapa |
|----------------------------------|------------|---------|---------|
| Alcides Conte Neto               | Voluntário | S       | -       |
| Altamiro Antonio Basiewics       | Petiano    | S       | -       |
| Angela Luiza Cunha Legey         | Petiana    | S       | -       |
| Bruna Davies Wundervald          | Petiana    | S       | -       |
| Bruno Geronymo                   | Petiano    | S       | -       |
| Daniel Ikenaga                   | Petiano    | S       | -       |
| Eduardo Elias Ribeiro Junior     | Petiano    | S       | -       |
| Gabriel Sartori Klostermann      | Petiano    | S       | -       |
| Jhenifer Caetano Veloso          | Petiana    | S       | -       |
| Monica Ludmila Hintz De Oliveira | Petiana    | S       | -       |
| Paula Alessandra Zeizer Dimas    | Petiana    | S       | -       |
| Walmes Marques Zeviani           | Professor  | S       | -       |
| Cesar Augusto Taconeli           | Professor  | S       | -       |

## Como fazer para ser colaborar do *labestData*?

Colaborações são muito bem vindas. Para colaborar, entre em contato com
PET Estatística (<pet.estatistica.ufpr@gmail.com>, PC09, 04133613261) ou
com o Tutor (<walmes@ufpr.br>. 04133613573) comunicando a
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

  1. Livros. Os livros que exibem aplicações normalmente contém dados em
     formas de tabela, em CD-Rom que acompanha o livro, pacote ou em
     site com materiais suplementares. Essa será a maior fonte de dados
     para o pacote labestData.
  2. Internet. A internet está repleta de dados. Existem dados prontos
     em formas de tabela (páginas pessoais, orgãos públicos, instiuições
     de pesquisa, resultados de enquetes, etc) e também dados não
     tabulados/organizados que podem ser capturados (com *web scrap*,
     por exemplo) e processados.
  3. Arquivos pessoais. Alunos, professores, pesquisadores também podem
     disponibilizar os dados de suas pesquisas para inclusão no pacote.
  4. Simulação. Embora sejam artificiais, dados proveninentes de
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
(CE071), Planjamento de Experimentos I (CE213) e Métodos Estatísticos
Multivariados (CE090). No Curso de Estatística da UFPR, essas
disciplinas são ofertadas no primeiro semestre. Na segunda etapa, os
dados irão priorizar as disciplinas de Modelos Lineares Generalizados
(CE225), Controle de Processos Industriais (CE074) e Extensões de
Modelos de Regressão (CE092). Essas disciplinas são ofertadas no segundo
semestre para o Curso de Estatística da UFPR.

Embora sejam esses os contextos de prioridade, dados de outras áreas são
igualmente bem vindos, como dados espaciais, séries temporais, de
análise de sobreviência, de questionário, etc.

Os dados reais devem possuir uma boa descrição das variáveis (nome,
unidade de medida, instrumento de medida usado, definição da unidade
experimental), dos objetivos do experimento/estudo, de algumas hipóteses
preliminares, da forma de condução do experimento/coleta de dados, das
condições de contorno do experimento, etc.

## O que o *labestData* possui além dos conjuntos de dados?

Além dos dados, o pacote possui vinhetas (**vignettes**) com estudos de
caso com os dados do pacote. Essas vinhetas são um guia simples de como
coordenar funções do R para analisar os dados. Embora as vinhetas sejam
para alguns dados, elas servem de inspiração ou roteiro para os demais
dados do pacote.

## Quem pode usar o *labestData*?

O *labestData* é um pacote livre para o uso. O estudante pode usar (e
deve) para praticar a execução de análises, os cientistas podem usar
como referência para análise dos dados de suas pesquisas e os
professores podem usar como ferramenta de ensino. Ao tornar público
qualquer material que use elementos do pacote, solicitamos que faça
citação do mesmo.

## Como citar o pacote *labestData*?

PET Estatística UFPR (2016). **labestData: conjuntos de dados para
ensino de estatística**. R package version x.y-z.
https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData

    @Manual{labestData2016,
      title = {labestData: conjuntos de dados para ensino de estatística},
      author = {PET Estatística UFPR},
      year = {2016},
      note = {R package version x.y-z},
      url = {https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData},
    }

**Atenção**: x.y-z deve ser substituído pela versão considerada do
pacote.

## Como usar os conjuntos de dados do *labestData*?

Para usar os conjuntos de dados você precisa instalar o pacote. Existem
duas formas de fazer isso:

  1. Instalando o pacote pelos arquivos fonte: você precisar baixar o
     arquivo com os fontes (`labestData.tar.gz` para Linux e
     `labestData.zip` para Windows) e, de dentro de uma sessão R,
     instalar com

        install.packages("labestData.tar.gz", repos = NULL)
  2. Instalando a partir do endereço do repositório. Para isso você
     precisa ter o pacote `devtools` instalado (com todas as suas
     dependências). De dentro de uma sessão R, instale com

        library(devtools)
        install_git("https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData.git")

Depois de instalado, basta carregar o pacote e chamar o conjunto de
dados que deseja usar.

    library(labestData)      # Carrega o pacote para sessão.
    ls("package:labestData") # Lista os objetos do pacote.
    data(dados)              # Traz para área de trabalho um dataset.
    str(dados)               # Mostra a estrutura do dataset.

## Como reportar sugestões ou erros ao projeto *labestData*?

Você pode abrir *issues* no projeto *labestData* em dois repositórios:

  1. No repositório principal dentro do GitLab do c3sl:
     <https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData/issues>.
     Apenas usuários com conta no GitLab do c3sl podem abrir *issue*.
  2. No repositório espelho no GitHub:
     <https://github.com/pet-estatistica/labestData/issues>. Qualquer
     usuário do GitHub pode abrir *issue*.

Caso você não tenha conta em nenhum dos dois serviços, nem se interessa
em abrir uma conta, envie sua sugestão/bug para o endereço
<pet.estatistica.ufpr@gmail.com>. Coloque no início título da mensagem
(*subject*) a palavra `[labestData]`, e.g. `[labesData] Dados com número
incorreto de observações`.
