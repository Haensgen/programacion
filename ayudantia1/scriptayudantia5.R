#Pregunta 1
cuantasletras <- function(a){
  nchar(a)
}

#pregunta 2
areatriangulo <- function(h,b){
  respuesta <- (h*b)/2
  respuesta
}

#pregunta 3
promedio <- function(x){
  sum(x)/length(x)
}

#pregunta 4
midpoint <- function(x,y){
  a <- (x+y)/2
  paste("el punto medio entre",x,"y",y,"es",a)
}

#pregunta 5
paridad <- function(x){
  if(x%%2==0){print("es par")}
  else{print("es impar")}
}

#pregunta 6
mayor <- function(x,y){
  if(x>y){paste(x,"es mayor que",y)}
  else if(y>x){paste(y,"es mayor que",x)}
  else{paste("ambos valores son iguales")}
}

#pregunta 7
contrasena <- function(){
  clave <- readline(prompt="Ingrese contrasena:")
  if(clave!="programacion.2021"){paste("Acceso Denegado")}
  else {paste("Acceso Permitido")}
}

#Parte 2:
contrasena1 <- function(){
  clave <- readline(prompt="Ingrese contrasena:")
  if(clave!="programacion.2021"){print(paste("Acceso Denegado"))
    contrasena1()}
  else {paste("Acceso Permitido")}
}

#pregunta 8
#forma 1
numero <- function(x){
  ifelse(x<10,"numero chico",ifelse(x<100,"numero maomeno",ifelse(x<1000,"numero grande","numero brigido")))
} #ifelse= =si() excel

#forma 2
numero <- function(x){
  if(x<10){print("numero chico")}
  else if(x<100){print("numero maomeno")}
  else if (x<1000){print("numero grande")}
  else {"numero brigido"}
}

