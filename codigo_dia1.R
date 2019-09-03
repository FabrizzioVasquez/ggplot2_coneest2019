library(ggplot2)

mtcars

head(mtcars)
str(mtcars)

plot(mtcars$wt,mtcars$mpg)

ggplot(mtcars,aes(x=wt,y=mpg))+
  geom_point()+
  geom_smooth()

#Histograma

hist(mtcars$mpg)

ggplot(mtcars,aes(x=mpg))+
  geom_histogram(bins=10)

#Error
ggplot(mtcars,aes(x=mpg))+
  geom_histogram(binwidth=10)

#Boxplot o diagrama de cajas

boxplot(mtcars$mpg~mtcars$cyl)
#Alt+123
#alt gr+tecla de +(costado de enter)

ggplot(mtcars,aes(x=factor(cyl),y=mpg))+
  geom_boxplot()

#Curvas
#altgr+ tecla a la derecha de ñ
# Graficar la funcion x^2+5

curve(x^2+5,from=-2,to=2)
#from=desde, to=hasta

mifuncion=function(x){
  x^2+5
}

ggplot(data.frame(x=seq(-2,2,length.out = 200)),
       aes(x=x))+
  stat_function(fun=mifuncion,geom="line")

#Graficos de barras o bar plot

head(diamonds)

barplot(table(diamonds$cut))

ggplot(diamonds,aes(x=cut))+
  geom_bar() #Geometria para g. barras

#Grafico de linea
tabla=data.frame(tiempo=1:100,
                 precio=rnorm(n = 100,mean = 52,sd=9))

plot(tabla$tiempo,tabla$precio,type="l")

ggplot(tabla,aes(x=tiempo,y=precio))+
  geom_line()

ggplot(tabla,aes(x=tiempo,y=precio))+
  geom_line()+
  labs(x="Numero de mes",y="Precio en soles",title = "Evolucion del precio del pescado, Peru ")

ggplot(tabla,aes(x=tiempo,y=precio))+
  geom_line(color="sienna")+
  geom_point(aes(y=precio),color="red")+
  labs(x="Numero de mes",y="Precio en soles",title = "Evolucion del precio del pescado, Peru ")

#Valor medio
ggplot(tabla,aes(x=tiempo,y=precio))+
  geom_line(color="sienna")+
  geom_point(aes(y=precio),color="red")+
  geom_hline(yintercept = mean(tabla$precio),linetype="dashed",size=1)+
  labs(x="Numero de mes",y="Precio en soles",title = "Evolucion del precio del pescado, Peru ")


