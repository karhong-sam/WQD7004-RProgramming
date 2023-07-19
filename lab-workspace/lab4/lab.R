df1<-data.frame(
    team=c("A","A","B","B","B","C","C"),
    points=c(4,7,8,8,8,9,12),
    rebounds=c(3,3,4,4,6,7,7))
print(df1)

df1$columntest<-ifelse(df1$team=="A", "Great", "Bad")

print(df1)

df1$status<-ifelse(df1$points > 7 & df1$rebounds %%2 == 0, "Grade A", "Grade B")

print(df1)

df1$rebounds<-ifelse(df1$team == "A" & df1$rebounds %%2!=0, df1$rebounds + 5, df1$rebounds)

print(df1)