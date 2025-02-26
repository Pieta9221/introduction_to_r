data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth, dose==0.5)
arrange(filtered_tg, len)

# Nested function
arrange(filter(ToothGrowth, dose==0.5), len)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len, na.rm = T), .group = "drop")
