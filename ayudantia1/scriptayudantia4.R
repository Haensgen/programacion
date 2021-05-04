library(readxl)
elecciones <- read_excel("~/proyectos r/Ayudantías R/Elecciones_Alcaldes_2004_al_20122.xlsx")
View(elecciones)

#cran install.packages(""),  Stack-overflow

#A:
votos <- elecciones$Votos
mean(votos)
sum(votos)/length(votos)

#B:
candidato <- as.character(elecciones[1,]) #notar que todo queda como character... en caso de numeros nos podria interesar mas as.numeric(), para operar con los valores

#C:
elecciones <- rbind(elecciones,c("Juanito Perez",NA,NA,25,"titirilquen",3000,"Alhue","HOMBRE","NO","INDEPENDIENTE"))

#D:
elecciones$inutil <- elecciones$`Id Reg.`+elecciones$Votos 

#E:
elecciones <- elecciones[-c(1246)   ,-c(2,3,11)     ]

#recordar que tambien podemos borrar columnas
elecciones$inutil <- NULL

#F:
f <-  elecciones[elecciones[,"Electo"]=="SI",]

#forma 2:
f <-  elecciones[elecciones[,"Electo"]!="NO",]

#G:
g <- elecciones[elecciones[,"Electo"]=="NO" & elecciones[,"Votos"]>10000, c("Candidato (a)","Votos","Comuna", "Partido")]

#H:
h <- elecciones[elecciones[,1]=="VOTOS NULOS" | elecciones[,1]=="VOTOS EN BLANCO", c("Candidato (a)","Votos")]

#I:
i <- elecciones[elecciones[,"Comuna"]=="SANTIAGO" , c("Candidato (a)","Comuna","Votos","Sexo")]

