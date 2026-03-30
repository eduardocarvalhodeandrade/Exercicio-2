library(ggplot2)
dados = read.csv("carros.csv", header=T, sep=",")
attach(dados)
#Médias

mean(consumo_km_l)
mean(peso_kg)

#Correlação

ggplot(data = dados, aes(x = dados$consumo_km_l, y = dados$peso_kg)) + geom_point() + geom_smooth(method = "lm", se = TRUE)


       