library(dplyr)
library(readxl)
elecciones <- read_excel("~/proyectos r/Ayudantías R/Elecciones_Alcaldes_2004_al_20122.xlsx")

# pipe: %>% se hace rapido con ctrl+shift+m
#a
elecciones <- elecciones %>% select(-F.Eleccion,-Periodo)

#b
b <- elecciones %>% filter(Electo=="SI")

#c
c <- elecciones %>% filter(Electo=="NO",Votos>10000) %>% select('Candidato (a)',Votos,Comuna,Partido)

#d
d <- elecciones %>% select('Candidato (a)',Votos) %>% 
  filter(`Candidato (a)`=="VOTOS EN BLANCO"| `Candidato (a)`=="VOTOS NULOS") #ojo las comillas de `Candidato (a)` para que no lo reconozca como texto 

############# Parte 2 #################

#a
elecciones %>% filter(Votos>10000) %>% summarise(cantidad=n())

#b
elecciones %>% group_by(Comuna) %>% filter(Votos>1000) %>% summarise(cantidad=n()) %>% 
  arrange(desc(cantidad)) %>% head(1)

#c
#los con mas votos
elecciones %>% arrange(desc(Votos)) %>% select('Candidato (a)', Votos) %>% head(15)

#los con menos votos
elecciones %>% arrange(Votos) %>% select('Candidato (a)', Votos) %>% head(15)

#d
dd <- elecciones %>% mutate(masdemil=ifelse(Votos>1000,"SI","NO"))


