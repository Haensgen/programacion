#1
library(readxl)
 elecciones <- read_excel("Elecciones_Alcaldes_2004_al_20122 (3).xlsx")

#A:
 elecciones <- elecciones[,-c(2,3)]  # elecciones[filas,columnas]
 
#B:
 b <- elecciones[elecciones[,"Electo"]=="SI",     ]
 
#C:
 c <- elecciones[elecciones[,"Electo"]=="NO" & elecciones[,"Votos"]>10000 , c("Candidato (a)","Votos","Comuna","Partido")]
 
#D:
 d <- elecciones[elecciones[,1]== "VOTOS NULOS" | elecciones[,1]== "VOTOS EN BLANCO", c(1,2)]
 
 
#Pregunta 2:

 areatriangulo <- function(h,b){ 
   respuesta <- (h*b)/2
   respuesta
 }
 
#Pregunta 3:
 promedio <- function(x){
   sum(x)/length(x)
 }
 
#Pregunta 4:
 paridad <- function(x){
   if(x%%2==0)
   {print("es par")}
   else 
   {print("es impar")}
 }
 
#Pregunta 5:
 #forma 1:
 numero <- function(x){
   ifelse(x<10,"numero chico", ifelse(x<100,"numero maomeno",ifelse(x<1000,"numero grande","numero brigido")))
 }
 
 #Forma 2:
 numero <- function(x){
   if(x<10){print("numero chico")}
   else if(x<100){print("numero maomeno")}
   else if(x<1000){print("numero grande")}
   else{print("numero brigido")}
 }
 