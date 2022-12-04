library(readxl)
library(ggplot2)
library(plotly)
gapminder <- read_excel("C:/Users/Brahm/Downloads/gapminder.xlsx")
#part 1
plot1_1<-ggplot(gapminder,aes(year,lifeExp,color=continent))+
  geom_point()+ scale_x_log10()
plot1_2<-ggplot(gapminder,aes(year,lifeExp,shape=continent))+
  geom_point()+ scale_x_log10()
plot1_3<-ggplot(gapminder,aes(year,lifeExp,shape=continent,color=continent))+
  geom_point()+ scale_x_log10()
#part 2
plot2_1<-ggplot(gapminder,aes(gdpPercap,lifeExp,size=pop,color=continent))+
  geom_point()+ggtitle("GDP vs Life expectancy")
plot2_2<-ggplot(gapminder,aes(gdpPercap,lifeExp,size=pop,shape=continent,color=continent))+
  geom_point()+ggtitle("GDP vs Life expectancy")
plot2_2<-ggplotly(plot2_2)
data<-gapminder%>%filter(year=="2007")
plot2_3 <- ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent, text = paste("country:", country))) +
  geom_point(alpha = (1/3)) + scale_x_log10() +ggtitle("GDP vs Life expectancy")
plot2_3<-ggplotly(plot2_3)
#part3
plot3_1<-ggplot(gapminder,aes(gdpPercap,lifeExp))+
  geom_point(alpha = (1/3),aes(color=continent,size=pop, text = paste("country:", country)))+
  facet_grid(.~year)+ scale_x_log10()
plot3_1<-ggplotly(plot3_1)

