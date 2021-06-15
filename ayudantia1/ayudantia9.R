library(readr)
library(tidyverse)

wbData <- readRDS("wbData3.rds")

#Pregunta 1

wbData %>% filter(country %in% c("Chile","Japan","United States")) %>% 
  ggplot(aes(x=year, y=lifeExpectancy)) + 
  geom_line(aes(col=country), size=1.3) +
  scale_x_continuous(breaks=seq(1960,2016,10)) +
  labs(title="Expectativa de vida al nacer",
       subtitle = "1960-2016",
       x="años",
       y=" Expectativa de vida al nacer (años)") +
  scale_color_discrete(name=NULL, labels=c("Chile","Japon","Estados Unidos"))

# existe paquete ggthemes
library(ggthemes)

#Pregunta 2

wbData %>% filter(year==2015) %>% 
  ggplot(aes(x=region, y=lifeExpectancy, fill=region)) +
  geom_boxplot(show.legend = FALSE) +
  labs(title="Expectativa de vida al nacer por regiones del mundo",
       subtitle="2015",
       x=NULL,
       y="Expectativa de vida al nacer(años)")+
  coord_flip() +
  theme_wsj()

#Pregunta 3

wbData %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc)) +
  geom_histogram(bins=50, color="black", fill="#6b092b") +
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000)) +
  labs(title="Pib per capita al rededor del mundo",
       subtitle="2015",
       x="Pib per capita (miles de dolares)",
       y="frecuencia")

#Pregunta 4

wbData %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc)) +
  stat_ecdf(col="#6b092b")+
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000),
                     expand=c(0,0)) +
  labs(title="Distribucion acumulada PIB per capita mundial",
       subtitle="2015",
       x="PIB per capita (Miles de dolares)",
       y="proporción paises")

#Pregunta 5

wbData %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc, y=lifeExpectancy, col=region)) +
  geom_point()+
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000)) +
  labs(title="expectativa de vida al nacer vs PIB per capita",
       subtitle="2015",
       x="PIB per capita (Miles de dolares)",
       y= "expectativa de vida al nacer (Años)")