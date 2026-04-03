#Fazendo a leitura do banco de dados:
dados <- read.csv("imoveis.csv", header=TRUE, sep=";")
attach(dados)

#Conectando a conta GitHub:
usethis::use_git_config(
  user.name = "arthurvm-uff",
  user.email = "arthurvm@id.uff.br"
)