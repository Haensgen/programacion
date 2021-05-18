# dos formas de hacer loop, for(){} y while(){}

#Pregunta 1
for(i in 1:10){
  #print(paste("iteracion", i))
  cat("iteracion",i,"\n")
}

#forma 2:

i <- 1
while(i<=10){
  print(paste("iteracion", i))
  i <- i+1
}

#Pregunta 2:

vector <- letters[1:5]

for(i in vector){
  #cat("iteracion",i,"\n")
  print(paste("iteracion", i)) 
}

#forma 2:

i <- 1
while(i<=length(vector)){
  cat("iteracion",vector[i],"\n")
  i <- i+1
}

#Pregunta 3:
for(i in 1:5){
  cat(i-1,"+",i,"=",(2*i)-1,"\n")
}

#Pregunta 4:
for(i in 1:10){
  if(i<=6){print(paste("el cuadrado del numero", i, "es:",i^2))}
  else {print("0")}
}

#Pregunta 5:
for(i in 1:15){
  if(i%%6==0){print(paste(i,"es divisible por 6"))}
  else{print(paste(i, "no es divisible por 6"))}
}

#pregunta 6:
df <- data.frame(
  x = 1:5,
  y = c(2,0,1,4,NA)
)

for(i in 1:length(df)){
  promedio=mean(df[,i],na.rm=TRUE)
  print(paste(promedio, "es el promedio de la columna",i))
}

#Pregunta 7:
A=rbind(c(2,4,0), c(-1,9,6), c(0,0,1))

for(i in 1:nrow(A)){
  for(n in 1:ncol(A)){
    print(paste("El elemento de la fila", i, "y columna", n, "de la matriz A es", A[i,n]))
  }
}