covid_Data = read_excel("C:/Users/M.Prem Swaroop/Desktop/DSV AA's/prem/Covid.xlsx")
covid_Data
library(ggplot2)
library(scales)
library(treemapify)
library(treemap)
library(dplyr)


ggplot(covid_Data,aes(x=State_UTs,y= Total_Cases),options(scipen=999)) + 
  geom_bar(color = "black",stat = "identity",fill = "indianred3")  +
  
  labs(y ="Total Cases" ,x ="State/UTs",title = "Total Cases in Indian States") +
  geom_text(aes(label = Total_Cases),vjust = -0.80,size = 4.5)+ 
  
  theme(axis.text.x = element_text(angle = 90,hjust = 1,size = 15),
        axis.text.y = element_text(size = 15),
        axis.ticks = element_line(size = 2,colour = "green"),
        axis.ticks.length = unit(.3,"cm"),
        axis.line = element_line(size=1,colour = "blue",linetype = 1),
        axis.title.x = element_text(size = 20,colour = "darkorange4"),
        axis.title.y = element_text(size = 20,colour = "darkorange4")) 


ggplot(covid_Data,aes(x=State_UTs,y= Active, group = 1)) + 
  geom_line(color="gray64",size = 1.5,linetype = 9)  +
  geom_point(size = 4,color = "darkviolet",pch = 17) +
  labs(y ="Active" ,x ="State/UTs",title = "Active cases in Indian States") +
  geom_text(aes(label = Active),vjust = -0.99,size = 4.5) +
  
  theme(axis.text.x = element_text(angle = 90,hjust = 1,size = 15),
        axis.text.y = element_text(size = 15),
        axis.ticks = element_line(size = 2,colour = "antiquewhite3"),
        axis.ticks.length = unit(.3,"cm"),
        axis.line = element_line(size=1,colour = "blue",linetype = 1),
        axis.title.x = element_text(size = 20,colour = "brown"),
        axis.title.y = element_text(size = 20,colour = "brown"))


ggplot(covid_Data,aes(x=State_UTs,y= Discharged, group = 1)) + 
  geom_point(size = 3,color = "firebrick2") +
  labs(y ="Discharged" ,x ="State/UTs",title = "Discharged Cases in Indian States") +
  geom_text(aes(label = Discharged),vjust = -0.80,size = 4.5) +
  
  theme(axis.text.x = element_text(angle = 90,hjust = 1,size = 15),
        axis.text.y = element_text(size = 15),
        axis.ticks = element_line(size = 2,colour = "antiquewhite3"),
        axis.ticks.length = unit(.3,"cm"),
        axis.line = element_line(size=1,colour = "blue",linetype = 1),
        axis.title.x = element_text(size = 20,colour = "brown"),
        axis.title.y = element_text(size = 20,colour = "brown"))


ggplot(covid_Data,aes(x=State_UTs,y= Deaths,group = 1)) + 
  geom_line(color="#69b3a2",size = 1.5,linetype = 2)  +
  geom_point(size = 3,color="black", alpha =.8,stat =) +
  labs(y ="Deaths" ,x ="State/UTs",title = "Death cases in Indian States") +
  geom_text(aes(label = Deaths),vjust = - 1.75) +
  
  theme(axis.text.x = element_text(angle = 90,hjust = 1,size = 15),
        axis.text.y = element_text(size = 15),
        axis.ticks = element_line(size = 2,colour = "antiquewhite3"),
        axis.ticks.length = unit(.3,"cm"),
        axis.line = element_line(size=1,colour = "blue",linetype = 1),
        axis.title.x = element_text(size = 20,colour = "brown"),
        axis.title.y = element_text(size = 20,colour = "brown"))


ggplot(covid_Data,aes(x=State_UTs,y= Discharge_Ratio, group = 1)) + 
  geom_line(colour = "lightsteelblue1",size = 1.5)  +
  geom_point(size = 3,color = "mediumblue") +
  labs(y ="Discharge Ratio" ,x ="State/UTs",title = "Discharge Ratio in Indian States") +
  geom_text(aes(label = Discharge_Ratio),vjust = -0.80,size = 4.5) +
  
  theme(axis.text.x = element_text(angle = 90,hjust = 1,size = 15),
        axis.text.y = element_text(size = 15),
        axis.ticks = element_line(size = 2,colour = "antiquewhite3"),
        axis.ticks.length = unit(.3,"cm"),
        axis.line = element_line(size=1,colour = "blue",linetype = 1),
        axis.title.x = element_text(size = 20,colour = "brown"),
        axis.title.y = element_text(size = 20,colour = "brown"))


ggplot(covid_Data,aes(x = State_UTs,y = Death_Ratio,group = 1)) + 
  geom_point(colour = "red",size = 5, fill=alpha("pink", 0.3), alpha=0.7, shape=21, stroke=2) +
  geom_segment(aes(x=State_UTs,xend = State_UTs,y = 0,yend = Death_Ratio)) +
  geom_text(aes(label = Death_Ratio),vjust = -0.99,size = 4.5)+
  
  theme(axis.text.x = element_text(angle = 90,hjust = 1,size = 15),
        axis.ticks = element_line(size = 2,colour = "antiquewhite3"),
        axis.ticks.length = unit(.3,"cm"),
        axis.line = element_line(size=1,colour = "blue",linetype = 1),
        axis.title.x = element_text(size = 20,colour = "brown"),
        axis.title.y = element_text(size = 20,colour = "brown")) +
  labs(x = "State/UTs",y = "Death Ratio",title = "Death Ratio in Indian states")


6
