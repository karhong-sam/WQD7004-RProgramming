# matric no: S2191926

isFactor<-function(str_arg){
  last_three <- substr(str_arg, nchar(str_arg)-2, nchar(str_arg))
  if (as.numeric(last_three) %% 4 == 0){
    return (TRUE)
  } else {
    return (FALSE)
  }
}

matid<-"S2191926"
isFactor(matid)

# _____________________________________________

# question 2

# matric no: S2191926
path = "ocean.csv"
temp_data<-read.csv(path)

colnames<-c("buoy_id", "latitude", "longitude", "air_temperature", "water_temperature")
names(temp_data)<-colnames
temp_data

avg_temp<- round(mean(temp_data$water_temperature),2)
print(avg_temp)

temp_data$location <- ifelse(temp_data$water_temperature > avg_temp, "H",
                             ifelse(temp_data$water_temperature < avg_temp, "C", "A"))

temp_subset <- subset(temp_data, abs(latitude) == 0 & abs(longitude) == 0 | location %in% c("N", "H", "C", "A"))

library(reshape2)
temp_matrix <- acast(temp_subset, latitude ~ longitude, value.var = "water_temperature")

heatmap(temp_matrix, col = colorRampPalette(c("blue", "white", "red"))(100),
        main = "Temperature Heatmap", xlab = "Longitude", ylab = "Latitude")
