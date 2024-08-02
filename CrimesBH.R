## Carregamento de pacotes
library(dplyr)
library(tidyverse)
library(readr)

# Carremento do dados
dados <-
  readr::read_delim(file = "C:/Users/gp125/OneDrive/Documentos/Data Science/crimes.csv")

##Descriviva
summary(dados)

### Filtrar

dados_filtrados = dados %>% 
  filter(Município == "BELO HORIZONTE")

## Criação do gráfico

ggplot(dados_filtrados, aes(x=Ano, y = Registros))+
  geom_col()+
  facet_wrap(~Natureza)+
  labs(title = "Crimes violentos",
       subtitle = "Belo Horizonte - 2012-2017",
       caption = "Fonte: SEJUSP")
