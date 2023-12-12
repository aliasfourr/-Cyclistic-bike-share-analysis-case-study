xx<-bike_rides_for_year %>% filter(rideable_type == "docked_bike")%>%
  group_by(member_casual,week_days)  %>%  count(start_hour)

xx<-bike_rides_for_year %>% filter(rideable_type == "docked_bike")%>%
  group_by(member_casual,week_days)  %>%  count(start_hour) 

xx %>% filter(member_casual=="casual")
%>% 
  ggplot()+geom_line(aes(x=start_hour,y=n,colour=member_casual))+
  scale_y_continuous(labels = comma)+
  labs(title ="member vs casual (total rides per hour)" ,y="trips count",x = "hours of the day" )


df %>%group_by(member_casual) %>% filter(week_dayss == "sunday") %>%  count(member_casual)