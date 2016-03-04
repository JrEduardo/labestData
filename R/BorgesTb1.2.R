#'  @name BorgesTb1.2
#'  @title Irrigação em Batata
#'  
#'  @description Foram medidas as lâminas de água a diferentes 
#'   disntâncias do aspersor. O objetivo foi mensurar a produtividade, 
#'   já que, no tipo de solo utilizado no experimento (solo argiloso),
#'   espera-se que o excesso de água diminua a produtividade.
#'  
#'  @format Um data.frame de 12 linhas e 2 colunas.
#'  
#'  \describe{
#'  
#'      \item{\code{lamina}}{ Espessura da lâmina de água medida em 
#'      milímetros (mm). }
#'      
#'      \item{\code{prod}}{ Produtividade medida em toneladas de batatas
#'       por hectare (t/ha). }
#'  
#'  }
#'  
#'  @keywords batata aspersor produtividade
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
#'  data(BorgesTb1.2)
#'  
#'  ## Plotando o gráfico ----------------------------------------------
#'  
#'  xyplot(prod ~ lamina, data = BorgesTb1.2,
#'      main = "Produção VS Lâmina de Água",
#'      xlab = "Lâmina",
#'      ylab = "Produção",
#'      panel = function(x, y) {
#'          panel.xyplot(x, y)
#'          panel.abline(lm(y ~ x), col = 3)
#'      })
#'      
#'  ## Verificando Significância ---------------------------------------
#'  
#'  summary(lm(prod ~ lamina, data = BorgesTb1.2))
#'  