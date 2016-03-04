#'  @name BorgesTb1.1
#'  @title Fósforo Orgânico VS Fósforo Disponível
#'  
#'  @description O fósforo Orgânico foi adicionado antes de plantar-se o
#'  milho. Após 38 dias, houve a colheita e mediu-se o fósforo 
#'  disponível.
#'  
#'  @format Um data.frame de 9 linhas e 2 colunas.
#'  
#'  \describe{
#'  
#'      \item{\code{fo}}{ Fósforo orgânico adicionado ao solo. A unidade
#'      de medida é partes por milhão (ppm).}
#'      
#'      \item{\code{fd}}{ Fósforo disponível após plantar-se o milho. 
#'      A unidade de medida é partes por milhão (ppm).}
#'  
#'  }
#'  
#'  @keywords fósforo milho
#'  
#'  @source Borges, C. G., Demétrio, & Zocchi, S. S. (2011). 
#'  Modelo de Regressão. Piracicaba, SP: USP.
#'  
#'  @example 
#'  
#'  ## Carregando pacotes necessários ----------------------------------
#'  
#'  library(lattice)
#'  
#'  ## Carregando o banco de dados -------------------------------------
#'  
#'  data(BorgesTb1.1)
#'  
#'  ## Plotando o gráfico ----------------------------------------------
#'  
#'  xyplot(fd ~ fo, data = BorgesTb1.1,
#'      main = "Orgânico VS Disponível",
#'      xlab = "Fósforo Orgânico",
#'      ylab = "Fósforo Disponível",
#'      panel = function(x, y) {
#'          panel.xyplot(x, y)
#'          panel.abline(lm(y ~ x), col = 3)
#'      })
#'      
#'  ## Verificando Significância ---------------------------------------
#'  
#'  summary(lm(fd ~ fo, data = BorgesTb1.1))
#'  