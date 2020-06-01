# tipos/clases de datos:
# 
#   character = "hola", "hola como estas", "4"
#   numeric = 123, 3.1415, Inf, NaN
#   integer = 4 #esto es un comentario
#   factor = factor(hombre); factor(mujer); factor(no binario)
#   logical = TRUE; FALSE; NA
# 
# 
#   Operadores Aritmeticos:
#     + = suma
#   - = resta
#   * = multiplicacion
#   / = Division
#   ^ o **= potencias
#   %% = Resto de una division
#   %/% = parte entera de una division
# 
#   PEMDAS(orden operaciones): 1- parentesis; 2- exponenciacion/raices; 3- multiplicacion/division; 4- Suma/resta
# 
#   Operadores logicos:
#     < = menor a
#   > = mayor a
#   <= = menor o igual
#   >= = mayor o igual
#   == : igual a
#   != : Distinto a
#   !x : No es x
#   | : o
#   & : y

  
#2-
  (100000/200000)/(1-(3223/4585))*((1288^(1/6))/300)+2^12-(300/681)/(1-(1/(1-2))) #se desarrollo la pregunta 2 de la ayudantia


#3- 
  #A:
  #forma1 (no recomendada):
  a <- 1:10
  
  #forma 2:
  a <- seq(1,10,1)
  
  #B:
  b <- seq(1,10,2)
  
  #C:
  c <- seq(1,5,length=9)
  
  #D:
  d <- numeric(5)
  names(d) <- c("A","B","C","D","E")
  
  #E:
  #forma 1:
  z <- c(rep("A",5), rep("B",2))
  z
  
  #forma 2:
  z <- rep(c("A","B"), c(5,2))
  z
  
  #F:
  #forma1:
  f <- paste0("year_",2015:2018)
  f
  
  #forma2:
  f <- paste0("year_",seq(2015,2018,1))
  f

#4- 
  x = c("Pedro"=17, "Ana"=NA, "Maya"=23, "Max"=NA, "Paula"=20)
  
  #A:
  #forma1:
  y <- x[-c(2,4)]
  y
  
  #forma1 alternativa:
  y <- x[c(-2,-4)]
  y
  
  #forma 2:
  y <- na.omit(x)
  y
  
  #forma 3:
  !is.na(x)
  y <- x[!is.na(x)]
  y
  
  #B:
  #forma1:
  z <- x[c("Pedro","Ana")]
  z
  
  #forma2:
  z <- x[c(1,2)]
  z
  
  #C:
  mean(x) #esto no funciona pq en vector x hay NA
  mean(y) #esto si funciona, pq vector y elimina los NA
  
  mean(x, na.rm=TRUE)
  #si no existiera funcion mean, habria que programar la funcion... osea:
  sum(x[!is.na(x)])/length(x[!is.na(x)])
  
  #D: 
  #forma 1:
  sum(y<=20)
  
  #Forma 2, excluyendo NA, notar que es lo mismo que sum(y<=20):
  sum(x<=20,na.rm=TRUE) #notar que termina siendo suma de unos y ceros y promedio
  
  #E:
  #forma1:
  sum(y)
  
  is.na(x)
  !is.na(x) #da vuelta valores anteriores
  
  #forma2:
  sum(x[!is.na(x)], na.rm=TRUE)
  
  
  library(readxl)
  Elecciones <- read_excel("Elecciones_Alcaldes_2004_al_20122 (1).xlsx")
  View(Elecciones_Alcaldes_2004_al_20122_1_)