# tipos/clases de datos:
# 
#   character: "hola", "hola como estas", "4"
#   numeric: 123, 3.1415, Inf, NaN
#   integer: 4 #Esto es un comentario
#   factor: factor(hombre); factor(mujer);factor(no binario)
#   logical: TRUE, FALSE, NA
# 
# Operadores arimeticos:
# 
#   + : suma
#   - : resta
#   * : multiplicacion
#   / : division
#   ^ o ** : potencias
#   %%: resto de una division
#   %/%: parte entera de una division
# 
#   PEMDAS(orden operaciones): 1- Parentesis; 2- exponenciacion/raices; 3- multiplicacion y division; 4-adicion y sustraccion
# 
# Operadores logicos:
#   < : menor
#   > : mayor
#   <= : menor o igual
#   >= : mayor o igual
#   == : igual a
#   != : distinto a
#   !x : negacion de x
#   | : o
#   & : Y
#  con ctrl+shift+c comentamos/descomentamos

#2-
(100000/200000)/(1-(3223/4585))*((1288)^(1/6)/300)+2^12-(300/681)/(1-(1/(1-2))) #se desarrollo la pregunta 2 de la ayudantia

#3-
  #A:
  #forma 1:
 a = 1:10

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
 
 #forma 2:
 z <- rep(c("A","B"),c(5,2))
 
 #F:
 #forma1:
 f <- paste("year", 2015:2018)

 #forma2:
 f <- paste0("year ",seq(2015,2018,1) )
 
 
 #4-
 
 x = c('Pedro'=17, 'Ana'=NA, 'Maya'=23, 'Max'=NA, 'Paula'=20)
 
 #a:
 y <- x[c(-2,-4)]
 y
 
 #forma 2:
 y <- na.omit(x)
 
 #forma 3:
 !is.na(x)
 y <- x[!is.na(x)]
 
 #b:
 z <- x[c(1,2)]
 
 #forma2:
 z <- x[c("Pedro","Ana")]
 
 #c:
 mean(x) #no funciona por los NA
 mean(y)
 
 #D:
 #forma1:
 sum(y<=20)
 
 #forma1:
 sum(x<=20, na.rm= TRUE)
 
 #E:
 sum(y)
#forma2:
 sum(x, na.rm=TRUE)
 
 #5:
 
 library(readxl)
 Elecciones <- read_excel("~/proyectos r/Ayudantías R/Elecciones_Alcaldes_2004_al_20122.xlsx")
 View(Elecciones)
 