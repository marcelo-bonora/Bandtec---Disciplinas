#BIBLIOTECAS NECESSARIAS
install.packages("ggplot2")
install.packages("ggthemes")
library(ggplot2)
library(forcats)
library(ggthemes)
#IMPORTE O TABELA PRIMEIRO

#PLOTANDO O BARPLOT:
{
historico <- c("#2d86e0")
ggplot(BillingCloudCost, aes(x = fct_reorder(Mês,IdLeitura), y = Valor, fill = historico , label = Mês)) +
  geom_bar(stat = "identity") +
  guides(fill = FALSE) +
  xlab(NULL) +
  ylab(NULL) +
  theme_calc() +
  theme(axis.text.x = element_text(size = 13)) +
  scale_fill_manual(values = historico) +
  geom_text(aes(label = paste("$",round(Valor, 2))), size = 5.5,vjust = -0.5)
}

#PUXANDO OS COEFICIENTES DA FUNÇÃO
lm(BillingCloudCost$Valor~BillingCloudCost$IdLeitura)

#CALCULO P/ O MÊS DE NOVEMBRO
{
  nov_x <- 11
  nov_a <- 0.4727
  nov_b <- 63
  nov_y <- round(nov_a*nov_x+nov_b, 2)
  nov_y
}

#INSERINDO NOVA LINHA NA COLUNA
{
  BillingCloudCost[nov_x,] <- data.frame(IdLeitura = nov_x, Mês = "Novembro", Valor = nov_y, stringsAsFactors = FALSE)
  BillingCloudCost
}

#PLOTANDO O BARPLOT COM O FORECAST DE NOVEMBRO
{NOV_COLS <- c("#2d86e0","#2d86e0","#2d86e0","#2d86e0","#2d86e0","#2d86e0",
           "#2d86e0","#2d86e0","#2d86e0","#2d86e0","#51ac55" )
  ggplot(BillingCloudCost, aes(x = fct_reorder(Mês,IdLeitura), y = Valor, fill = NOV_COLS , label = Mês)) +
    geom_bar(stat = "identity") +
    guides(fill = FALSE) +
    xlab(NULL) +
    ylab(NULL) +
    theme_calc() +
    theme(axis.text.x = element_text(size = 13)) +
    scale_fill_manual(values = c("#2d86e0","#51ac55")) +
    geom_text(aes(label = paste("$",round(Valor, 2))), size = 5.5,vjust = -0.5)
  
}

#DISTRIVUIÇÃO DE CADA VALOR RESPECTIVO DE CADA SERVISO DA AWS
{
  EC2 <- round((35.86*100)/ 57) / 100
  EBS <- round((12*100)/57) / 100
  S3 <- round((9*100)/57) / 100
  print(EC2)
  print(EBS)
  print(S3)
}  

#DISTRIBUIÇÃO DESSE VALOR NO MêS DE NOVEMBRO
{
  NOV_Gastos <- data.frame (
    IdLeitura = c(1:3),
    servico = c("EC2","EBS", "S3"), 
    gasto = c(round(nov_y * EC2,2) ,round(nov_y * EBS,2), round(nov_y * S3,2))
  )
  NOV_Gastos
}  
{  
  NOV_Gastos$fraction <- NOV_Gastos$gasto / sum(NOV_Gastos$gasto)
  NOV_Gastos$ymax <- cumsum(NOV_Gastos$fraction)
  NOV_Gastos$ymin <- c(0, head(NOV_Gastos$ymax, n=-1))
  NOV_Gastos$labelPosition <- (NOV_Gastos$ymax + NOV_Gastos$ymin) / 2
  NOV_Gastos$label <-  paste0( "$", round(NOV_Gastos$gasto,2))
}
{
  ggplot(NOV_Gastos, aes(ymax = ymax, ymin = ymin, xmax = 4, xmin = 3, fill = reorder(servico, IdLeitura))) +
    geom_rect() +
    geom_text(x = 3.5, aes(y = labelPosition, label = label), size = 6) +
    scale_fill_manual(values = c("#2d86e0","#51ac55","#dea638")) +
    guides(fill = guide_legend(title = NULL)) +
    theme() +
    coord_polar(theta = "y") +
    xlim(c(1, 4)) +
    theme_void() +
    labs(title = paste("$",sum(NOV_Gastos$gasto))) +
    theme(plot.title = element_text(hjust = 0.5, vjust = -26.5, size = 40))
    #theme(legend.position = "none")
}


