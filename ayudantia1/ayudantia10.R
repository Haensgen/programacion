library(tidyverse)
wbData3 <- readRDS("~/proyectos r/Ayudantías R/wbData3.rds")

# Pregunta 1
wbData3 %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc, y=lifeExpectancy))+
  geom_point()+
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000))+
  labs(title="expecativa de vida al nacer vs PIB per capita",
       subtitle="2015",
       x="PIB per capita (Miles de dolares)",
       y="expectativa de vida al nacer (años)")+
  geom_smooth()

######

wbData3 %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc, y=lifeExpectancy))+
  geom_point()+
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000))+
  labs(title="expecativa de vida al nacer vs PIB per capita",
       subtitle="2015",
       x="PIB per capita (Miles de dolares)",
       y="expectativa de vida al nacer (años)")+
  geom_smooth(method= lm)

#########

wbData3 %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc, y=lifeExpectancy, col=region))+
  geom_point()+
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000))+
  labs(title="expecativa de vida al nacer vs PIB per capita",
       subtitle="2015",
       x="PIB per capita (Miles de dolares)",
       y="expectativa de vida al nacer (años)")+
  facet_grid( .~region )+
  geom_smooth()

#########
wbData3 %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc, y=lifeExpectancy, col=region))+
  geom_point()+
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000))+
  labs(title="expecativa de vida al nacer vs PIB per capita",
       subtitle="2015",
       x="PIB per capita (Miles de dolares)",
       y="expectativa de vida al nacer (años)")+
  facet_grid( .~region )+
  geom_smooth(method= lm)


#Pregunta 2
wbData3 %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc, y=lifeExpectancy))+
  geom_point()+
  scale_x_log10(breaks=c(1000,10000,10000),
                labels=c(1,10,100))+
  labs(title="expecativa de vida al nacer vs PIB per capita",
       subtitle="2015",
       x="PIB per capita (Miles de dolares)",
       y="expectativa de vida al nacer (años)")+
  geom_smooth()

#Pregunta 3
tres <- function(x){x^3+2*x}

ggplot(data.frame(x=c(-10,10)), aes(x))+
  stat_function(fun=tres, geom="line", size=1.2)

#forma 2
ggplot(data.frame(x=c(-20,20)), aes(x))+
  stat_function(fun=function(x){x^3+2*x}, geom="line", size=1.2)

#forma 3
x=seq(-10,10,length=1000)
y=x^3+2*x
data=data.frame(x,y)
data %>% ggplot(aes(x,y))+
  geom_line(size=1.2)

#funcion 2
ggplot(data.frame(x=c(-10,10)), aes(x))+
  stat_function(fun=function(x){(x^2+x)*cos(x)}, geom="line", size=1.2)

#funcion 3
ggplot(data.frame(x=c(-10,10)), aes(x))+
  stat_function(fun=function(x){x^2+2*x-1}, geom="line", size=1.2)


# THE R GRAPH GALLERY
# desde acá, queda fuera de clases, usaremos plotly, libreria echa en java que nos permitira interactuar con graficos.
library(plotly)

#Pregunta 4

wbData3 %>% filter(year==2015) %>% 
  ggplot(aes(x=gdppc, y=lifeExpectancy, col=region, group=country))+
  geom_point(aes(size=population, alpha=0.7))+
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000))+
  scale_size_area(name="", guide=FALSE, max_size=12)+
  scale_color_brewer(name=NULL, palette="Set1")+
  labs(title="expecativa de vida al nacer vs PIB per capita",
       subtitle="2015",
       x="PIB per capita (Miles de dolares)",
       y="expectativa de vida al nacer (años)")-> p1

ggplotly(p1, height = 500, width=890)

#pregunta 5

#el error era que dentro de las aes del grafico, se debia incluir el frame=year
wbData3 %>% filter(year>=1990) %>% 
  ggplot(aes(x=gdppc, y=lifeExpectancy, frame=year, col=region, group=country))+
  geom_point(aes(size=population), alpha=0.7)+
  scale_x_continuous(labels=function(x){x/1000},
                     breaks=c(0,25000,50000,75000,100000,125000))+
  scale_size_area(name="", max_size=12)+
  scale_color_brewer(name="", palette="Set1")+
  labs(title="expecativa de vida al nacer vs PIB per capita",
       x="PIB per capita (Miles de dolares)",
       y="expectativa de vida al nacer (años)")+
  theme_bw(base_size=13)-> p2


ggplotly(p2, height = 500, width=890) %>% 
  animation_opts(frame = 300, easing = "linear", redraw = FALSE)



