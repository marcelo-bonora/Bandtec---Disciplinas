#IMPORTE O TABELA PRIMEIRO

#PLOTANDO O BARPLOT:
barplot(BillingCloudCost$Valor~BillingCloudCost$IdLeitura, main= "Desafio Billing Cloud Cost",
ylab = "Valores($)", xlab = "Meses", names.arg = c(BillingCloudCost$Mês), col = c("#2195ec","#2195ec","#2195ec","#2195ec",
"#2195ec","#2195ec","#2195ec","#2195ec","#2195ec", "#2195ec"))

#PUXANDO OS COEFICIENTES DA FUNÇÃO
lm(BillingCloudCost$Valor~BillingCloudCost$IdLeitura)

#CALCULO P/ O MÊS DE NOVEMBRO
{
  x_nov <- 11
  a_nov <- 0.4727
  b_nov <- 63
  y_nov <- round(a_nov*x_nov+b_nov, 2)
  y_nov
}

#INSERINDO NOVA LINHA NA COLUNA
{
  BillingCloudCost[x_nov,] <- data.frame(IdLeitura = x_nov, Mês = "Novembro", Valor = y_nov, stringsAsFactors = FALSE)
  BillingCloudCost
}

#PLOTANDO O BARPLOT COM O FORECAST DE NOVEMBRO
{
  barplot(BillingCloudCost$Valor~BillingCloudCost$IdLeitura,beside=TRUE, main= "Desafio Billing Cloud Cost",
  ylab = "Valores($)", xlab = "Meses",names.arg = c(BillingCloudCost$Mês), col =c("#2195ec","#2195ec","#2195ec","#2195ec",
  "#2195ec","#2195ec","#2195ec","#2195ec","#2195ec","#2195ec", "#00FF7F"))
}

#DISTRIBUIÇÃO DESSE VALOR
{
  EC2 <- round((35.86*100)/ 57) / 100
  EBS <- round((12*100)/57) / 100
  S3 <- round((9*100)/57) / 100
  
  NOV_GASTOS <- c(round(y_nov * EC2,2) ,round(y_nov * EBS,2), round(y_nov * S3,2))
  NOV_LABELS <- c(paste("$",round(y_nov * EC2,2)), paste("$",round(y_nov * EBS,2)), paste("$",round(y_nov * S3,2)))
  cores <- c("#2195ec","#00FF7F","#FFD700")
  
  pie(NOV_GASTOS, NOV_LABELS, main = paste("Gastos em Novembro $",y_nov), col = cores)
  legend("topright", fill = cores, legend = c("EC2","EBS","S3"))
}


#---------------------------- CALCULO P/ O MÊS DE DEZEMBRO -----------------------------
#PUXANDO OS COEFICIENTES DA FUNÇÃO
lm(BillingCloudCost$Valor~BillingCloudCost$IdLeitura)

{
  x_dez <- 12
  a_dez <- 0.4727
  b_dez <- 63
  y_dez <- round(a_dez*x_dez+b_dez,2)
  y_dez
}

#INSERINDO NOVA LINHA NA COLUNA
{
  BillingCloudCost[x_dez,] <- data.frame(IdLeitura = x_dez, Mês = "Dezembro", Valor = y_dez, stringsAsFactors = FALSE)
  BillingCloudCost
}

#PLOTANDO O BARPLOT COM O FORECAST DE NOVEMBRO e DEZEMBRO
{
  barplot(BillingCloudCost$Valor~BillingCloudCost$IdLeitura,beside=TRUE, main= "Desafio Billing Cloud Cost",
  ylab = "Valores($)", xlab = "Meses",names.arg = c(BillingCloudCost$Mês), col =c("#2195ec","#2195ec","#2195ec","#2195ec",
  "#2195ec","#2195ec","#2195ec","#2195ec","#2195ec","#2195ec", "#00FF7F", "#00FF7F"))
}

#DISTRIBUIÇÃO DESSE VALOR
{
  EC2 <- round((35.86*100)/ 57) / 100
  EBS <- round((12*100)/57) / 100
  S3 <- round((9*100)/57) / 100
  
  DEZ_GASTOS <- c(round(y_dez * EC2,2), round(y_dez * EBS,2), round(y_dez * S3,2))
  DEZ_LABELS <- c(paste("$",round(y_dez * EC2,2)), paste("$",round(y_dez * EBS,2)), paste("$",round(y_dez * S3,2)))
  
  cores <- c("#2195ec","#00FF7F","#FFD700")
  
  pie(DEZ_GASTOS,DEZ_LABELS, main =  paste("Gastos em Dezembro $",y_dez), col = cores)
  legend("topright", fill = cores, legend = c("EC2","EBS","S3"))
}
