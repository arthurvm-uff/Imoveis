#Fazendo a leitura do banco de dados:
dados <- read.csv("imoveis.csv", header=TRUE, sep=";")
attach(dados)

#Conectando a conta GitHub:
usethis::use_git_config(
  user.name = "arthurvm-uff",
  user.email = "arthurvm@id.uff.br"
)

#Análise descritiva das variáveis:
summary(preco)
sd(preco)

summary(metragem)
sd(metragem)

summary(idade)
sd(idade)

summary(itens_embutidos)
sd(itens_embutidos)

summary(imposto_anual)
sd(imposto_anual)

#Histograma dos preços dos imóveis:
ggplot(dados, aes(x=preco)) +
  geom_histogram(fill="steelblue", color="white", bins = 20) +
  labs(
    title="Distribuição dos preços dos Imóveis",
    x="Preço(R$)",
    y="Frequência"
  )

#Gráfico de dispersão (Imposto x Metragem):
ggplot(dados, aes(x = metragem, y = imposto_anual)) +
  geom_point(alpha = 0.5, color = "darkorange") +
  geom_smooth(method = "lm", color = "black") +
  labs(
    title = "Relação entre Metragem e Imposto",
    x = "Metragem (m²)",
    y = "Imposto (R$)"
  )