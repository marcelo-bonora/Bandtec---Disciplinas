install.packages("ggplot2")
install.packages("ggthemes")
install.packages("dplyr")
library(ggplot2)
library(forcats)
library(ggthemes)
library(dplyr)
#----------------------------- JUROS SIMPLES -------------------------------------------
# J= C*i*t
# M = C*J

# C = Valor de c/ mês
# i = 0,15 => 15%
# t = os 12 mesês

#i <- valor * 0,15
#t <- t + i

#Calculando o juros simples de cada mês e inserindo na tabela
t <- 0
for (i in BillingCloudCost$IdLeitura) {
  c <- round(BillingCloudCost$Valor[i] * 0.15, 2) 
  t <- round(c + t, 2)
  print(paste("Juros individual:",c,"Juros total:", t))
  BillingCloudCost$JurosSimples[i] <- c(JurosSimples = t, stringsAsFactors = FALSE)
}

#Gráfico simulando o juros simples de cada mês
lm(BillingCloudCost$JurosSimples~BillingCloudCost$IdLeitura)
ggplot(JurosSimples, aes(x = fct_reorder(Mes,IdLeitura), y = Valor , fill = reorder(Tipo,Valor), label = Mes)) +
  scale_fill_discrete(name = "TIpo", label= "Tipo") +
  guides(fill = guide_legend(title = NULL)) +
  xlab(NULL) +
  ylab(NULL) +
  theme_calc() +
  geom_bar(position = "stack", stat = "identity") +
  scale_fill_manual(values = c("#e84e4e","#2d86e0","#51ac55")) +
  geom_text(aes(label = paste("$",round(Valor, 2))), size = 4.5, position = position_stack(vjust = 0.5)) +
  geom_abline (intercept = -1.675, slope = 10.039 )


#----------------------------- JUROS COMPOSTO ------------------------------------------
# M = C*(1+i%)**n
# M = monstagem final
# C = Capital
# i = taxa de juros
# n = meses de incidencia juros sobre juros
# ------------------------------------------
# C = Valor
# i = 15% = 0,15
# M = Valor*(1+15)**Mês

#Calculando o juros compostos de cada mês e inserindo na tabela
T <- 0
for (i in BillingCloudCost$IdLeitura) {
  C <- round(BillingCloudCost$Valor[i]*(1+0.15)**i, 2)
  J <- C - BillingCloudCost$Valor[i]
  BillingCloudCost$JurosCompostos[i] <- c(jurosCompostoss = J, stringsAsFactors = FALSE)
}

#Gráfico simulando o juros simples de cada mês
lm(BillingCloudCost$JurosCompostos~BillingCloudCost$IdLeitura)
ggplot(JurosCompostos, aes(x = reorder(Mes,IdLeitura), y = Valor, fill = fct_reorder(Tipo,Valor, .fun = 'min'), label = Mes)) +
  guides(fill = guide_legend(title = NULL)) +
  xlab(NULL) +
  ylab(NULL) +
  theme_calc() +
  geom_bar(position = "stack", stat = "identity") +
  scale_fill_manual(values = c("#e84e4e","#2d86e0","#51ac55")) +
  geom_text(aes(label = paste("$",round(Valor, 2))), size = 4.5, position = position_stack(vjust = 0.5)) +
  geom_abline (intercept = -43.59 , slope = 25.06 )


