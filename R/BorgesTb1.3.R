#'  @name BorgesTb1.3
#'  @title Tensiômetro
#'  
#'  @description Foi observado a construção de um tensiômetro de leitura
#'  direta, obtendo-se os resultados de altura da câmara e tensão da 
#'  água no solo.
#'  
#'  @format Um \code{data.frame} de 9 linhas e 2 colunas.
#'  
#'  \describe{
#'  
#'      \item{\code{altura}}{ Altura da câmara do tensiômetro medida 
#'      em milímetros (mm). }
#'      
#'      \item{\code{tensao}}{ Tensão da água no solo medida em mb }
#'  
#'  }
#'  
#'  @keywords tensiômetro
#'  
#'  @source Borges, C. G., Demétrio, & Zocchi, S. S. (2011). 
#'  Modelo de Regressão. Piracicaba, SP: USP.
#'  
#'  @examples
#'  
#'  ## Carregando pacotes necessários ----------------------------------
#'  
#'  library(lattice)
#'  
#'  ## Carregando o banco de dados -------------------------------------
#'  
#'  data(BorgesTb1.3)
#'  
#'  ## Plotando o gráfico ----------------------------------------------
#'  
#'  xyplot(tensao ~ altura, data = BorgesTb1.3,
#'      main = "Altura VS Tensão",
#'      xlab = "Altura do Tensiômetro",
#'      ylab = "Tensão da Água")
#'      
#'  ## Medidas de Posição ----------------------------------------------
#'  
#'  summary(BorgesTb1.3)
#'