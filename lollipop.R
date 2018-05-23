mtcars <- cbind(make=rownames(mtcars),mtcars)
library(ggthemes)
theme_set(theme_bw())
ggplot(mtcars, aes(x=reorder(make,-mpg), y=mpg)) + 
  geom_point(size=3) + 
  geom_segment(aes(x=make, 
                   xend=make, 
                   y=0, 
                   yend=mpg)) + 
  labs(title="Lollipop Chart", 
       subtitle="Make Vs Avg. Mileage", 
       caption="source: mpg") + 
  theme(axis.text.x = element_text(angle=90, vjust=0.6))

