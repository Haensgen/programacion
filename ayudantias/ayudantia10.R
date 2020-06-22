library(dplyr)

#a   # %>%  se hace con ctrl+shift+m
elecciones <- elecciones %>% select(-F.Eleccion,-Periodo)

#b
b <- elecciones %>% filter(Electo=="SI") 

#c
c <- elecciones  %>% filter(Electo=="NO", Votos>10000) %>% select(`Candidato (a)`,Votos,Comuna,Partido)

#d
d <- elecciones %>% filter(`Candidato (a)`=="VOTOS EN BLANCO" | `Candidato (a)`=="VOTOS NULOS") %>% select(`Candidato (a)`,Votos)

######################## PARTE 2 #######################################

#a
elecciones %>% filter(Votos>10000) %>% summarise(cantidad=n())

#b
elecciones %>% group_by(Comuna) %>% filter(Votos>1000) %>% summarise(cantidad=n()) %>% arrange(desc(cantidad)) %>% head(1)

#c
#los con mas
elecciones %>% arrange(Votos) %>% select(`Candidato (a)`,Votos) %>% tail(15)

elecciones %>% arrange(Votos) %>% select(`Candidato (a)`,Votos) %>% head(15)

#d
dd <- elecciones %>% mutate(masdemil=ifelse(Votos>1000,"SI","NO"))
