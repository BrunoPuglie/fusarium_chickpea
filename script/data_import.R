# save(fusarium_garbanzo,file = "./data/fusarium_garbanzo.RData")
# load(file = "./data/fusarium_garbanzo.RData")

library(readxl)
Ama_garb_18 <- read_excel("data/Muestreo_18.xlsx")
str(Ama_garb_18) 
#Para ver que columnas están en numerico 
# y cuales en caracter

Ama_garb_19 <- read_excel("data/Muestreo_19.xlsx")
str(Ama_garb_19)

library(tidyverse)
Ama_garb_18 %>%
#  mutate_at(vars(Mosaico, Clorosis, Necrosis, RHIZOCTONIA, 
#                 ALTERNARIA),as.factor) %>%
  mutate_at(vars(Lote, Mosaico, Clorosis, Necrosis, RHIZOCTONIA, 
                 ALTERNARIA),as.numeric)-> Ama_garb_18_An 
                  #Planilla analizable
Ama_garb_19 %>%
  #  mutate_at(vars(Mosaico, Clorosis, Necrosis, RHIZOCTONIA, 
  #                 ALTERNARIA),as.factor) %>%
  mutate_at(vars(Lote, Mosaico, Clorosis, Necrosis)
            ,as.numeric)-> Ama_garb_19_An 
#Planilla analizable

library(ggplot2)
library(cowplot)