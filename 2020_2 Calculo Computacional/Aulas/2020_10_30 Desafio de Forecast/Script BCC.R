#IMPORTE O TABELA PRIMEIRO

#PLOTANDO O BARPLOT:
barplot(BillingCloudCost$Valor~BillingCloudCost$IdLeitura, main= "Desafio Billing Cloud Cost",
ylab = "Valores($)", xlab = "Meses", names.arg = c(BillingCloudCost$Mês), col = c("#2195ec","#2195ec","#2195ec","#2195ec",
"#2195ec","#2195ec","#2195ec","#2195ec","#2195ec", "#2195ec"))

#PUXANDO OS COEFICIENTES DA FUNÇÃO
lm(BillingCloudCost$Valor~BillingCloudCost$IdLeitura)

#CALCULO P/ O MÊS DE NOVEMBRO
{
x <- 11
a <- 0.4727
b <- 63
y <- floor(a*x+b)
y
}

#INSERINDO NOVA LINHA NA COLUNA
{
BillingCloudCost[11,] <- data.frame(IdLeitura = 11, Mês = "Novembro", Valor = y, stringsAsFactors = FALSE)
BillingCloudCost
}

#PLOTANDO O BARPLOT COM O FORECAST DE NOVEMBRO
{
barplot(BillingCloudCost$Valor~BillingCloudCost$Mês,beside=TRUE, main= "Desafio Billing Cloud Cost",
ylab = "Valores($)", xlab = "Meses",names.arg = c(BillingCloudCost$Mês), col =c("#2195ec","#2195ec","#2195ec","#2195ec",
"#2195ec","#2195ec","#2195ec","#2195ec","#2195ec","#2195ec", "#00FF7F"))
legend(x=11.5, y=100, xpd = TRUE, legend=c("Histórico", "Forecast"),
fill=c("#2195ec", "#00FF7F"), bty="n")
}

#DISTRIBUIÇÃO DESSE VALOR
{
EC2 <- ceiling((35.86*100)/ 57) / 100
EBS <- floor((12*100)/57) / 100
S3 <- ceiling((9*100)/57) / 100

NOV_GASTOS <- c((y * EC2), (y * EBS), (y * S3))

cores <- c("#2195ec","#00FF7F","#FFD700")

pie(NOV_GASTOS, main = "Gastos em Novembro", labels = NOV_GASTOS, col = cores)
legend("topright", fill = cores, legend = c("EC2","EBS","S3"))
}
