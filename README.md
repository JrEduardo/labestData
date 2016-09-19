# *labestData* - Biblioteca de Dados para Aprendizado de Estatística #

**PET Estatística UFPR** - <pet.estatistica.ufpr@gmail.com>

[![Build Status](https://travis-ci.org/pet-estatistica/labestData.svg?branch=master)](https://travis-ci.org/pet-estatistica/labestData)
`master`

[![Build Status](https://travis-ci.org/pet-estatistica/labestData.svg?branch=devel)](https://travis-ci.org/pet-estatistica/labestData)
`devel`

> “Without data, you're just another person with an opinion.”
>
>> -- W. Edwards Deming

> “It is a capital mistake to theorize before one has data. Insensibly
> one begins to twist facts to suit theories, instead of theories to
> suit facts.”
>
>> -- Arthur Conan Doyle, Sherlock Holmes

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Sumário**

  - [Descrição](#descrio)
  - [Instalação e Uso](#instalao-e-uso)
      - [Instalação pelo Repositório](#instalao-pelo-repositrio)
      - [Instalação por Arquivos Compactados](#instalao-por-arquivos-compactados)
      - [Excursão](#excurso)
      - [Citação](#citao)
  - [Colaboração e Desenvolvimento](#colaborao-e-desenvolvimento)
  - [Relato de *Bugs* e Sugestões](#relato-de-bugs-e-sugestes)

<!-- markdown-toc end -->

## Descrição

O *labestData* é um pacote para o software
[R de computação estatística](https://www.r-project.org/) que possui
centenas de conjuntos de dados para o ensino e aprendizado de
Estatística. O pacote é desenvolvido pelo [PET Estatística UFPR] e conta
com a participação de professores e colaboradores. O nome
[*labest*](http://www.est.ufpr.br/lab/iniciolab.htm) vem de LABoratório
de ESTatística, que é o ambiente onde acontecem as aulas práticas do
Curso de Estatística na UFPR.

Acreditamos que a excelência na análise de dados vem com a prática.
Portanto, facilitar o acesso dos estudantes aos dados é incentivar que
façam mais análises, que aprendam mais e que fixem melhor os conteúdos
de sala de aula. Com isso em mente, o objetivo do *labestData* é
contribuir com o ensino-aprendizagem de Estatística por reunir,
organizar, manter e disponibilizar conjuntos de dados.

Os dados a serem incluídos no pacote serão provenientes de 2 principais
fontes: livros de estatística e arquivos pessoais de professores
(consultorias, pesquisas ou ensino).

Além dos dados, o pacote possui vinhetas (**vignettes**) que fazem
análise dos dados do pacote. Essas vinhetas são um guia simples de como
coordenar funções do R para analisar os dados. Embora as vinhetas sejam
para alguns dados, elas servem de inspiração ou roteiro para os demais
dados do pacote.

## Instalação e Uso

O *labestData* é um pacote livre para o uso. O estudante pode usar para
praticar a execução de análises, os cientistas podem usar como
referência para análise dos dados de suas pesquisas e os professores
podem usar como instrumento de ensino. Ao tornar público qualquer
material que use elementos do pacote, solicitamos que faça citação do
mesmo.

Para usar os conjuntos de dados você precisa instalar o
*labestData*. Existem duas formas de instalação: 1) direto dos
repositórios Git e 2) pelos arquivos compactados (zip ou tar.gz).

### Instalação pelo Repositório

Para instalar a partir do endereço de um dos repositórios você precisa
ter o pacote `devtools` instalado. De dentro de uma sessão R, escolha
uma das opções abaixo.

```r
library(devtools)

# Do repositório de desenvolvimento no GitLab.
install_git(url = "https://gitlab.c3sl.ufpr.br/pet-estatistica/labestData.git",
            branch = "master", build_vignettes = TRUE)

# Do repositório de divulgação no GitHub.
install_github(repo = "labestData",
               username = "pet-estatistica",
               ref = "master", build_vignettes = TRUE)
```

Você também pode instalar do ramo de desenvolvimento `devel`, mas esteja
ciente que pode não ser uma versão estável do pacote.

### Instalação por Arquivos Compactados

O pacote pode ser instalado por meio dos arquivos compactados
disponíveis em <http://leg.ufpr.br/~walmes/pacotes/>. Para instalar por
esses aquivos, execute o código abaixo. Substitua *x*, *y*, *z* e *w*
pelos valores da versão mais recente disponível.

```r
# Para Linux.
install.packages("http://leg.ufpr.br/~walmes/pacotes/labestData_x.y-z.w.tar.gz",
                 repos = NULL)

# Para Windows.
install.packages("http://leg.ufpr.br/~walmes/pacotes/labestData_x.y.z.w.zip",
                 repos = NULL)
```

Os arquivos compactados podem não ser da versão mais recente do
*labestData*.

### Excursão

Depois de instalado, basta carregar o pacote e chamar o conjunto de
dados que deseja usar. Os comandos abaixo vão permitir você fazer uma
excursão pelo pacote.

```r
library(labestData)          # Carrega o pacote.
ls("package:labestData")     # Mostra os centenas de objetos do pacote.
help(package = "labestData") # Abre a raiz da documentação do pacote.

data(PimentelEg5.2) # Traz para área de trabalho um dataset.
str(PimentelEg5.2)  # Mostra a estrutura do dataset.
help(PimentelEg5.2) # Mostra as informações de ajuda do dataset.

labestDataView()    # Abre aplicação shiny para navegar pelos dados.

browseVignettes("labestData") # Abre a lista de vinhetas no navegador.

help(obras)    # Documentação das obras contidas no pacote.
help(keywords) # Documentação das palavras-chave usadas.
```

### Citação

Para citar o *labestData*, digite `citation("labestData")` no R. Uma
saída semelhante e que está abaixo será exibida. No caso, os valores de
*x*, *y*, *z* e *w* serão os da versão que você tem instalada.

```r
citation("labestData")
```
```
Para citar o pacote 'labestData' use:

  PET Estatística UFPR (2016). labestData: Biblioteca de Dados para
  Aprendizado de Estatística. R package version x.y-z.w.

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {labestData: Biblioteca de Dados para Aprendizado de
             Estatística},
    author = {PET Estatística UFPR},
    year = {2016},
    note = {R package version x.y-z.w},
    url = {http://gitlab.c3sl.ufpr.br/pet-estatistica/labestData,
           https://github.com/pet-estatistica/labestData},
  }
```

## Colaboração e Desenvolvimento

Colaborações são muito bem vindas. Para colaborar, entre em contato com
PET Estatística (<pet.estatistica.ufpr@gmail.com>, PC09, (41) 3361-3261)
ou com o Tutor (<walmes@ufpr.br>, (41) 3361-3573) comunicando a
intenção. Antes, no entanto, leia o
[Guia de Contribuição](http://leg.ufpr.br/~walmes/pacotes/labestData-vignettes/guia-contrib.html)
e o
[Roteiro de Trabalho](http://leg.ufpr.br/~walmes/pacotes/labestData-vignettes/roteiro.html).
Esses arquivos contém as diretrizes de desenvolvimento de pacote R
adotadas no pacote R bem como a descrição do fluxo de trabalho.

O *labestData* é desenvolvido com controle de versão usando o Git. Ele é
mantido em duas plataformas de versionamento Git, o [GitLab] e o
[GitHub]. O GitLab é mantido pelo [C3SL] e é onde de fato o pacote é
desenvolvido. O projeto é espelhado para o GitHub para que mais pessoas
tenham acesso.

O fluxo de trabalho do *labestData* é semanal e contém vários elementos
de trabalho em equipe do [Scrum] e das [4 Disciplinas da Execução]. Tal
forma de trabalhar foi adotada para potencializar o desenvolvimento do
projeto.

## Relato de *Bugs* e Sugestões

Você pode abrir *issues* no projeto *labestData* nos dois repositórios:

  1. No repositório principal dentro do GitLab do C3SL:
     <https://gitlab.c3sl.ufpr.br/pet-estatistica/labesData/issues>.
     Apenas usuários com conta no GitLab do C3SL podem abrir *issue*.
  2. No repositório espelho no GitHub:
     <https://github.com/pet-estatistica/labestData/issues>. Qualquer
     usuário do GitHub pode abrir *issue*.

Caso você não tenha conta em nenhum dos dois serviços, nem se interessa
em abrir uma conta, envie sua sugestão/relato para o endereço
<pet.estatistica.ufpr@gmail.com>. Coloque no início título da mensagem
(*subject*) a palavra `[labestData]`, e.g. `[labestData] Dados com
número incorreto de observações`. Iremos resolver o seu relato de *bug*
o mais rápido possível.

<!------------------------------------------- -->

[PET Estatística UFPR]: http://www.pet.est.ufpr.br/
[C3SL]: www.c3sl.ufpr.br
[GitLab]: https://gitlab.c3sl.ufpr.br/explore
[GitHub]: https://github.com/
[Scrum]: https://www.amazon.com.br/Scrum-fazer-dobro-trabalho-metade-ebook/dp/B00OEI3TKM
[4 Disciplinas da Execução]: http://franklincovey.com.br/execucao/as-4-disciplinas-da-execucao/
[`devtools`]: https://cran.r-project.org/web/packages/devtools/index.html
[`roxygen2`]: https://cran.r-project.org/web/packages/roxygen2/index.html
