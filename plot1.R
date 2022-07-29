## Import the data into R 


#df<-read.csv("household_power_consumption.txt", header = TRUE,sep = ";") 

#dim(df) ## Checking the number of row n columns

#df$Date<-as.Date(df$Date,"%d/%m/%Y" ) ## change the date type

#df<-subset(df, Date >= "2007-02-01"& Date <= "2007-02-02") ## select subject data

#write.csv(df, "data.csv")

df<-read.csv("data.csv") 

df<-df[-1]

df$Date<-as.Date(df$Date) ## change the date type


## Plot1.R

df<-data.frame(df)
str(df)

png("plot1.png", width = 480, height = 480) ## set the graphics system


hist(df$Global_active_power, col = "red", 
     main = "Global Active Power",
     xlab ="Global Active Power(kilowatts)")

dev.off()