#---------------------------- CALCULO P/ O MÊS DE DEZEMBRO -----------------------------
#PUXANDO OS COEFICIENTES DA FUNÇÃO
lm(BillingCloudCost$Valor~BillingCloudCost$IdLeitura)

{
  dez_x <- 12
  dez_a <- 0.4727
  dez_b <- 63
  dez_y <- round(dez_a*dez_x+dez_b,2)
  dez_y
}

#INSERINDO NOVA LINHA NA COLUNA
{
  BillingCloudCost[dez_x,] <- data.frame(IdLeitura = dez_x, Mês = "Dezembro", Valor = dez_y, stringsAsFactors = FALSE)
  BillingCloudCost
}

#PLOTANDO O BARPLOT COM O FORECAST DE NOVEMBRO e DEZEMBRO
{DEZ_COLS <- c("#2d86e0","#2d86e0","#2d86e0","#2d86e0","#2d86e0","#2d86e0",
               "#2d86e0","#2d86e0","#2d86e0","#2d86e0","#51ac55","#51ac55" )
  ggplot(BillingCloudCost, aes(x = fct_reorder(Mês,IdLeitura), y = Valor, fill = DEZ_COLS , label = Mês)) +
    geom_bar(stat = "identity") +
    guides(fill = FALSE) +
    xlab(NULL) +
    ylab(NULL) +
    theme_calc() +
    theme(axis.text.x = element_text(size = 13)) +
    scale_fill_manual(values = c("#2d86e0","#51ac55")) +
    geom_text(aes(label = paste("$",round(Valor, 2))), size = 5.5,vjust = -0.5) 
  
}

#DISTRIBUIÇÃO DESSE VALOR
{
  DEZ_Gastos <- data.frame (
    IdLeitura = c(1:3),
    servico = c("EC2","EBS", "S3"), 
    gasto = c(round(dez_y * EC2,2) ,round(dez_y * EBS,2), round(dez_y * S3,2))
  )
  DEZ_Gastos
}  
{  
  DEZ_Gastos$fraction <- DEZ_Gastos$gasto / sum(DEZ_Gastos$gasto)
  DEZ_Gastos$ymax <- cumsum(DEZ_Gastos$fraction)
  DEZ_Gastos$ymin <- c(0, head(DEZ_Gastos$ymax, n=-1))
  DEZ_Gastos$labelPosition <- (DEZ_Gastos$ymax + DEZ_Gastos$ymin) / 2
  DEZ_Gastos$label <-  paste0( "$", round(DEZ_Gastos$gasto,2))
}
{
  ggplot(DEZ_Gastos, aes(ymax = ymax, ymin = ymin, xmax = 4, xmin = 3, fill = reorder(servico, IdLeitura))) +
    geom_rect() +
    geom_text(x = 3.5, aes(y = labelPosition, label = label), size = 6) +
    scale_fill_manual(values = c("#2d86e0","#51ac55","#dea638")) +
    guides(fill = guide_legend(title = NULL)) +
    theme() +
    coord_polar(theta = "y") +
    xlim(c(1, 4)) +
    theme_void() +
    labs(title = paste("$",sum(DEZ_Gastos$gasto))) +
    theme(plot.title = element_text(hjust = 0.5, vjust = -26.5, size = 40))
  #theme(legend.position = "none")
}

