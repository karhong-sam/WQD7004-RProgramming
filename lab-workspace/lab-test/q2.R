# question 2

# matric no: S2191926
path = "lab-test/ocean.csv"
df<-read.csv(path, header = FALSE)

colnames<-c("buoy_id", "latitude", "longitude", "air_temperature", "water_temperature")
names(df)<-colnames

ave<-round(mean(df$water_temperature),2)
print(ave)

df$status<-ifelse(df$water_temperature>ave, "H", ifelse(df$water_temperature<ave, "C", "A"))
                  
mat<-matrix(" ", 21, 21, dimnames=list(10:-10, -10:10))
mat[11,11]<-"N"
for(i in 1:nrow(df)){
  mat[11-df[i, "latitude"], df[i, "longitude"]+11]<-df[i, "status"]
}
mat
