#import
#making a new data set with only the required columns 
#bangladesh_data <- bangladesh %>% select(year, type_of_violence, dyad_name, where_prec, latitude, longitude, geom_wkt, priogrid_gid, best)

#plotting 

#ggplot()+
 # geom_polygon(data = map_data("bng"), aes(x=long, y=lat, group=group), fill =NA, colour="black")+
  #coord_fixed(1) 
  #theme_maps()
#?mapply

#number of civil conflict per year 
#ggplot(data = bangladesh) + 
  #geom_bar(mapping = aes(x = year, group = 1))

#most common type of conflict 
#ggplot(data = bangladesh_data) + 
 # geom_bar(mapping = aes(x = type_of_violence, group = 1))

#ggplot(data = bangladesh) + 
  #geom_bar(mapping = aes(x = year, colour = dyad_name))

#ggplot(data = bangladesh) +
  #geom_bar(mapping = aes(x = typpe_of_violence, y = best))

library('tidyverse')
casualties <- bangladesh %>%
  group_by(typpe_of_violence) %>%
  summarise(sum(best))

deaths <- bangladesh %>% 
  group_by(year) %>%
  summarise(best_total = sum(best))

ggplot(data = deaths) + 
  geom_line(mapping = aes(x = year, y = best_total ))+
  
  

#ggplot(data = deaths, mapping = aes(x = year, y = sum(best)))+
 # geom_line()

