#1
library(readxl)
elecciones <- read_excel("~/proyectos r/Ayudantías R/Elecciones_Alcaldes_2004_al_20122.xlsx")

#2
unique(elecciones$Partido)

#3
partid <- function(partido){
  a <- na.omit(elecciones[elecciones$Partido==partido,c(1,6,10)]) #limpia la base de datos y la acota al partido
  b <- a[order(a$Votos),] #ordena de menor a mayor la votacion
  c <- tail(b,1) #la persona con mas votos del partido
  d <- head(b,1) #la persona con menos votos del partido
  print(paste("el candidato con mas votos del partido",
              partido, "es:",as.character(c$`Candidato (a)`),
               ",con", as.numeric(c$Votos), "votos"))
  print(paste("el candidato con menos votos del partido",
              partido, "es:",as.character(d$`Candidato (a)`),
              ",con", as.numeric(d$Votos), "votos"))
  print(paste("la votacion total del partido",
              partido, "es:",sum(b$Votos),"votos"))
  print(paste("la votacion promedio del partido",
              partido, "es:",mean(b$Votos),"votos"))
}

partid("UNION DEMOCRATA INDEPENDIENTE")
partid("DEMOCRATA CRISTIANO")
partid("SOCIALISTA DE CHILE")
partid("COMUNISTA DE CHILE")
partid("INDEPENDIENTE")

#4:

for(i in 1:13){
  a <- na.omit(elecciones[elecciones$`Id Reg.`==i,c(1,4,5,6)])
  b <- a[order(a$Votos),]
  c <- tail(b,1)
  print(paste("el candidato con mas votos de la region", as.character(c[,3]),
              ", es",as.character(c$`Candidato (a)`),"con",as.numeric(c$Votos),"votos"))
}

#para generar reporte ctrl+shift+k

